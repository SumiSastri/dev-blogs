<!-- ---
layout: default
title: What is an authorisation token?
nav_order: 8
parent: Authentication and authorisation
--- -->


__What__  bcrypt.js is a library that helps with the encrypting of passwords logged in the front-end by users.

__Why__ Passwords and other sensitive information can be seen in local storage in a browser and open to security threats. 
Encrypting passwords and other senstive information is recommended.


__Where__  bycrypt is a backend encryptation library that takes a post request and encrypts the response body of passwords

__When__ 

1. After a post-request with logic that validates the user, the password then is encrypted to the validated user
2. After a get-request with logic that validates the user, the password is encrypted password is checked against the decrypted original
__How__ 

Install the library
``` npm install bcryptjs```

Import and instantiate on the page.

Use the methods of the library

```bcrypt.genSalt()``` - once user is validated, generates the number of salting rounds and encrypts plain text password

```bycrypt.compare()``` - once a user is validated, compares the encrypted password with the plain text input 

**Gotchas**  

To authenticate our app we will use the same basic methodology as we did with Express:

1. When a user registers we will hash their password with BCrypt before storing it in the database
1. When a user logs in we will validate the password they supply against the hashed password in the database
1. If the password is valid we will send a _JSON web token_ (JWT)
1. The JWT can then be used to access certain routes that would otherwise be unavail


