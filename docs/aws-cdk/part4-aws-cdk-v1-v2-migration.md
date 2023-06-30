<!-- ---
layout: default
title: AWS CDK v1 vs. v2
parent: AWS-CDK
nav_order: 10
--- -->


# AWS CDK v1 vs. v2

The AWS (Amazon Web Services) Cloud Development Kit (CDK) App V2 is currently (June 2023) the only stable version to install available since Dec 2021. [V1 is no longer supported](https://aws.amazon.com/blogs/developer/version-1-of-the-aws-cloud-development-kit-aws-cdk-is-now-in-maintenance-mode/) so all your packages will go out of sync and possibly your integration/ production environments break.

It uses Node as an environment and enables code to be written CloudFormation templates.

Migrating from v1 to v2 is as easy as how you have configured your stack. A more complex stack will have more challenges - more packages that relied on the old AWS-CDK core library that have all been bundled into AWS-CDK library.

The challenges I found were - not great documentation and issues closed before they were resolved. There are also typescript mismatches and you may have to write custom types or do work arounds.

## A quick summary of AWS CDK V1 features

Pre June 2023

1. Bundling-minifying package parcel (now ESLint)

2. Imports everything and multiple imports of packages
    eg: app entry point in bin folder
    `import * as cdk from 'aws-cdk-lib';`

3. Need to use the `cdk` object
    eg: entry point - bin folder
    `const app = new cdk.App();`

4. The lib folder defines stacks

    - imports everything
    eg: lambdas
        `import * as lambda from '@aws-cdk/core';`

5. Config of code for stack constructor CDK V1

    ```JavaScript
    // Stack constructor
    export class AwsCdkDemoAppStack extends cdk.Stack {
        constructor(scope: Construct, id: string, props?: cdk.StackProps) {
            super(scope, id, props);

    // Code for Stacks
        new cdk.CfnOutput(this, 'MusicItemsExport', {
            value: bucket.bucketName,
                exportName: 'MusicItemsDocuments'
    });
    ```

6. New packages to install as V1 are all out of date - [Documentation V2](https://docs.aws.amazon.com/cdk/v2/guide/apps.html)

7. In lib folder - constructs for the stacks the lamda to get S3 assets - syntax and Node runtime version change in V2

    ```JavaScript
    const getMusicAssetsFunction = new lamda.NodejsFunction(this, "GetMusicAssetsFunction", {
    runtime: Runtime.NODEJS_12_X,
    entry: path.join (--dirname, '..', 'api', 'get-music-assets', '),
    handler: "getMusicAssets",
    externalModules: [
            'aws-sdk'
    ]
    });
    ```

## A quick summary of key changes to look out for in AWS CDK V2

1. Bundling-minifying package ESbuild (previously parcel)

    It is useful to note that you will face some [challenges with esbuild](https://esbuild.github.io/getting-started/#bundling-for-node)

2. Imports specific methods and 1 stable version to install globally
   eg: app entry point in bin folder
   `import { App } from 'aws-cdk-lib';`

3. Only imported methods used and the `cdk` constructor removed
   eg: entry point - bin folder
   `const app = new App();`

4. The lib folder defines stacks

    - imports specific methods used
    eg: lambdas
    `import {Function, Runtime, Code } from "aws-cdk-lib/aws-lambda";`

5. Code for stack constructor V2 removes the `cdk` object and uses the methods imported

    ```JavaScript
    // Code for Stacks
    // Stack 1 s3 - bucket is a reserved word and this refers to the new Bucket constructor
    const bucket = new Bucket(this, 'MusicItemsDocuments', {
    encryption: BucketEncryption.S3_MANAGED
    });

    // cfn (AWS CloudFormation network)
    new CfnOutput(this, 'MusicItemsExport', {
    value: bucket.bucketName,
    exportName: 'MusicItemsDocuments'
    });
    ```

6. Package versions to install (as of Nov 2022)
   `npm install -save-dev "@types/aws-lambda": "^8.10.108"`
   `npm install -save-dev  "aws-sdk": "^2.1258.0"`
   `npm install @aws-cdk/aws-lambda`
   `npm install @aws-cdk/aws-lambda-nodejs`
   `npm i esbuild`

7. Config of `getApi` construct is different - node runtime is 16, entry changes to code and import of S3 uses CommonJS syntax `import S3 = require("aws-sdk/clients/s3");`

```JavaScript
type MusicAssetsAPIProps = {
    musicAssetsBucket:s3.Bucket
}

export class MusicAssetsAPI extends Construct {
    constructor (scope: Construct, id: string, props?: MusicAssetsAPIProps){
        super (scope, id);

const getMusicAssetsFunction = new Function(this, "GetMusicAssetsFunction", {
  runtime: Runtime.NODEJS_16_X,
  code: Code.fromAsset(path.join(__dirname, '../../', "api", 'get-music-assets')),
  handler: "getMusicAssets",
});
    }
}
```

Deprecated - is excluding aws sdk from bundling with es build

See boilerplate as well - significant differences for v2
`nextjs-aws-app/packages/aws-cdk-demo-app/api/get-music-assets/index.ts`

## AWS CDK Workflow changes to migrate v1 to v2

During a migration project at work, I went through the key workflow steps I had researched in Part3 of this series. Each step had some configuration changes and some key challenges. Each environment - integration and production - may also throw up different challenges.

I was able to fix ninty-percent of the dev-environment challenges following the steps below and thought it may be a useful guide for anyone who has to do the same.

### INSTALL

1.First key change V2: __AWS CDK v2 consolidates the stable parts of the AWS Construct Library, including the core library, into a single package__

Task list:

- remove all v1 packages and any lurking configs and replace with v2 and change imports
- uninstall v1
- Delete `package-lock.json` file
- Delete `node_modules` folder
- In `package.json` file it is easier to manually remove the v1 files (See comment)
- In `package.json` manually paste the right version of v2 aws-cdk library and constructs as recommended by AWS - lowest version for highest interoperability.

[See recommendation link](https://github.com/aws/aws-cdk-rfcs/blob/master/text/0192-remove-constructs-compat.md#release-notes)

- Change the cdk.json file

- Install v2 and specify versions if required eg:
 `npm install aws-cdk-lib@^2.72.0 --language typescript`
 `npm install constructs@^10.0.0`

- Constructs which are in experimental mode need to be installed separately as the docs state __Experimental modules, where we're still working with the community to develop new L2 or L3 constructs, are not included in aws-cdk-lib__

- These experimental modules are called `alphas`, many Level2 and Level3 constructs need to be imported as `alpha` modules (see comment)

eg:
This is an alpha module - `@aws-cdk/aws-amplify-alpha`
Docs [https://docs.aws.amazon.com/cdk/api/v2/docs/aws-amplify-alpha-readme.html]

- Re-install node modules

If you want to update `npm` globally `npm install npm -g`
[Installing node and npmdocs](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

You can then run in the package `npm install --y`

Check the `package.json` file in demo repo for reference.

In this repo, an additional re-installation is required in the `packages/aws-cdk-demo-app/api/get-music-assets`

Lerna as a package manager can be unpredictable and may not update all packages when you run `npx lerna bootstrap` in root

### RE-CONFIGURE

2.Second key change V2: __The Construct class has been extracted from the AWS CDK into a separate library, along with related types.__

- Remove legacy imports of the deprecated AWS Core library - the correct imports are

`import * as cdk from 'aws-cdk-lib';` 
`import {Function, Runtime, Code } from "aws-cdk-lib/aws-lambda";`
`import { App, Stack, StackProps } from 'aws-cdk-lib';`

- Go through the import list and change the imports. Look for all instances of `"@aws-cdk/core"` and change imports as above. An easy way is to copy the suffix `aws-cdk-lib` and overwrite the old suffix `@aws-cdk`. This should work for most - if it does not debug by researching specific issue.

- Extract the construct method and declare the module initialisation as described by docs, as the method been decoupled from  AWS Core librart methods

`import { Construct } from "constructs";`

At this stage ensure all imports are correct as each module depends on the correct imports to function properly

Debug with further research on any specific issues.

For example if you have AppSync installed with V1, the GraphQL `Schema` is now called `SchemaFile` and you can only fix these specific package challenges by checking the docs, or open issues - of which there are many

eg: [See issue 24701](https://github.com/aws/aws-cdk/issues/24701)

### TEST AND VALIDATE

3.The third key change: __Assert as the main testing library has been deprecated__

There is a checklist of deprecated libraries - this testing one is only an example - the full list is in the [Deprecated APIs](https://github.com/aws/aws-cdk/blob/v1-main/DEPRECATED_APIs.md) documentation. The steps are similar but methods and execution may be different.

- Install the V2 assertions packages `npm i @aws-cdk/assertions` as the `@aws-cdk/assert` has been deprecated[The assertions package is available on](https://www.npmjs.com/package/@aws-cdk/assert)

_A gotcha_ Do not uninstall the package till you fix all the tests - the package will fail to build

- Import the correct methods that ship with the testing library

`import { Template } from "aws-cdk-lib/assertions";`

- instantiate the stack and reassign it to the `template` method - this method is instantiated after the Construct mocked - see docs for example

- run each test in your stack individually to debug and fix errors
eg: You may discover that the old  `findResources()` assertion has changed to `hasResourceProperties()` or fits the test better

- You are very like to find type mismatches at this stage

- Fix all tests and then bootstrap and build

### RE-BUILD

4.The fourth key change: __ES build is use as a package bundler and builder__

Check esbuild installed in root not in package if you have a monorepo.

`npm run build` or `npx lerna bootstrap` or you monorepo bootstrap command

One challenge you may have is the issue of peer dependencies. I researched this and found a Stack Overflow answer that I have summarised here

`npm cache clean --force` - clean cache

This is particularly good for any lurking parcel dependencies

`rm package-lock.json` - remove `package-lock.json` file
`rm -rfv node_modules` - remove recursive force verbose (rvf) node_modules

Some developers do not like these as they are forcing changes and un-pinning versions in package-lock files - but in this case this is exactly what we want to do in case there are lurking files that are pinned to old versions from v1 of the library.


Once this is done you need to reinstall & use nvm node v 18 - the first command reinstalls node and nvm in the right directories on your local machine

```java

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

```

This installs and uses it in your project

`nvm install 18`
`nvm use 18`

reinstall node_modules with legacy dependencies

`npm install --legacy-peer-deps` or
`npm config set legacy-peer-deps true`

These de-bugging steps helped me with my side-project and I was able then to run the cdk v2 commands successfully 

eg:
Check build - `npm run build` 
and then after a successful build run `cdk bootstrap`
Run `cdk diff`
Run `cdk deploy` to the next environment - if you are in local/ PR environment to integration, then to staging and your final production environment - the above steps may need to be replicated in each environment.

### DESTROY

Review any changes required for Destroy work flows and alarms/ monitoring, some of these may be configured with Github Actions.