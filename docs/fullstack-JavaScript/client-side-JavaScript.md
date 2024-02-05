---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: Client-side JavaScript
last_updated: Feb 2024
---


# Client-side JavaScript

JavaScript was originally used for client-side scripting making HTML (Hyper Text Markup Language) nodes, or HTML tags. HTML tags cluster up into a tree shape called the DOM(Document Object Model) Tree. The DOM-tree has the root-HTML - the trunk. 

The branches areother HTML pages that feed into the root-HTML and each individual HTML tag is a node in the DOM-tree. Tags can contain within them attributes which you can access to inject CSS (Cascading Style Sheets) or JavaScript. A process that is referred to as hydration.

On the client-side, JavaScript can be used directly by accessing the nodes of a DOM-tree. J-query an early JavaScript library did this by abstracting some functions and making the process of hydration quicker.

Some static site generators like EmberJS, MoustacheJS and ElectronJS, may use a server to build pages and render them through a root-HTML.

A further layer of abstraction, is creating a virtual-DOM, where JavaScript libraries like Vue and React, hydrate the root-HTML in a replica of the DOM.

NextJS, which is a frontend JavaScript framework, takes this to a level further where many of the pages are created server-side, they are then cached and served to the root-HTML page.



# What is a static-site generator

Static Websites which use HTML and CSS only maybe some JavaScript.

Drawbacks- code repeated for each page, so hard to update and maintain. Also the number of calls to the server slows down the performance of the site. It also does not contain dynamic data.

SPA - single page application - is different from an SSG as it only makes one server request to the index page, better performance, easier to maintain.

Drawbacks - bad for SEO.

SSR - Server Side Rendering
Page is rendered on the server after every request, server sources the data from the backend and sends it into a templates to render HTML pages. So good for SEO and easy to maintain.

Drawbacks - data calls for every rendered HTML page can impact performance as it slows down page rendering.

A static site generator - SSG, for short - generates static HTML pages using a combination of pre-built templates, components and data. There are many SSGs, Gatsby - front-end solution using React and GraphQL - has the best star rating on the ![JAM Stack list](https://jamstack.org/generators/)

SSGs compiles the HTML pages at build time before the app is deployed to the web. After the initial request, the SSG behaves like an SPA.

SPAs and SSRs can be over-engineered. SSGs take some of the grunt work out of building static sites. SSGs bundle all the files in build time and then sends the files to a CDN (content delivery network) to host.

Good for SEO as the server gets back a content-rich, pre-rendered HTML page.
Performant - as it is pre-rendered.
Easy to maintain and update - based on templates that can be reused.
Data sources are diverse - you can use content from Wordpress, e-commerce data from Shopify, back-end data from Firebase or a simple file system. Gatsby combines all these sources into a unified GraphQL layer by using source plugins.
