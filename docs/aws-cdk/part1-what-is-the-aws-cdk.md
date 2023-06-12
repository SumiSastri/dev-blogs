---
layout: default
title: What is AWS CDK
parent: AWS CDK
nav_order: 8
---


# What is AWS CDK

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

[Docs](https://docs.aws.amazon.com/cdk/v2/guide/apps.html)

The CLI command `cdk synth` synthesises all the templates in the CloudFormation platform. Once the stack is sync'd or synthesized, you can deploy using the CLI command `cdk deploy`.

The `cdk.json` file tells the CDK Toolkit how to execute your app.

## Folder Structure

The AWS CDK configures in a specific folder structure

- entry point `bin` (sets up the stack and access)
- In the `lib` folder the stack is set up with lambdas/ types/ any utility functions and constructs - which are functions that manage the stack flow

## Versions and trouble shooting

The CDK App V2 only stable version to install available since Dec 2021. It uses Node as an environment and enables code to be written CloudFormation templates. (See resources.md). V1 is no longer supported since June 2023.
