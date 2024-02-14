---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: What is the REST-API?
last_updated: Feb 2024
---

# What is the REST-API?

The early history of the web began in the early 1980s in Switzerland at the CERN physics lab.  Tim Berners‑Lee wrote a system called Enquire to help him keep track of different people, projects, and computers that were being used.

That first program didn't have any network connectivity, but it managed data as multiple documents that were connected via hyperlinks (today's URLs - unique resource locators). URLs, were called UDIs, or Universal Document Identifiers.

In the 1990s approached, Sir Tim Berners‑Lee created Hypertext Markup Language (HTML) to build a web page on the internet. HTML was both a browser and an editor. To transfer information from one source to another HTTP (Hyper Text Transfer Protocol) a feature‑rich protocol was developed.

Sequentially, the URL came first then HTTP and finally HTML. Even then, the adoption of sharing of documents was growing so fast that the term "breaking the internet" was a thing as far back as the 1990s.

REST, an acryonynm for Representational State Transfer, was coined by Roy Fielding as a part of his PhD dissertation. Fielding conceived of REST as a way of describing system architecture of the web.as part of his remit to develop formal standards around the transfer of information with URLs, HTTP, and HTML across the web at CERN.

There are several protocols- HTTP & HTTPS (secureHTTP)/ File Transfer Protocol & SFTP(secure FTP)/ SSH (secure shell)- which can be used over the internet/ FTMP (SFTMP - secure FTMP)/etc.

REST, is an architectural style described by Fielding to set up a framework for evaluating networking and transfer of data from one point to another. The destination for this data is also known as an API-endpoint. The start is with the request made by the browser.

REST describes how the running of the request-response system works. As it is an evaluation process, Fielding looks at design choices available at the time and the impact it had - postive, negative or neutral on operating the system. He therefore outlined the possibilites and the constraints of the system on performance, scalability, extensibility.

Therefore, in essence,  REST was a description of how component parts of the web interact with each other in a networked system outlining both constraints and possibilities for improvement and the evolution of the web.

## What are the guiding principles of REST?

In his outline of what REST is and is not, Fielding did not take into account operating systems, the plurality of devices and future disruptors. What he did describe was latency, or the time it takes for data to pass from one point on a network to another, and its relationship with data transfer. 

In that sense, some of the guiding principles of REST are timeless. He also said REST was largely about the architecture and protocols for the internet and may not be interoperable with other types of data transfer and networking systems.

For REST to scale without breaking the system (death by success), Fielding outlined the framework within which his assumptions would work and scale effectively. Scale, could evolve with the addition of intermediaries - middleware, and other addons that he couldn't possibly foresee, but allowed room for evolution.

He described the framework in terms of paradigms - or examples, patterns - it was a theoretical framework to explain the nature of REST APIs and what would encourage them to flourish or flounder.

### 1. The client-server paradigm

The first principle of REST is it needs a user via a peice of software to initiate - the request is the client. There needs to be another peice of software that listens to the incoming request and and responds to the request - the server.

This decouples the two parts of the framework allowing client-side to evolve differently from server-side. While the client is dependent on the server as the initiator of the request, the server can serve multiple clients.

In summary: 

The client sends the request
The server sends the response

There is a uniform interface separating the client from the server which improves scalability and portability of the system over multiple platforms.

### 2. The stateless nature of the data passing through the network paradigm

The second principle is that the data actually is stateless. The server should not store any session data.

The data that is transferred via the API must be a dataset that does not change, mutate or morph and that does not hold session data or other client-side data that is not required. 

It is a representational state of the data, which means it must contain all information required from the client in the request. The server must understand the request and respond with the right data. Other data is superfluous to the server's requirements.
 
 Requests from the client are sent via

- the URL (unique resource locator) and the the query string parameters of the URL 
- a request header, with a request body which holds the state or the information sent by the request from the resource

The server then interprets the request and returns all the information that the client requests in the response via 

- headers and the response body 
- status logs identify how the request has been handled 200 (success)/ 300(redirects)/ 400(errors), etc. 

There are tradeoffs with this paradigm as  scalability, reliability must come from the addition of middleware (intermediaries). This could be a security risk. Additionally handling and managing the state of this data is up to each client which could lead to inconsistency of the data across various platforms - one of the challenges of today's world of big-data.

 ### 3. Uniform interface paradigm

Given this pattern of data exchange, the fourth paradigm was to identify that a lack of  uniform interface would break the flow of information. Therefore four areas of uniformity had to be present for the free-flow of data

