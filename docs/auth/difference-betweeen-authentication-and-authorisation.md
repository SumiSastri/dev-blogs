---
layout: default
title: What is authentication
nav_order: 8
parent: Authentication and authorisation
---

# What is authentication

Authentication is the process by which a user who registers to use an app is verified. The user must be who they say they are, a person and not a bot, and the person who registered for a service and not the person's friends, family or other work colleagues.

Authenticating a user can be done in many ways using a number of devices. Today we have not just email & password identification, we also can have bio-metric identification - fingerprints, voice, iris-identifiction.

Passwordless authentication - using an email link authentication has also become popular, while 2-factor (2FA) authentication and multi-factor authentication (MFA) add another layer of security to protecting a user's identity and access management (IdaaM) of resources.

Some of the requirements for authentication are:-

- the key requirement of authentication is to establish a user's identity
- this can be done with 2FA or MFA
- if id has not been established, authentication processes must have the option to accept or reject user from using a service
- to establish an id, systems require a secure directory to store users id and passwords securely
- the user may have multiple roles and require access to multiple systems so id of the user based on role is also required
- device recognition - where is the user signing in from - phone, watch - is a tool that can check id
- operating system recognition - windows, mac, linux, android - is another way to check if the users identity is authentic
- bio-metrics are another way for access to high-risk access by non-auth users
- once users are authenticated they may access certain internal platform APIs, further authentication may be required to complete this process

## What is federated authentication?

Federated authentication is allowing a 3rd party - like social media account authorisation - to access an account. An example would be you can sign in with a Google, Apple, Facebook or Twitter account as these 3rd parties have already established your identity.

## What is authorisation?

After a user has been authenticated, or verified as the right user to have access to a system, the user can be authorised to access information on the app.

Confusingly, some use auth to mean both authentication and authorisation but they are two distinct processes that allow a user to perform certain tasks based on their roles and needs to perform those tasks.

Authentication preceeds authorisation.

For example, you can set bronze, silver or gold roles for readers of content once the id of the user has been established. They have different levels of reading access based on the subscription they have paid. The role you can set is reader with the suffix or prefix of bronze, silver and gold - these readers all can read content but have access to different amounts of content they can consume.

An content-management-system (CMS) adminstrator on the other hand may have the the role of admin, this gives this type of user in this role the ability to read, create, update content.

A CMS super-admin, may be able to bill the reader, work with financial systems, archive or delete content and have a higher level of read-write access than an admin or reader. The super-admin may also have access to other systems in the app infrastructure - like the billing and invoicing app.

Authorisation therefore, for a super-admin has to be more stringent because the tasks that a super-admin can perform are more risky and business-critical.

Some of the requirements for authorisation are:-

- passing all authorisation checks
- setting different levels of authorisation for different users
- setting permissions for auth users based on named roles eg: admin, super-admin, reader-bronze, reader-silver, reader-gold
- Understanding a user may have multiple roles and storing the data in a variety of directories with the right access level for each role - eg: a super-admin may have all the rights of a reader, admin plus certain rights as a super-admin and have a presence in each of the directories
- setting levels of access - superusers vs. reader-bronze and the whole spectrum inbetween
- establishing authorisation rights - what can each of these users do once they have access, and what internal APIs can they access
