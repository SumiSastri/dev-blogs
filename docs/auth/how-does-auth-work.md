---
layout: default
title: How does auth work in a digital environment?
nav_order: 10
parent: Authentication and authorisation
---

# How does auth work in a digital environment?

Authentication in the physical environment works in different ways. For example, if you have received a parcel in the Post Office, you may be required to take a proof of address like a recent bill with your name and address and some additional photo-identity like a driver's licence. These proofs are also considered claim-based identification for authorisation. Your name, address are claims that you are who you say you are.

Additional proof from a third-party like the government-issed drivers' licence or passport add an additional identification process that has been verified from a trusted source - but what if these are fake? The Post Master looks for certain identification characteristics like holograms, a bar-code, an id-number which they may record for reference.

You will have to have an identification for the parcel you are recieving - a tracking number for example. With the tracking number, the Post Master is able to identify your unique parcel and hand it to you.

The Post Master matches the information you have provided with your ID proofs. The Post Master trusts the orginal driver's licence and the bill - like a utility company bill - which has your name and address on it after checking they are authentic documents.

You are then authorised to receive the parcel as you have proved your identity. You sign you have received the parcel.

The Post Master able to prove to anyone else who comes and claims to be you and take your parcel that they are not authorised to do so if the do not have the ID proofs required, or if you have signed for the parcel and after the event someone tries to impersonate you and take your parcel.

In a digital environment, such manual and human checks are impossible. However, there is a claims-based identification process and a digital signature that correspond to this process.

You may set up a digital user with information about yourself - your name, address, favourite color, mother's maiden name, a photograph, a telephone number. These are your claims.

When you sign-in to an account, you use these claims to verifiy you are who you say you are - eg: email/ password.

As an additional 3rd-party verifiction OpenID Connect is a system that provides the same kind of proof that you are who you say you are digitally.

For this a digitial authorisation token is required. There are several digital auth tokens, the most common being a JWT, (Json Web Token), also called a Jot.
## A short history of digital auth

Before we go into the detail of how digital authorisation takes place. A brief history of auth is useful to understand to put digital auth into context.

In the 1990s, Web 1.0 -  HTML (Hyper Text Markup Language), CSS (Cascading Style Sheets) and XML (extensible mark-up language) were programming languages used to share documents over the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web. While HTML defined text blocs and CSS styled them, XML was introduced as a mark-up language that would transport data. SAML (Security Assertion Markup Language) - was the early way to authenticate users. SAML is still used for SSO (Single Sign On) with the latest version (v2) of SAML.

Note in the early stages of the Web all you needed was mark-up languages as documents were shipped from one user to another without Application Programming Interfaces (APIs).

With the introduction of backend databases that stored data, users could use HTTP requests with a SOAP (Simple Object Access Protocol) SAML and XML. SAML was an early form of federated authentication and with SSO enables enterprises to monitor and control who has access to the organisation's resources. 

Federated authentication allows users to access multiple devices and resources with one set of credentials - for example a third-party like Instagram, google or Facebook, Microsoft's Active Directory Federation Services (ADFS) as an identity authentication manager.

Federated authentication needs an identity provider (IdP) like in the physical world the government department that issues passports is an Id Provider. This IdP establishes a user's identity. This IdP then digitally makes an internal connection via an API call an authentication service provider (SP), (SAML) is the protocol that is used to authenticates the user via this API call.

SAML uses XML to transport data and is geared towards safeguarding resources of an organisation. It uses session cookies with an expiration date - which works for organisations where users may have a different tenures and work schedules.

As the internet became widely adopted by the general public rather than academics and government bodies who were early users, the backend APIs also multiplied and JavaScript was introduced to the landscape. With complexity and higher use of the internet by different people with different needs, standardisation of authorisation protocols to allow users access to the data developed.

Web Services Federation, one of the early federated authorisation services offering web tokens emerged. MicroSoft was one of the companies that was involved in developing Identity Federation - which is the linking of a claims-based electronic identity across different types of identity management systems.

Interoperability across multiple platforms and systems increased with Web 2.0 - late 1990s and early 2000s when social media and sharing content over the Web became more frequent.

Today (2023), while Web 3.0 is not yet a "thing" we are seeing mobile disruption, NFC (Near Field Communication), IoT (the Internet of Things), connected devices and ML (machine learning)/ AI (artificial intelligence) as the latest disrupters. Code no longer runs just on the internet. It is in smart devices, phones and a whole host of daily devices - cameras, washing machines, utility meters.

