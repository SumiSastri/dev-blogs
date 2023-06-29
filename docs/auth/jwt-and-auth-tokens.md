<!-- ---
layout: default
title: What is an authorisation token?
nav_order: 8
parent: Authentication and authorisation
--- -->

# What is a digital authorisation token?

A digital authorisation token, is a token that contains a digital signature that authenticates the user and once the authentication process is passed authorises the user to access protected resources.

The token is sent over the internet via an HTTP (Hyper Text Transfer Protocol) request-reponse cycle. The HTTP architecture is the basis of any data exchange across the internet.

Between the user posting the request from a device, is the browser that sends the request on behalf of the user and brings back a response, which is the resource the user is requesting on the return trip from servers.

The browser, once again, is in the middle of the server and the user. It performs the function on the return trip, or the HTTP response, of compiling the page from different documents fetched - the user interface (UI) text and images, the data from databases like the user passwords, in this case and the authentication token with a digital signature.

To connect the user, browser and servers is a transport layer - that transports the data with its own encryptation services and protocols. A TCP (Transport Control Protocol) connection, connects two hosts connect and makes the exchange data possible. During the transport of the data an encrypted TLS (Transport Layer Security - formerly known as a Secure Sockets Layer SSL) is enabled to prevent data leaks.

Between the browser and the server is this transport layer with several proxys - its routers, modems and other networking systems that connect user devices, browsers and servers.

The browser, itself is a proxy called the user-agent as it transports information on behalf of the user, via the transport layer to the servers and returns this information back to the user.

In the transport layer, a proxy that controls the access or routing of the user to protected resources intercepts the request and a token is dropped as a data-packet in this secure TCP-TLS environment, and passes this request with the additional scripts in the token to the servers.

An authentication token therefore is a type of cookie, or data packet that is not stored in the browser and performs the action of a stateless bearer token.

It does not mean that the token is sessionless - the data packet is closely coupled with the user session to connect the user and the authentication process in the transport layer of the request-response cycle.

Using the request header extensibility, HTTP cookies, like bearer tokens are added to the workflow, allowing session creation on each HTTP request to share the same context, or the same state in the transport layer and not the UI or design layer which is exposed to anyone surfing the web.

It is in this transport layer that the bearer token sent in the HTTP header request is intercepted, again by middleware that encrypts sensitive data before it is passed on to databases on the server.

Encrypted passwords are now stored server side and even those with access to server side databases have no access to the real password as it has been encrypted.

The password now is decrypted in the response cycle server side where the encryptation process is reversed, the details matched and checked for authentication and if authenticated, the authorisation token is sent back in the HTTP response body.

This tamper-proof system of encryptation and decryptation that occurs allows the token to carry an authenticated digital signature and authorises the user to access the documents that are written into the scope of the authorisation token.

A point to note is that authentication happens with an HTTP - POST request while authorisation allows HTTP POST, PUT, DELETE requests which allow the user to perform CRUD(CREATE, READ, UPDATE, DELETE) actions.

## What is JOSE

## What is a JWT token?

A JWT, (Json Web Token), also called a Jot, is an industry standard security token used to transmit sensitive information like passwords across distributed systems. It is a type of digital authorisation token.

A JWT token has 3 parts punctuated by a period `.` - see the example below

```JavaScript
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.XbPfbIHMI6arZ3Y922BhjWgQzWXcXNrz0ogtVhfEd2o
```

The token starts with the alphabets `eyJ` for the first 2 segments, showing that this is encoded [base64 URL character set](https://www.base64url.com/).

- **Header**:  contains information about the token

When decoded ot gives you a JSON (JavaScript Object Notation) object that describes the token and outlines how to read and validate the token. The keys - `typ` tell you the type of object, here a JWT, the `alg` is the algorithm to use to decode it and the `kid` is the id of the key holder. 

eg:

```JavaScript
{
    "typ": ""
    "alg": ""
    "kid": ""
}
```

- **Payload**: this contains the claims-based authorisation information about the user asking for the information in the HTTP request header.

```JavaScript
{
    "iss": ""
    "aud": ""
    "sub": ""
    "iss": ""
    "client_id": ""
    "iat": ""
    "jti": ""
}
```

- **Signature**: contains the header and payload encrypted with a secret. The secret is stored on the server and is used to generate the token. If a token's signature cannot be decrypted using the correct secret it is deemed to be invalid, and the user is refused access to the requested resource.

The library uses 2 key methods.
`jwt.sign({ id: savedUser.id }, config.get('jwtSecret'), { expiresIn: 36000 },`

JWTs were created for OAuth and (OIDC) OpenID Connect to replace SAML.
## What is BCrypt?

Passwords and other sensitive information can be seen in local storage in a browser and open to security threats need to be encrypted. Encrypting passwords and other senstive information is recommended.

BCrypt is a JavaScript encryptation library that takes a post request and encrypts the response body. 

The way it works is when a user registers with a password, BCrypt encrypts the data before storing it in the database. When a user logs the passwords are matched by a BCrypt program that compares the password sent by the user with the password in the database. If the password is valid,  BCrypt sends a JWT and during the session the user is on the site, the JWT can then be used to access certain routes that would otherwise be unavailable.

The library can be installed with npm as a package manager `npm install bcryptjs` and once imported into a JavaScript frontend and instantiated, it can be used. The library ships with a compare and generate salting rounds methods that perform the tasks of comparing and encrypting passwords.

```bycrypt.compare()``` - once a user is validated, compares the encrypted password with the plain text input

```bcrypt.genSalt()``` - once user is validated, generates the number of salting rounds and encrypts plain text password

### Further reading

[MDN docs on the network layer](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP)
