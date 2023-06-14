---
layout: default
title: What is AWS CDK
parent: AWS CDK
nav_order: 8
---


# What is AWS CDK

AWS Cloud Development Kit (CDK) is a stack that allows you to define the AWS resources you are using in your app as code. It is part of the managed-services of AWS allowing you to write your infrastructure as code.

[An example repo in my portfolio](https://github.com/SumiSastri/nextjs-aws-app/tree/main/packages/aws-cdk-demo-app) to follow and see how the code works.

This repo follows the tutorial AWS Infrastructure with TypeScript - David Tucker [https://app.pluralsight.com/library/courses/aws-infrastructure-typescript-getting-started/table-of-contents]

AWS Cloud Development Kit (CDK) is a stack that co-ordinates the lifecycles of nested stacks. A nested stack, is a stack within a stack.

The parent CDK stack has a root construct - or programmatic way of orchestrating the lifecyles of the stacks and resources within it (the nested stacks) using the command line interface (CLI).

The lifecycle in the root CDK stack is _Construct -> Prepare -> Validate -> Synthesize -> Deploy_

AWS CDK ships with methods that enable the app, from a local/ integration or production environment, to connect with AWS CloudFormation Stacks. This provisions the serverless functions provided by AWS.

CDK stacks are 1-2-1 equivalents of AWS CloudFormation Stacks making the synth process seamless.

[AWS CloudFormation Overview Andy Cummings](https://app.pluralsight.com/library/courses/introduction-aws-cloudformation/table-of-contents)

Examples of AWS Resources are AWS Lambdas, the S3 bucket to store static files, DynamoDB tables, etc.

These groups of AWS resources are called stacks which are either in the lightweight `.yml` or `.json` formats.

The CDK Stack manages the resources that are bundled together. As you update the code in your app, a change set is created. This change set when deployed replaces the old code with the new version of the code.

This version control, helps the different AWS resource templates to remain in sync.

[AWS CDK Docs](https://docs.aws.amazon.com/cdk/v2/guide/apps.html)

The CLI command `cdk synth` synthesises all the templates in the CloudFormation platform. Once the stack is sync'd or synthesized, you can deploy using the CLI command `cdk deploy`.

The `cdk.json` file tells the CDK Toolkit how to execute your app.

## Folder Structure

The AWS CDK configures in a specific folder structure

- entry point `bin` (sets up the stack and access)
- the `lib` folder the stack is set up with lambdas/ types/ any utility functions and constructs
- the `constructs` sub-folder sets up functions that manage the stack configurations and flows

- Construct levels
*Level 0 - Basic Resource (no type)
*Level 1 - CloudFormation Resource - prefixed with Cfn (CloudFormation network)
*Level 2 - Include helper methods and defaults an extension of Level 1 (Some services do not have Level 2 constructs which are faster and reduce deploy times) eg: DynamoDB has level 2 constructs
*Level 3 - Combination of Constructs - intermingling of 1,2,3


## Tags

Tags are just customer‑defined metadata, and you can use it for AWS services that support Tags - eg cost allocation, resource grouping, for access control, etc.

The CDK provides this ability for us to add in tags to multiple resources.

Tags are applied in the entry point directory - the bin directory - OR in the stack file where the tag is related to a specific stack.

## Versions and trouble shooting

The CDK App V2 only stable version to install available since Dec 2021. It uses Node as an environment and enables code to be written CloudFormation templates. (See resources.md). V1 is no longer supported since June 2023.


## AWS CDK v1 vs. v2

The CDK App V2 only 1 stable version to install available since Dec 2021. It uses Node as an environment and enables code to be written CloudFormation templates.

**V1**
Pre June 2023

1. Bundling-minifying package parcel
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

6. Packages to install - see V2 - V1 packages are now out of date

7. In lib folder - constructs for the stacks the lamda to get S3 assets - syntax and Node runtime version change in V2

```
const getMusicAssetsFunction = new lamda.NodejsFunction(this, "GetMusicAssetsFunction", {
  runtime: Runtime.NODEJS_12_X,
  entry: path.join (--dirname, '..', 'api', 'get-music-assets', '),
  handler: "getMusicAssets",
  externalModules: [
        'aws-sdk'
  ]
});
```

**V2**

1. Bundling-minifying package es-build

2. Imports specific methods and 1 stable version to install globally
   eg: app entry point in bin folder
   `import { App } from 'aws-cdk-lib';`

3. Only imported methods used
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

