---
layout: default
title: How does auth work in a digital environment?
nav_order: 8
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

## How does OAuth work?

OpenId connect uses a system called OAuth or Open Authentication.

Now anyone who claims to be you digitally must provide additional information to the username and password, which is a digital authorisation token. There are several digital auth tokens, the most common being a JWT, (Json Web Token), also called a Jot. A JWT is a `.json` (JavaScript Object Notation) file that holds the `bearerToken` or the jot token from the JWT library. 

The token is like a session stateless cookie that is generated when the user types in their authentication details (username and password for example) and sends it via an API (Application Programming Interface) call in the header of the request to the backend resources, typically a database which stores user information.

When you sign in, a session-cookie identifies you as a user and a Jot is dropped into the browser with OpenId as a gateway that is the equivalent of the additional proof - the driver's licence.

Now when you request for a resource - in the form of an API call to an URL (unique resource locator) that identifies what you have requested for (consider this the parcel you want from the Post office with a tracking code to identify your resource from all the other resources in the digital warehouse of the world-wide-web) a matching service takes place.

- Digitally does your email, password correspond with the data-store that holds your email and password?
- Does the additional proof of the JWT token provide you access to the URL requested - if yes, you can see the resource, if no you will not be authorised to receive the URL and the information it holds.

The JWT provides you with a digital signature in its scope - a scope is a set of requirements for the digital signature. As with your licence or passport, the Post Master looks for identifying data - a hologram, a bar code, a unique reference number - all these are the scopes of the document. Similarly a Jot will have different scopes depending on the resource requested which are contained in the request header of the API-call.

The JWT is a digital signature, dropped with a session token, so that the user of the session when they attempt to log in is matched with the additional token identification and authentication before the release of the URL.

Now if another user/ bot impersonates the true user, the digital signature will not match as a new session has been created and the new user must provide all of these proofs to get the URL resource.
