---
layout: default
title: What is AWS CDK
parent: AWS CDK
nav_order: 8
---


# What is AWS CDK

AAWS Cloud Development Kit (CDK) is a stack that co-ordinates the lifecycles of nested stacks. It ships with methods that enable the app to connect with AWS Cloud Formation Stacks.

CDK stacks are 1-2-1 equivalents of AWS CloudFormation Stacks.

(AWS Cloud Formation Overview Andy Cummings)[https://app.pluralsight.com/library/courses/introduction-aws-cloudformation/table-of-contents]

Examples of AWS Resources are AWS Lambdas, the S3 bucket to store static files, dynamoDB tables, etc.

These groups of AWS resources are called stacks which are either in YAML or JSON formats. The Stack manages the resources that are bundled together. As you update the code a change set is created. This change set when deployed is a replaced by the new version of the code so it manages versions of code deployed. It helps the different AWS resource templates to remain in sync.

The parent CDK stack has a root construct - or programmatic way of orchestrating the lifecyles of the stacks and resources within it using the command line interface (CLI).

The lifecycle in the root CDK stack is Construct -> Prepare -> Validate -> Synthesize -> Deploy

(Docs)[https://docs.aws.amazon.com/cdk/v2/guide/apps.html]

The CLI command `cdk synth` method synthesises all the templates in the Cloud Formation platform.

Then you can deploy using `cdk deploy`.

The `cdk.json` file tells the CDK Toolkit how to execute your app.

## Folder Structure

The AWS CDK configures in a specific folder structure

- entry point `bin` (sets up the stack and access)
- In the `lib` folder the stack is set up with lambdas/ types/ any utility functions and constructs - which are functions that manage the stack flow

## Versions and trouble shooting

The CDK App V2 only stable version to install available since Dec 2021. It uses Node as an environment and enables code to be written Cloud Formation templates. (See resources.md). V1 is no longer supported since June 2023.
