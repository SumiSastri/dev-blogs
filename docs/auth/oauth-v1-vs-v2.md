---
layout: default
title: OAuth what is the difference between v1 and v2?
nav_order: 8
parent: Authentication and authorisation
---


#  OAuth what is the difference between v1 and v2?

OAuth is an open source authorisation protocol (set of rules) that allows a third party application access to user-related claim-based information.

Claim-based information is all the data a user shares to identify themselves as the person they say they are - this could be name, email, date-of-birth, passwords.

OAuth began in November 2006 when Blaine Cook was developing the Twitter OpenID implementation.  OAuth v1 was defined in 2009 and OAuth v2 was scoped in 2013.

While the third party has access to the claim-based-information, the 3rd party does not know what this information is as it is passed on in an encrypted format defined by the protocol.

OAuth v1 is an early version of OAuth v2 which is currently in use and fixes some of the security vulnerabilities found in OAuth1.

## How do OAuth and OIDC work?

OAuth uses OpenID Connect (OIDC) as an authentication layer. OAuth is an authorisation not an authentication protocol. OIDC is the authentication protocol and not an authorisation protocol.

Like all federated identification, OAuth also requires the same actors:

The user/ owner of the identity – The person who wants access to digitally controlled resources

An identity provider (IdP) - eg: the 3rd party that is providing the Id checks - google, FaceBook, Microsoft's Active Directory Federation Services (ADFS), other social sites that provide federated access to users claim-based information. The action of delegating the responsibility for checking and matching the user/ owners Id falls to the IdP

The resource provider - sometimes, confusingly called the client, this is digital resource where the user passes on ID proofs from the IdP, client in this case is not the user-owner of the Id or the device that is making the request.

OAuth is designed to work with HTTP (Hyper Text Transfer Protocol) and HTTPS (the S stands for secure - now a more required format compared with HTTP) protocols.

The Protocol requires 2 Application Programming Interfaces (API) endpoints and both endpoints require transport layer security

Auth endpoint - get request via the user scripted into the API header via the browser

Token endpoint - machine-generated token that is encrypted outside the browser environment by encrypting algorithms

B

Next, Obtain an access token from the Google Authorization Server to access the API.
Send the request with the access token to an API .
Get Refresh token if longer access is required.

## Is OAUTH the same as OAuth?

The Initiative for Open Authentication is OAUTH - an acronym, OAuth is a protocol created by a discussion group of industry practioners with the v1 protocol published based on a RFC (Request for Comments) and is published inder RFC 5849. 

OAUTH - pronounced Oath, (OAuth pronounced O Auth) is also an industry-wide collaboration to develop an architecture around strong authentication based on open standards agreed upon by interested parties in industry. Interestingly [OAUTH's official website](https://openauthentication.org/) shows up as an insecure site with warnings to accessing it. The organisation publishes [a white paper as an industry roadmap for strong open authentication](https://openauthentication.org/wp-content/uploads/2015/09/AnIndustryRoadmapforOpenStrongAuthentication.pdf), which is worth a read.


## Is OpenID Connect the same as the OpenID Foundation?

The original OpenID authentication protocol was developed in May 2005 by Brad Fitzpatrick, by 2009 PayPal and Facebook joined the initial discussion groups. Initially dubbed Yadis (Yet another distributed ID System), the group renamed themselves [the Open Id Foundation](https://en.wikipedia.org/wiki/OpenID#OpenID_Foundation). By 2013, Facebook and google, who initially supported the Foundation started their own federated ID authentication protocols.

OpenID Connect is a distinct entity from OpenID Foundation.