## What is a JWT token?
`npm install jsonwebtoken` [https://www.npmjs.com/package/jsonwebtoken]
5.5 Jot or JWT Tokens are required for authentication in the login route
[https://jwt.io/introduction] There are several libraries offered depending on the language and methods associated [https://jwt.io/libraries]


- Debugger [https://jwt.io/#debugger-io]

The 2 key methods `jwt.sign()` and `jwt()` verify are provided by o-auth free.
`jwt.sign({ id: savedUser.id }, config.get('jwtSecret'), { expiresIn: 36000 },`



It is make up of a 
- header
- payload
- expiry/ refresh
With this method you can 
- find a saved user
- configure the jot token with a secret 
- set the bearer token which will unsalt and unhash the password match it and validate it
- you can set the token to expire this is an optional field you do not have to have an expiry time
- This allows in the front end the user to put in their password and if the password is wrong then  they are not authenticated


Gotchas:
- When you are creating your DB create one user where you know the password and can check and test the authenticated route as your db will have the hashed passwords saved.

Authentication  -> POST
Authorisation -> POST, PUT, DELETE (CREATE, READ, UPDATE, DELETE)

The jot token has the id of the user, the timestamp of when the token is issued and the expiry if one.

The user then in the front end types in the password, the id identifies the user and then provides the password back in a string by unhashing it.



__Where__ Server side encryptation of data

1. Post request has a session id and a browser cookie (or bearer Token like JWT) - the session id identifies the unique session initiated by the user
2. Client post request goes to the back end server with the browser cookie (or bearer Token) and session id 
3. The server parses the information in the header request body, with the session id and the browser cookie (or bearer Token), if parsed correctly, the data requested by the user is sent back in the response body connects to the session id and is stored in the browser cookie (or bearer token). 

__When__ On login and access to secure routes requested



import the library and set a secret in a ```.config``` or ```.env``` file


Use the methods of the library

```jwt.sign()``` first step of authorisation - so identify the user you want to authorise by the user id.

```jwt.sign({ id: savedUser.id }```

When you save the post payload, drop the bearer token into the object 


```JavaScript
// REFACTOR FOR JWT - SIGN TOKEN WITH USER ID
					jwt.sign
					({ id: savedUser.id }, 
						config.get('jwtSecret'), 
						{ expiresIn: 36000 }, 
						(err, bearerToken) => {
						if (err) throw err;
						// JREFACTOR FOR JWT - DROP TOKEN IN RESPONSE
						res.json({
							bearerToken,
							savedUser: {
								id: savedUser.id,
								username: savedUser.username,
								email: savedUser.email,
								image: savedUser.image,
								userType: savedUser.userType
							}
						});
     })
				);
			});
```


## JSON Web Tokens

The technology we will be using is JWT (pronounced 'jot'), which stands for **JSON Web Token**. It allows us to embed JSON into an encrypted token.

A JWT consists of three parts:

- **Header**: which contains information about the token, encryption method etc
- **Payload**: which contains any data that we want to store in the token (most commonly the user's ID)
- **Signature**: which contains the header and payload encrypted with a secret. The secret is stored on the server and is used to generate the token. If a token's signature cannot be decrypted using the correct secret it is deemed to be invalid, and the user is refused access to the requested resource.

A typical JWT might look like this:

```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.XbPfbIHMI6arZ3Y922BhjWgQzWXcXNrz0ogtVhfEd2o
```

You can see each section delineated by a period `.`.

## Usage



### Creating a token

The syntax for creating a JWT is as follows:

```js
const jwt = require('jsonwebtoken')

// `sub` means subject, ie the subject of the token, and usually contains the user's ID
const payload = { sub: 1526 }
const secret = 'shhhh!'
const options = { expiresIn: '1hr' }

const token = jwt.sign(payload, secret, options)
```

### Verifying a token

 An asynchronous function requiring a callback:

```js
jwt.verify(token, secret, (err, payload) => {
  if(err) console.log(err) // token is invalid
  console.log(token) // { sub: 1526 }
})
```

We can turn this into a promise using a promise library like Bluebird:

```js
new Promise((resolve, reject) => {
  jwt.verify(token, secret, (err, payload) => {
    if(err) return reject(err) // token is invalid
    return resolve(token) // { sub: 1526 }
  })
})
  .then(payload => console.log(payload)) // { sub: 1526 }
  .catch(err => console.log(err)) // token is invalid
```

## Adding JWT to a login route

To incorporate a JWT into the authentication flow of our Application Programming Interfaces (APIs), we can create a JWT in our login (and register) controller and send it to the client when they successfully authenticate:

```js
const User = require('../models/user')
const jwt = require('jsonwebtoken')
const { secret } = require('../config/environment')

function login(req, res, next) {
  User.findOne({ email: req.body.email })
    .then(user => {
      if(!user || !user.validatePassword(req.body.password)) {
        return res.status(401).json({ message: 'Unauthorized' })
      }

      const token = jwt.sign({ sub: user._id }, secret, { expiresIn: '24h' })
      res.json({ user, token, message: `Welcome back ${user.username}` })
    })
    .catch(next)
}
```

## Checking for a token

In order check for a token when the client makes a request, we need to verify the token in our `secureRoute`:

```js
const Promise = require('bluebird')
const jwt = require('jsonwebtoken')
const { secret } = require('../config/environment')
const User = require('../models/user')

function secureRoute(req, res, next) {
  // if there is no Authorization header, respond with 401 Unauthorized
  if(!req.headers.authorization) return res.status(401).json({ message: 'Unauthorized' })

  // get the token out of the Authorization header
  const token = req.headers.authorization.replace('Bearer ', '')

  // create a new promise to verify the token
  new Promise((resolve, reject) => {
    jwt.verify(token, secret, (err, payload) => {
      if(err) return reject(err)
      return resolve(payload)
    })
  })
      .then(payload => User.findById(payload.sub)) // find the user by the user ID in the payload
      .then(user => {
        // if the user can't be found, respond with 401 Unauthorized
        if(!user) return res.status(401).json({ message: 'Unauthorized' })

        // add the user to the `req` object for use in the controllers
        req.currentUser = user

        // go to the destination controller action
        next()
      })
      .catch(next)
}

module.exports = secureRoute
```

## Testing

Now that the authentication flow has been completed it we can test that everything is working using Insomnia.

Make a request to a secured route, you should receive a 401 response:

![](https://user-images.githubusercontent.com/3531085/37476299-af82b422-286c-11e8-9f37-fdc66c782028.png)

Now login, you should receive a token in the response:

![](https://user-images.githubusercontent.com/3531085/37476179-6921ea98-286c-11e8-9ad9-cdedb4c94c9b.png)

In the **Header** tab of Insomnia add the Authorization header with the token you received in the previous response:

![](https://user-images.githubusercontent.com/3531085/37476683-b0d6da00-286d-11e8-928a-a87bcedc1c02.png)

You should now be able to make an authenticated request:

![](https://user-images.githubusercontent.com/3531085/37476685-b2ec1116-286d-11e8-9b91-2120b932a26f.png)

## Further reading



- [jsonwebtoken Docs](https://github.com/auth0/node-jsonwebtoken)



You can use middleware libraries or set up your own middle ware for protected and authenticated routes.

The middleware intercepts the req-res cycle specifically to authenticate the user.

The jot token is checked, the user id ad the token matched - or error thrown and user denied access

If decoded and the token matched then the token is decoded to return the password as a true match. If the token expired then error thrown and access denied.

This middle ware prevents immediate authentication at the front end or even to the back end routes if they are protected

Jot tokens are stateless - they are not stored in the browser the hashing salting process is reversed server-side. So the middleware intercepts this and authenticates user before they can enter sensitive data in databases.
