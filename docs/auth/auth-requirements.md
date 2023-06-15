---
layout: default
title: Auth requirements
nav_order: 8
parent: Authentication and authorisation
---

# Auth requirements

Authenticating a user can be done in many ways using a number of devices. Today we have not just email & password identification, we also can have bio-metric identification - fingerprints, voice, iris-identifiction.

Passwordless authentication - using an email link authorisation has also become popular, while 2-factor authentication and multi-factor authentication add another layer of security to protecting a user's identity and access management (IdaaM) of resources.

Some of the requirements for auth are:-

- establishing id
- creating the option to accept or reject authorisation
- setting levels of access - superusers vs. casual browsers and the whole spectrum inbetween
- establishing authorisation rights - what can each of these users do once they have access
- setting permissions based on named roles eg: admin, super-user, browser, subscriber, loyal subscriber
- setting directories to store this information and segment users appropriately
- Understanding a user may have multiple roles and storing the data in a variety of directories with the right access level for each role
- device recognition - where is the user signing in from - phone, watch
- operating system recognition - windows, mac, linux, android?
- compatible APIs that are designed for security 