1. Uniformity in the way a resource was identified 
2. Uniformity or a set pattern for resource manipulation using representations of the data sent via the headers and URLs
3. Uniformity in the messages sent between the request and response which should be self-descriptive and requiring no further intepretation
4. Hyper media as the engine of the application state - ie requests and responses sent through hyper-text-transfer-protocols (HTTP) at this stage HTTPS was not considered as part of the architecture

### 4. The data caching paradigm

In an unreliable and open system like the internet, caching or temporarily storing data in the network, is a security risk. The risk with caching is that your cached data could get out of sync with your source data.

Yet if data has to pass in large volumes and frequently between multiple clients and a server, data must be cached for the system to maintain a high level of performance.

Fielding recognises this and said all data that passes through the network should be labelled as sets that can or can not be cached.

This allows the client cacher in the browser to reuse the data in the cache at a later stage.

### 5. The layered system paradigm

The internet works on a layered system.

__The application layer__
This is the client-server paradigm describing the apps that interact with each other - client-side and server-side

__The transport layer__
In this layer data is transported between apps via messages, code is broken down into data "packets"
each individual data set has a number and there is a total number of individual packets within a larger packet. This modularised way of transporting data allows the servers to reorder the data in the right order and check for missing data packets

__The internet, network or service layer__
This is the way the DNS system works with IP addresses identifying clients and sending the information to the servers via the internet's network of undersea/ underground and overground cables and wires or wireless options. This layer is called by all three names - the internet, network and service layer as this is where servers serve clients.

__The link layer__
The layer that allows the offloading of data packets on a network or between networks. These data offloading points are called nodes.

With REST, the paradigm described is data limits data transfer to one layer below or above it. This allows for security, scalability and load balancing.

The trade off for this simplicity is higher latency (time that data takes to travel), and that is where good use of cache at each layer can help where data is clearly labelled as cacheable or not. Caching speeds up data delivery between layers.

### 6. The code on demand paradigm

Servers and clients by decoupling their areas of operation could and have led to assymetric development of code bases-client side and server-side.

To alleviate this challenge, Json data is used as a wrapper to bundle the representative state of the data  to and from client and server.

The REST principle acknowledges but is agnostic to this assymetric development but states that code on demand is not a viable proposition in the transfer of data via this protocol.

## What is JSON and why is it important when making an HTTP call?

Json, (pronounced both as Jaysin or Jayson) is an acronym for JavaScript Object Notation, is a popular format for representing documents. It is held in a `.json` file and is a widely used data format, not just for HTTP calls because it is both easy for humans and computers to understand.

Both frontend and backend apps are written in a variety of programming languages. This makes interoperability of code bases a challenge and API calls difficult.

Json is a lightweight store of data and can be consumed by different programming languages making HTTP calls easier to parse (interpret). As it is a text-based format it is lightweight. It is then reconverted back into the format that the database requires. It therefore stores and transports data quickly and efficiently. Compared to XML parsing, Json is less verbose. JSON uses less data overall so reduces cost and increases parsing speed.

The structure of a Json document is similar to a JavaScript object in that it begins and ends with curly braces. Within the braces are fields, and each field has a tightly coupled key-value pair.Square-braces hold the values of arrays.

The difference is that each key-value pair is surrounded by quotation marks, therefore it is a string or a text file.

In other programming languages, Json documents are analogous to objects, structs, maps, or dictionaries.

The way that JavaScript is converted into Json is to instantiate a JavaScript object to a variable. This object is then assigned to the method `JSON.parse()`. The method, parses the JavaScript object converts the whole object into a set of key-value strings. This lightweight text file is now sent to servers.

The backend now gets a Json request. Json is read and the response method used in the server side.  The body of the response is first converted into text then into Json response with the `json.stringify()` method which translates the Json object to a text file.

