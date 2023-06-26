



The purpose of this documentation is to outline how password encrypting is enabled in a backend api-route with bycrypt.js



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
