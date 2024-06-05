<!-- ---
layout: default
title: What is authentication?
nav_order: 10
parent: Authentication and authorisation
--- -->

# What is authentication?

Authentication is the process of identifying a user and ensuring the user is, who the user says the user is. By this we mean, the user must be a person and not a bot, and the person who registered for a service and not the person's friends, family or other work colleagues.

Authenticating a user can be done in many ways using a number of devices. Today we have not just email and password identification, we also can have bio-metric identification - fingerprints, voice, iris-identifiction.

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
- once users are authenticated they may access certain internal platform application programming interfaces (APIs), further authentication may be required to complete this process

## What is federated authentication is it better?

Federated authentication is allowing a 3rd party - like social media account authorisation - to access an account. An example would be you can sign in with a Google, Apple, Facebook or Twitter account as these 3rd parties have already established your identity.

There are benefits and disadvantages to federate or delegate authorisation and authentication responsibilites.

On the plus side:

- Shared costs
- Universal use
- Friction free for user

On the downside side:

Hack attack needs to compromise only one source - eg: google accounts were compromised and from this federated id - any other account using gmail to authenticate and authorise compromised
## What is the basis of digital authentication?

Given the explosion of devices, networks and global actors - indviduals as well as organisations and non-human actors, such as bots - digital authentication has a lot of challenges to face to make it work.

The basis of authentication is trust. This takes multiple trust-points that must be met and trusted

- the process used to authenticate
- the authentication service provider's credentials and history of providing secure authentication solutions
- the type of credential being issued - a bearer token that is encrypted is one example
- policies - framework for maintaining security in networks and systems
- architecture - solutions that are robust and well thought through
- operational challenges - testing across different scenarios and devices
- government regulations that may impact business and individuals
- financial challenges to develop a robust system globally

## Why do you need authentication?

Some of the reasons why authentication of the user is important before authorisation

- Allow secure sharing of data and information across geographies/ networks/ devices
- Stop spam and pshing (pronounced fishing) attacks
- Identify and stop hack attacks - terror/ ransom-based on instituions
- Prevent impersonation or authentication hijacking and covert redirects 
- Avoid credential sharing (loss of revenues)
- Ensure users who trust apps with confidential information can be sure their data is protected
- Stop bots and non-human actors from infiltering apps
- Prevent theft - where payment systems are used, theft of ID can lead to actual theft (skimming of bank accounts, credit cards, other misuse of payment systems)
- Prevent personal information misuse - reselling of information on the dark-net
- Avoid infilteration of malicious scripts, viruses

## What is authorisation?

After a user has been authenticated, or verified as the right user to have access to a system, the user can be authorised to access information on the app. Authorisation is the process of granting permissions and levels of access control.

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
- prevent credential sharing - a person sharing emails and passwords for other people to use
- restricting access is the flip side of granting access, authorisation must also allow the revoking of access
- bug free and vulnerability free to the maximum possible extent
