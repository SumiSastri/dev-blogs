---
layout: default
title: Bootstrap
nav_order: 8
parent: AWS CDK
---

# Bootstrap

The AWS `cdk bootstrap()` method ships with the CDK library and allows you to connect local stacks to AWS Cloud Services.

The first step is to make a decision on the AWS CloudFormation stack to be used:

eg:
- Node
- Fargate
- AppSync
- CloudFormation

- By running the command `cdk bootstrap()` in the background a CDK Tool Kit configures the local code to the AWS CloudFormation stack along with an S3 Bucket to store all Assets in an AWS Account.
