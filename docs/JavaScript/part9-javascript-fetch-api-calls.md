---
layout: default
parent:  Fullstack JavaScript
nav_order: 15
title: How JavaScript handles API calls
last_updated: Feb 2024
---

# How JavaScript handles API calls

To send and receive API calls from clients to servers, JavaScript's native middleware, the Fetch API can be used out of the box with no setup, since NodeJS v18 as it can be read by browsers and runs in the node environment server-side.

The downside is you have to manually transform data. It is more verbose and harder to work with. It also needs to be setup for Internet Explorer as it does not work with the browsers' JavaScript engine. This no longer is an issue as Internet Explorer has been sunset and Microsoft uses the google V8 engine with Edge.

Other middleware like Axios and Superagent can be used to make these calls. Both these JavaScript libraries offer different methods to run the request-response cycle for REST-API calls.

## What is Ajax?

Prior to the Fetch API, data request-response cycles were handled by AJAX.

AJAX is an acronym for Asynchronous JavaScript And XML. AJAX just uses a combination of a browser built-in XMLHttpRequest object (to request data from a web server) and JavaScript and HTML DOM (to display or use the data).

AJAX allows web pages to be updated asynchronously by exchanging data with a web server behind the scenes. This means that it is possible to update parts of a web page, without reloading the whole page.

