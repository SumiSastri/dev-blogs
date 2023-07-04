---
layout: default
title: Auth with AWS-Cognito
nav_order: 9
parent: Authentication and authorisation
---


# Auth with AWS-Cognito

Each cloud service provider will have their own way of handling auth. Amazon Web Services (AWS) handles auth with a product called AWS-Cognito.

AWS Cognito handles a user's identity and access management (IdaaM) of resources with Cognito User Pools (authentication) and Cognito Identity Pools (authorisation). We can look at both in a little more detail.

## What are AWS-Cognito User Pools?

Cognito User Pools perform the function of storing user identities - their names, passwords, email addresses etc., In a user pool you can also store other user information - images,URLs (Unique Resource Locators) , phone numbers.

Workflows in a user pool can be triggered with AWS-Lambdas - which are serverless functions to set an action in a user pool in motion - for example, if a user forgets their password and access details, an AWS-Lambda can be written to trigger an action to send a reset password email.

Segmentation of the users in groups is possible and some management of these users is possible with the AWS Management Console - an AWS GUI (Graphical User Interface).

User pools can be created with the GUI or programmatically in your app. AWS' GUI lets you select how you want to identify your user - with an email-password/ address etc., it has a host of pre-prepared choices as well as the option of adding custom authentication methods should they be required.

It also has options for encouraging users to use secure passwords, 2-factor authentication (2FA) and multi-factor authentication (MFA) and federated authentication (through 3rd parties like Google, Twitter, Instagram, for example as sign up options).

You can customise email messages that are sent out to verify a user via the email-password method and you can also set up AWS-SES (Simple Email System), an internal service which requires additional configuration steps for authentication. This is a paid-for service.

Device recognition is also an option that a user can select.

The user in the user pool can then be assigned an authentication token - to access the information they are authorised to access. The token can be set up with an expiration date/ time so that security of access is improved.

The GUI also allows you to set up AWS-Lambda functions without having to do this programmatically. Some of the options are a pre-sign up trigger, post-confirmation trigger, post-authentication trigger. Each of these triggers set up a work flow that checks the authenticity of the user and allows them to perform the next step - eg: access information, Application Programming Interfaces (APIs) etc.

## What are AWS-Cognito Identity Pools?

While AWS-Cognito User Pools performs the function of authenticating users and setting their roles for authorisation, Cognito Identity Pools then authorise them to access and use specific AWS services - like AWS-S3 (Simple Storage System) which is a storage bucket for static assets, and other AWS Cloud Services.