The restrictions of mark-up languages soon showed up and today lighter-weight files like `.json` (JavaScript Object Notation) and `.yaml` (YAML Ain't Markup Language) files are used with HTTP calls using REST (Representational State Transfer ) APIs.

OAuth v1 and OpenID Connect also developed to enhance and speed up authentication and authorisation of users and the documents and data they wished to access. OAuth is a protocol that uses `.json` files and makes use of API calls and is different from SSO as it is not based on the needs of an organisation but based on the needs of individual users.

This is a simplistic derivation from the following literature I found through search engines (see the resources section for links to more details)
## What is a digital authorisation token?

A digital authorisation token is an encrypted token that scrambles the information of the user's sensitive data and sends this data to the browser, then on to the servers and backend APIs as a request header. Tokens can be basic or bearer tokens. Bearer tokens are tied to a session and can not be used by a different user. The bearer token makes it un-readable to unauthorised users who may be looking for sensitive user information on web-browsers or who have infilterated servers and backend databases.

This encrypted token is unscrambled in the backend and the matching process starts. Once the user ID from backend databases is successfully matched, another scrambled digital token is sent back via the browser to the user allowing the user to continue the session and access resources the user is authorised to receive.

Whenever the client makes a request the token along with the request is sent in an auth header. This is then checked by the server before sending back any data via the response header.

## How is an authorisation token different from a cookie?

A cookie is also a packet of data stored on the browser. It allows anyone to log the results of the response body to the console and capture the information stored in the browser memory on the frontend server. With an authorisation cookie, nothing is stored on the server, it is serialised and hashed and stored in the token in this encrypted form.

- [Cookies vs Tokens: The Definitive Guide](https://auth0.com/blog/cookies-vs-tokens-definitive-guide/)

Initially a solution was to use cookies to authorise users to access data but this quickly went out of favour as it is open to Cross Site Request Forgery (XSRF or CSRF) which makes use of tab-nabbing or man-in-the-middle attacks. This is when a user moves from tab to tab in a browser and can still access the information and an attacker uses any of the open tabs to access the same information you are trying to access.

## How are auth tokens different from API keys?

API keys require users to sign up to the API and generate a key with a set of secrets. These secrets then are stored and the user can use the key to unlock the data they want to access.

This is different from a token as it requires configuration. It is more secure than a cookie but limits interoperability and speed which auth tokens allow.

Keys allow you to scope the permissions of the user per key issued, prevents man-in-the-middle attacks (if the key is stored securely) and is a form of digital authorisation that is widely used.

There are limitations - there are no standards and common-ways of storing keys safely. The keys have an expiration date - no standards for key expiration lifetimes - if the key is stolen anyone can use it.
## Additional auth with OpenID and OAuth?

OpenID Connect uses a system called OAuth or Open Authentication. OpenID Connect and OAuth follow industry standards to provide authentication and authorisation services across multiple platforms and multiple user needs.

It is a form of federated identity authentication, digitally performing the same id checks as a passport or driving licence would. OAuth is a protocol or a set of rules that allows for secure access via auth tokens.

Anyone who claims to be you digitally must provide additional information to the username and password, which is a digital authorisation token or a bearer token. A JWT is a `.json`  file that holds the `bearerToken` or the jot token from the JWT library.

The token is like a session stateless cookie that is generated when the user types in their authentication details (username and password for example) and sends it via an API call in the header of the request to the backend resources, typically a database which stores user information.

When you sign in, a session-cookie identifies you as a user and a Jot is dropped into the browser with OpenID as a gateway that is the equivalent of the additional proof - the driver's licence.

If you request for a resource - in the form of an API call to an URL (Unique Resource Locator) that identifies what you have requested for (consider this the parcel you want from the Post office with a tracking code to identify your resource from all the other resources in the digital warehouse of the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web, a matching service takes place.

- Digitally does your email, password correspond with the data-store that holds your email and password?
- Does the additional proof of the JWT bearer token verified by the third party OAuth and OpenID Connect grant you access to the URL requested - if yes, you can see the resource, if no you will not be authorised to receive the URL and the information it holds.

The JWT provides you with a digital signature in its scope - a scope is a set of authorisation requirements.

The Post Master has a set of scopes - to check your passport/ driving licence / utility bill - these are the Post Master's authorisation scopes. If he can not use these scopes, he may ask for other substitute or equivalent scopes - a credit card or bank card with your name on it, a bank statement with your address, any photo-identity. These are variable scopes.

 Similarly a JWT token will have different scopes depending on the resource requested which are contained in the request header of the API-call that scope your authorisation - you are scoped to receive the parcel with the matching tracking order. The tracking order is a scope.

 A scope simply is a set of rules that authorise you to receive or perform actions as defined by the scope.

The JWT is a digital signature, dropped with a session token, so that the user of the session when they attempt to log in is matched with the additional token identification and authentication before the release of the URL.

If another user/ bot impersonates the true user, the digital signature will not match as a new session has been created and the new user must provide all of these proofs to get the URL resource.

If the scopes in the authentication are not matched, the authorisation can not take place. For example, if you have none of the Post Master's scopes to receive your parcel, he can say he can not release the parcel till you provide him with the scopes or authorisation proofs he needs that authorise him to release the parcel to you.

## How do middleware libraries help authentication?

You can use middleware libraries or set up your own middleware for protected and authenticated routes.

The middleware intercepts the request-response cycle specifically to authenticate the user.

The jot token is checked, the user id ad the token matched - or error thrown and user denied access

If decoded and the token matched then the token is decoded to return the password as a true match. If the token expired then error thrown and access denied.

This middleware prevents immediate authentication at the frontend or even to the backend routes if they are protected.

