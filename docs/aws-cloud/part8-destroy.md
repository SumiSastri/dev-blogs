---
layout: default
title: AWS CDK destroy method
parent: AWS CDK
nav_order: 8
---

# AWS CDK destroy method

You can destroy the deployed CDK anytime and redeploy it using the in the workflow section.

## DESTROY

 The destroy does not destroy the code base on your local - only the synth files and the deploy on the AWS Cloud. When you want to work again on the app you can write new code, and follow the CDK work flow to the deploy section check if it works and destroy again.

destroy cdk `cdk destroy` - you will get a prompt to destroy and then the deploy is destroyed

```
Are you sure you want to delete: AwsCdkDemoAppStack (y/n)? y
AwsCdkDemoAppStack: destroying...

 ✅  AwsCdkDemoAppStack: destroyed
```