Edureka has a good video worth watching[https://www.youtube.com/watch?v=uw_rP5bV9r0] for a more detailed understanding.

To visualise JSON better - add the Chrome Extension JSONView

## The component parts of the REST API

**Resources and resource identifiers**

A resource is just a named concept that you can link to - an URI (Uniform Resource Identifier) or IRI (International Resource Identifier),

Identifiers can be created with or without content and then linked to the content later. You can change the content without changing the identifier. You can create multiple concept identifiers for the same content. 

The URI as a separate entity from the content provides both flexibility and stablity. Stability because despite content changing the URI is fixed.

**Representations**

Representation of the data in metadata, links the content to a storage management system for the content or resource or document as they are interchangeably referred to. A resource can have multiple representations, and each representation can be identified through the metadata that's part of the message.

In HTTP, this happens to be the Content‑Type response header. Now because a resource can support multiple content types, there's a process for choosing the most appropriate content type for an individual client.

This process is called content negotiation, allowing a resource to have multiple representations and that they're independent of how the underlying data is stored and managed.


**Self-describing Messages**

A key aspect of the uniform interface is the requirement that a message is self‑describing in the HTTP header. Resource metadata includes headers like Location, representation metadata includes headers like Content‑Type, and control data includes headers like Cache‑Control. HTTP flattens all of these different types of metadata into the same set of headers.

 HTTP cookies being accepted as a protocol extension, is one area of concern as it flies against the concept of representational state.

**Hypermedia**

A hypermedia‑driven workflow is one where the server delivers instructions for the next possible actions along with its responses. The client can then select and execute an action without having to know anything beyond what was in the response. 

Hypermedia‑driven workflows work with HTML and its hypermedia controls like anchor tags and forms. 


**A quick look at the elements of an URL making the request**

1. Protocol - is HTTP
2. Host is the world-wide-web for web applications
3. Domain name is a human readable name provided to a set of numbers that identify the IP address that identifies the web-address. The host and domain names are sent as metadeta in the browser by what is termed as the user-agent. The user agent also sends the type of browser and the protocol of the request plus any other metadata like session cookies, etc.
4. Path directs the server to the file and directory that the document/content/resource is located on the world-wide-web
4. Querystring is the parameters sent to the server typically starts with a question mark. The querystring parameters are composed of key-value pairs
5. The hash/fragment - the URI fragment is generally used by the client to identify some portion of the content in the response.

   ```
   http://www.example.org/hello/world/abc.html?foo=bar&baz=bat#footer
    \___/  \_____________/ \__________________/ \_____________/ \____/`

   ```

protocol/host/domain name/ path/ querystring/ hash/fragment

Note: A broken hash will not break the whole response link. However an incorrect domain-name/ path/ query-string request will completely break the response cycle which is when you get one of the serialised codes to indicate an error (bad-request)

## What is CRUD in a REST-API?

This RESTful response-request cycle transfers data from a complex backend architecture to a complex frontend architecture.

To communicate, the computers must have a common language, and they must follow rules so that both the client and the server know what to expect. The language and rules of communication are defined in a communications protocol or the HTTP Protocol and the REST-API protocols.

Requests via the REST API calls work with 4 verbs that define the methods of the REST API requests to the server

1.  GET - get documents and files from the backend databases/ cloud storage
2.  POST - Post the data from the front-end browsers (cached data) via a network call to the backend dbs/ cloud stoage
3.  PUT - Update the data, a call is sent to the backend and the data available is returned, this data now can be updated in the browser/ front end and sent back to the backend to be stored
4.  DELETE - Delete the information sent from the frontend to the backend dbs/ cloud storage

The response is sent back through a response header with serialised codes to show how the response has been handled.  These network calls are not visible to the user, network errors need to be handled if the response comes back with an error by developers.

HTTP server response status messages  - useful for debugging network errors

[Documentation](https://www.w3schools.com/tags/ref_httpmessages.asp)

- 100 series - information [ 100 continue - server has received headers, send the request body 101 request to switch protocols from requester, 103 resume aborted PUT or POST requests]

- 200 series - success messages [ 200 successful response, 201 new resource created, 202 request accepted for processing - processing not completed]

- 300 series - redirects [307 temporary redirect, 301 moved permanently]

- 400 series - client errors messages from browser (404 not found, 403 forbidden, 401 unathorised)

- 500 series - server errors messages from servers [500 internal server error, 502 bad gateway 504 gateway timeout]

__The component parts of the request__

1. Request header, the CRUD requests (GET, PUT, POST, DELETE) in the header sends a url with the querystring for the resource required, the user agent is sent by the browser, as are any session data information - cookies, etc. eg: Cookie: SessionID:userid123

2. The request body - further information can be set in the request body to add specificity to the request

__The component parts of the response__

1. Response header - in the response header, you get back the information with a status code as above - 200, the response worked, 404 the resource could not be found

2. Response body - once again the response body then gives you more information on the type of document that is being returned - the content-type as well as the content-length. The response then has an empty line and the body of the response is a JSON object with the information requested returned.

_Resources_

[MDN documentation](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/How_does_the_Internet_work)
[A good YouTube Video on REST APIs](https://www.youtube.com/watch?v=7_LPdttKXPc)
