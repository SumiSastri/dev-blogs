---
layout: default
title: What is AWS CDK
parent: AWS-CDK
nav_order: 10
---


# What is AWS CDK

AWS (Amazon Web Services) Cloud Development Kit (CDK) is a stack that allows you to define the AWS resources you are using in your app as code. It is part of the managed-services of AWS allowing you to write your infrastructure as code.

[An example repo](https://github.com/SumiSastri/nextjs-aws-app/tree/main/packages/aws-cdk-demo-app) to follow and see how the code works. This app is a work-in-progress and a side-project that requires tests, more use-cases and a general refactor.

This is a learning and development excercise I set myself, the repo follows the tutorial AWS Infrastructure with TypeScript - [David Tucker](https://app.pluralsight.com/library/courses/aws-infrastructure-typescript-getting-started/table-of-contents).

The accompanying notes are my interpretation of what I think is going on under the hood.

AWS CDK is a stack that co-ordinates the lifecycles of nested stacks. A nested stack, is a stack within a stack.

The parent CDK stack has a root construct - or programmatic way of orchestrating the lifecyles of the stacks and resources within it (the nested stacks) using the bespoke AWS-CDK command line interface (CLI).

The lifecycle in the root CDK stack is _Construct -> Prepare -> Validate -> Synthesize -> Deploy_

AWS CDK ships with methods that enable your app, from a local/ integration or production environment, to connect with AWS CloudFormation (Cfn) Stacks. This provisions the serverless functions provided by AWS. You will see `Cfn.Out()` for example as a method.

AWS-CDK stacks are 1-2-1 equivalents of AWS Cfn Stacks making the synth process seamless. CDK usecases provision Cfn stacks triggered by logic you write.

This introduction to Cloud Formation was very useful.

[AWS CloudFormation Overview Andy Cummings](https://app.pluralsight.com/library/courses/introduction-aws-cloudformation/table-of-contents)

Examples of AWS Resources are AWS Lambdas, the S3 bucket to store static files, DynamoDB tables, etc.

These groups of AWS resources are called stacks which are either in the lightweight `.yml` or `.json` formats.

The CDK Stack manages the resources that are bundled together. As you update the code in your app, a change set is created. This change set when deployed replaces the old code with the new version of the code.

This version control, helps the different AWS resource templates to remain in sync.

[AWS CDK Docs](https://docs.aws.amazon.com/cdk/v2/guide/apps.html)

The  Command Line Interface (CLI) command `cdk synth` synthesises all the templates in the CloudFormation platform. Once the stack is sync'd or synthesized, you can deploy using the CLI command `cdk deploy`.

The `cdk.json` file tells the CDK Toolkit how to execute your app.

## Folder Structure

The AWS CDK configures in a specific folder structure

- entry point `bin` (sets up the stack and access)
- the `lib` folder the stack is set up with lambdas/ types/ any utility functions and constructs
- the `constructs` sub-folder sets up functions that manage the stack configurations and flows

- Construct levels - these are important to note as in package management (the migration of CDK versions - like the recent migration of AWS CDK v1 to AWS v2 - each of these resources are migrated with different methods and imports)

- Level 0 - Basic Resource (no type)

- Level 1 - CloudFormation Resource - prefixed with Cfn (CloudFormation network)

- Level 2 - Include helper methods and defaults an extension of Level 1 (Some services do not have Level 2 constructs which are faster and reduce deploy times) eg: DynamoDB has level 2 constructs

- Level 3 - Combination of Constructs - intermingling of 1,2,3

## Tags

Tags are just customer‑defined metadata, and you can use it for AWS services that support Tags - eg cost allocation, resource grouping, for access control, etc.

The CDK provides this ability for us to add in tags to multiple resources.

Tags are applied in the entry point directory - the bin directory - OR in the stack file where the tag is related to a specific stack.

## Versions and trouble shooting

The CDK App V2 only stable version to install available since Dec 2021. It uses Node as an environment and enables code to be written Cfn templates. (See resources.md). V1 is no longer supported since June 2023.
