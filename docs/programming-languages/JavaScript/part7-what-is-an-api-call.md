---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: What is an API?
last_updated: Feb 2024
---

# What is an API?

The frontend (client-side) of an application (app) is based on three key languages - HTML (Hyper Text Markup Language) CSS (Cascading Style Sheets) and JavaScript.  It mainly refers to the user interface with desktops, mobile and wearable apps. 

The backend(server-side) of an app refers to the data, logic that the user does not see. This data is stored on physical servers (on-prem) and remote servers (the cloud) for added security.

For apps to connect frontend to backend services,  an API (Application Protocol Interface) is required to make HTTP (Hyper Text Transfer Protocol) requests to servers. 

An API, is therefore an interface between 2 apps to transfer information from one app to another.

The browsers' JavaScript engines are used to send these requests via the network layer which connects or networks the two apps.The response is then fed back to the client and data  the user sees is refreshed. 

The request-response pattern (which is based on a set of rules, standards or protocols) is the language of communicaton between client (browser, front-end) and server (back-end, databases).

[For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).

## What is the difference between HTTP and HTTPS requests?

HTTP refers to the standards, rules or protocols for these API calls. The secure encrypted way that data is transfered, is referred to as HTTPS (Hyper Text Transfer Protocol - Secure). 

This protocol is completed in the the TCP/IP (Transport Connection Protocol/ Internet Protocol) network layer. The network layer in itself is a layered system. The encryptation layer of the network layer TLS (Transport Layer Security - formerly known as a Secure Sockets Layer SSL) encrypts the data making an HTTPS request more secure from malicious actors compared with an HTTP request.

HTTP & HTTPS enable documents to be transported to and from browsers and back-end databases. It is the basis of data-exchange on the web.

##  What is the difference between HTTP and API calls?

This request-response cycle is referred to both as HTTP calls and API calls. However there are differences.

API's have end points where the data starts and ends. It is an interface. HTTP and HTTPS are protocols, or a set of rules within which an API call that goes from endpoint to endpoint follows.

An API-call follows the HTTP/HTTPS rules to make a round-trip or a call for data.

APIs transfers data via the service/network and application layers. HTTP/HTTPs only operate in the network layer. 

The terms service/network and app layers are also used interchangeably but there are differences. The app layer often means the frontend, which has its own datalayer or the backend app. The service layer is server-side because servers transfer data to the client. The network layer is the transport layer inbetween.

In general, a service-layer is an abstraction of computer resources and a client does not have to be concerned with how the server performs while fulfilling the request and delivering the response. The client only has to understand the response based on the well-known application protocol, i.e. the content and the formatting of the data for the requested service. Network engineers specialise in keeping the networks stable.

This information is sent via a header to downstream backend operations - data validation, data storage, data transformation, etc. A response is sent back based on this request.

HTTP/HTTPS is the protocol used for both APIs. SOAP is an acryonym for Simple Object Access Protocol while REST is an acryonynm for Representational State Transfer, they refer to type of data being sent via the networks in the transport layer of the web.

## What is the difference between a SOAP-API call and a REST API call?

Both are APIs that enter into the cycle of calling, posting, updating and deleting data during the client-server request-response cyle.

SOAP, initially created by Microsoft, is a more rigid way of accessing databases. With REST, data is transported in a JavaScript Object Notation`.json` file. With SOAP uses XML (Extensive Markup Language) or `.xml` files to transport data.

SOAP works better with legacy systems such as the Distributed Component Object Model (DCOM) and Common Object Request Broker Architecture (CORBA).

As SOAP protocols are more rigid, they are more fault prone as they are intolerant of errors. The beneift of SOAP is that it can be automated and used with STMP (Simple Mail Transfer Protocol) as well as HTTP, which means data can be transfered not just from the web but also electronic mail systems to databases directly.

REST is light-weight because the Json object (pronounced both as Jaysin or Jayson) is just a lightweight text file and JavaScript developers prefer REST to SOAP. A significant amount of code needs ot be written to transform XML files. 

XML-HTTP requests are built into all browsers as it is a very old API that predates JavaScript and Json notation for file transfer.

There is no choice between using SOAP or REST as it is already pre-defined as an architectural service and you have to use the system that the API creator requires.

Some sites, like Amazon, support both.

A good blog to read [https://smartbear.com/blog/test-and-monitor/understanding-soap-and-rest-basics/] and a little more technical version [https://www.soapui.org/learn/api/soap-vs-rest-api.html]
