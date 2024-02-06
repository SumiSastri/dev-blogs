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

On the client-side, JavaScript can be used directly by accessing the nodes of a DOM-tree. J-query an early JavaScript library did this by abstracting some functions and making the process of hydration quicker. Static sites are made more dynamic in the hydration process as code blocks can change the way the elements on a page (or tags) are rendered (made visible) to the user.

Some dynamic page rendering from the server-side withe template page generators - like EmberJS, MoustacheJS and ElectronJS - may use a server to build pages and render them through a root-HTML.

A further layer of abstraction, is creating a virtual-DOM, where JavaScript libraries like Vue and React, hydrate the root-HTML in a replica of the DOM.

NextJS or AngularJS which is are frontend JavaScript frameworks, takes this to a level further where many of the pages are created server-side, they are then cached and served to the root-HTML page.

## What are static sites, SSRs, SPAs and SSGs?

Static websites are those which use HTML and CSS only maybe some JavaScript. They are called static as much of the content is immutable (or does not change frequently).

Drawbacks are code repeated for each page, so hard to update and maintain and the side is rigid as the data does not change.

SSRs or server-side template renderers, result in a page being rendered as they are created on the backend. The frontend makes a server request for a page. The page is rendered after every request. The server sources the data from the backend. In backend resources, templates are generated for pages and multiple HTML pages can be rendered. This is good for SEO and easy to maintain and allows for a static site to become more dynamic, with more frequent page changes, updates and refreshes.

Drawbacks of SSRs are that a data call has to be made for every rendered HTML page can impact performance as it slows down page rendering.

SPAs or single page applications, are different from SSGs they only makes one server request to the index page - they tend to do this using a virtual-DOM. This results in better performance and in general they are easier to maintain.

Drawbacks of SPAs are they bad for SEO (search engine optimisation) as there is only one root-HTML page for search engines to track.

SSGs, or static site generators, generate static HTML pages using a combination of pre-built templates, components and data. There are many SSGs, Gatsby - front-end solution using React and GraphQL - has the best star rating on the ![JAM Stack list](https://jamstack.org/generators/)

SSGs compile the HTML pages at build time before the app is deployed to the web. After the initial request, the SSG behaves like an SPA.

While static sites can be rigid and inflexible, for apps with one to five pages, static sites are a great option as they are lightweight and easy to maintain.

For the sites with under 25-pages which are a combination of static and dynamic content, SSRs are not a bad option. SPAs and SSGs can be over-engineered and require more developer time and resources. 

That much said, SSGs take some of the grunt work out of building static sites. SSGs bundle all the files in build time and then sends the files to a CDN (content delivery network) to a hosting platform. They are good for SEO as the server gets back a content-rich, pre-rendered HTML page. They are performant - as pages are pre-rendered. They are relatively easy to maintain and update as they are based on templates that can be reused. They are extensible - data sources are diverse - you can use content from Wordpress, e-commerce data from Shopify, back-end data from Firebase or a simple file system. 

SPAs offer the next level of complexity and if your use case is a complex app with many users, SPAs like React and Vue may be good to consider and measure up against frameworks like NextJS and Angular.

## What is the difference between a library and a framework?

The key difference between a library and a framework is the amount of control a developer has over features and functionality.

With a framework all features, functionality and architecture are pre-determined with limited options to change the control-flow or logic of the framework. For example with Angualr you get the components, testing, a http library, routing, internationalization, animation, form validation and CLI tools all baked in.

It is a skeleton within which you can work.

This makes it hard to deviate, hard to customize and hard to use it in small modular parts. You either use the whole framework or nothing. Some frameworks are going modular, but they are still not as easy to use as libraries.

However, there are advantages using frameworks. Opinions are clear, there is less set-up overhead, less decision fatigue and more cross-team consistency.

The use of templates rather than core JavaScript also makes frameworks easy to use. You learn the template language rather than JavaScript, there is no confusion over JavaScript binding with the this key word. The rule of least power - less powerful languages allows the user only to use a small range of use cases. However you need to learn template specific rules.

It becomes more difficult as a result to move to other JavaScript libraries or frameworks with a template-framework approach as you have to learn the syntax from scratch as the resemblance to JavaScript is low.

A library is a loose collection of tools that you can pick and mix and offers more control for the developer. The main tool you get with React is the components. You have to then configure the testing, routing, form validation etc., of your choice so it is more like a lego set to be assembled rather than a skeleton to flesh out.

The technical term for this limitation of control is called the inversion of control - with a library the flow can be controlled by the developer with a framework the framework controls the developers work flow and coding options.

With React being JavaScript centric as a library it has no template-framework specific syntax and fewer concepts to learn as it is JavaScript. There is less code and it is easier to read if you already know JavaScript.

This makes skills transfer easier - to Node and other JavaScript-based libraries.

[More from Freecodecamp ](https://www.freecodecamp.org/news/the-difference-between-a-framework-and-a-library-bd133054023f/)
