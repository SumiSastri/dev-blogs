

## What is a JWT token?



5.5 Jot or JWT Tokens are required for authentication in the login route
[https://jwt.io/introduction] There are several libraries offered depending on the language and methods associated [https://jwt.io/libraries]


The 2 key methods `jwt.sign()` and `jwt()` verify are provided by o-auth free.
`jwt.sign({ id: savedUser.id }, config.get('jwtSecret'), { expiresIn: 36000 },`

With this method you can 
- find a saved user
- configure the jot token with a secret 
- set the bearer token which will unsalt and unhash the password match it and validate it
- you can set the token to expire this is an optional field you do not have to have an expiry time
- This allows in the front end the user to put in their password and if the password is wrong then  they are not authenticated


Gotchas:
- When you are creating your DB create one user where you know the password and can check and test the authenticated route as your db will have the hashed passwords saved.

Authorisation only needs a post method.

The jot token has the id of the user, the timestamp of when the token is issued and the expiry if one.

The user then in the front end types in the password, the id identifies the user and then provides the password back in a string by unhashing it.