[See W3 Schools Docs](https://www.w3schools.com/whatis/whatis_ajax.asp)

AJAX has mainly been replaced by the Fetch API in modern web development.

## What is the difference between Axios and Superagent?

The two most popular options outside the Fetch API are the libraries Axios and Superagent.
[SuperAgent Documentation](https://visionmedia.github.io/superagent/)

__The advantages of Axios__

- in the npm registry can be easily downloaded and used
- can be used in the `script` tag in vanilla JavaScript as well
- the response body JSON is pre-parsed with the Fetch API
- has a `setTimeOut()` which can in some instances be helpful (loading and checking errors)
- good cross-browser support
- can be used with TypeScript
[Axios on GitHub](https://github.com/axios/axios)
[Axios Docs](https://axios-http.com/docs/intro)
[Latest v.0.28.0 release notes](https://github.com/axios/axios/releases/tag/v0.28.0)

eg: of what you can see once you use the `axios.get()` method

```
axios.get('url')
  .then(function (response) {
    console.log(response.data);
    console.log(response.status);
    console.log(response.statusText);
    console.log(response.headers);
    console.log(response.config);
  });
```

[CRUD methods with Axios from Docs](https://axios-http.com/docs/example)

__Axios trade-offs__

Axios does have some advantages over using the Fetch API, however, there are no significant code execution benefits compared to the `fetch()` method because an additional package has to be added to your app and this means package maitainence and managing any issues arising out of package management.

The Fetch API on the other hand is native to JavaScript and needs limited set up. It is also not significantly more verbose compared with Axios.

## What is middleware?

Middleware can be as simple as a config file that handles the request-response cycle.

Functions in the config file access to the request and response JSON object can make changes to both the request and the response objects.

Middleware can also take the form of APIs like the Fetch API, or a library of methods as with Axios and Superagent. External libraries make the call with additional helper methods that smooth out the data-transfer process in the network layer.

This is the simplest form of middleware. Middleware is as complex or as simple as its use case.

Complexity is derived from the fact that servers may receive requests from many different clients in a very short period of time. 

The bulk of CPU-heavy data (videos/ images) and sensitive data is stored servers-side. Client-side, on the other hand, stores a limited amount of data and may require state-management tools to process the data it receives from servers. 

Servers can perform a limited number of tasks at any moment in time and need to balance the load of incoming requests to the outgoing responses. They rely on a scheduling system to prioritize incoming requests from clients in order to accommodate them all in turn. A complex network of middleware libraries may help in this loadbalancing effort.

Servers balance request-response loads to maximise server uptime. Often servers will limit how a client can use the server's resources with middleware. Middleware may also be used as a security layer within the transport layer. 

As backend systems are complex a network of middlewares can handover data calls from the client to multiple backend systems that return the data to the user. This is a more complex use case for middleware server-side.

## How does the Fetch API work?

Syntax:

```JavaScript
fetch(url, options).then(function(response) {
  // handle HTTP response - decode information sent
}, function(error) {
  // handle network error
})
```

An example of useage:

```JavaScript
fetch('myapi/myDocuments')
  // handle HTTP response - decode information sent
     .then(response => response.json())
     .then(data => console.log(data));
  //  display data after checking logs
  // .then(data => displayMyDocs(data));
```     

- The Fetch API is promised based with the request returning a promise that is resolved back into Json. A promise is a type of JavaScript callback function, just as `array.map()` or `array.filter()`.

A callback is a nested synchronous function where one code block has to run before the other can be executed. Dependent on several conditional statements, callbacks led to what was termed as "call-back-hell" or "the pyramid-of-doom".

In ES6, promises were created as JavaScript constructors that take 2 params `return new Promise (resolve, reject)`. The argyments get executed with a series of `.then` blocks that results in the promise ending with three states:-

- Fulfilled
- Rejected
- Pending

From the documentation, the full syntax of the Fetch API for reference is here as a handy reference.

```JavaScript
fetch(url, {
method: "GET", //=> Strings - POST, PUT and DELETE in upper case
headers: {
"Content-Type": "application/json"
// "Content-Type": "text/xml"
},
// body should come after the headers
body: JSON.stringify(data),
// manages cross origin scripting (CORs)
credentials: "same-origin"
}).then(function async (response) {
await	
// these can be logged to the console to debug
response.status //=> number 100–599
response.statusText //=> String
response.headers //=> Headers
response.url //=> String

return try response.json()
// return try response.text()
}, function catch (error) {
error.message //=> String
})
```

Resolved arguments result in 200 codes in the response header or a success message, and rejected arguments throw errors.

The Fetch API then takes the response body and parses it with the `response.json()` method

The method has 2 params url and options, these options can be existing options like `signal` from the Fetch-API or other arguments you may want to add.

Asynchronous JavaScript layered on top of promises simulates synchronous code. The key words `async` and `await` can be used as syntactical sugar over promises and the corresponding `try-catch` blocks to pinpoint errors for promises that are rejected.

The pending state is the time taken for the data to be fetched and loading spinners in the front end are used to show that the server is taking time to find the data.

<!-- ## What is CORS?

## What are signals and the abort control method?

## The promise based request-response methods

`Async-await` and `try-catch` blocks are in ECMA-2017 and may not be compatible with older browsers. However compilers/ transpilers of code may do the necessary work to make these code blocks backwards compatible. -->

## APIs and protecting server-side information
 
Some 3rd-party APIs are free, others may have tiered payments starting with a free option and scaling up to a premium model. An app may also rely on internal APIs created by your organisation's teams.

API keys are a key-value pair that connect the consumer of the API to the source of the data. By matching the id of the user, API data can be protected from malicious actors.

API keys can be saved as a dev dependency and excluded from files that are submitted to version control systems such as GitHub, and is only of of several options open to secure server-side data.

__Steps to set up an API key in a dotenv file__

- Set up a `.gitignore` file in the root of your application - [more about gitignore files]( https://help.github.com/en/github/using-git/ignoring-files)
- Add the list of files to ignore and include `.env` files
- Create a `.env` file to store your API keys and other sensitive information
- Use a string literal to set up your sensitive information eg: `APINAME_API_KEY1='my key 1'>` use a fake key name to test the files are not included in your version control

In your server-side file, add the codeblock to exclude the `.env` file in your local, testing or production environments.

```
if (process.env.NODE_ENV !== 'production') {
	require('dotenv').config();
}
const {APIKEYNAME_API_KEY1, APIKEYNAME_API_KEY2} = process.env;
```

- Commit files and check that files are not included
- You can then replace the `APINAME_API_KEY1=<my key1>` test with the real key information


If this fails create a debugging branch as your key is visible in your public repo

1. Check your gitignore files - make sure you have included `.env` to be ignored 
2. Check your dotenv files `.env`
3. Check your code in your server
4. Make sure you are using placeholders at this stage APIKEYNAME and so that when you debug and commit you are not exposing your key
5. To stop tracking the files that have pushed up your API secrets, run `rm --cached`
6. You can now safely delete this branch

Run the set up again till successful

[Gitignore docs](https://git-scm.com/docs/gitignore)

## Mocking and testing API calls

- It is expensive to call an API just for the purpose of testing - therefore mocks and spies better
- Real API calls can timeout - take long to load/ have internal server errors
- Test APIs with mocks and spies
- Create a utility function to call your API & test utility function with mocks/ spies/ matchers
- The purpose of testing an API with a mock is not to test the internal functions of the call but what data is returned so the object is mocked and matchers like `toBeCalled()/ toBeCalledWith()` test the return statement to check the right data has been returned by the server

__Resources__

- [MDN Docs on Fetch](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)

- [W3 Schools Docs on Fetch](https://www.w3schools.com/js/js_api_fetch.asp)

- [JavaScript Info Tutorial](https://javascript.info/fetch-api)

- [Webdev blog](https://web.dev/articles/introduction-to-fetch)

- [Freecodecamp blog](https://www.freecodecamp.org/news/how-to-fetch-data-from-an-api-using-the-fetch-api-in-javascript/)

- [David Walsh](https://davidwalsh.name/fetch)

-[Digital Ocean Blog](https://www.digitalocean.com/community/tutorials/how-to-use-the-javascript-fetch-api-to-get-data)

- [For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).