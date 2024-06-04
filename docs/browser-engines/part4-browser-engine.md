---
layout: default
parent:  Browser Engines
nav_order: 14
title: How the browser engine works
last_updated: June 2024
---

# How the browser engine works

The browser engine is sandwiched between the UI (user-interface) layer and the rendering engine.

One action performed is to capture the URL requested for the page to be displayed and this is dispatched via the network layer of the browser to the DNS to match the URL with the DNS host. Pages and resources are delivered back to the user as the browser farms this process out from the UI, or design layer, to the network layer of the architecture.

As a subset of this action, at the UI layer, the browser engine also helps the user to navigate around pages, open multiple browser tabs to view multiple sites and display error messages if pages do not load, or can't be found.

The second action it performs is to ingest the  HTML (Hyper Text Markup Language), CSS (Cascading Style Sheets) and JavaScript and dispatch the HTML to the rendering engine where the HTML source code is broken down into bytes, characters and tokens and then into a data-model called an object. This document object model or the DOM is then laid out in a tree-like formation of the DOM-tree.

The rendering engine also builds an accessibility tree that assistive devices use to parse and interpret content. The Accessibility Object Model (AOM) is a set of changes to HTML and related standards to address changes required to enable assitive devices to interpret this contet.

The (AOM) is like a semantic version of the DOM. The browser updates the accessibility tree when the DOM is updated. The accessibility tree is not modifiable by assistive technologies themselves.

Until the AOM is built, the content is not accessible to screen readers. The [Web Platform Incubator Community Group's](https://www.w3.org/community/wicg/) Github page, in the further reading section, has excellent resources which show the AOM set up and architecture.

Similary, the CSS is sent to the rendering engine to be broken into bytes. The property values in the CSS attributes are cascaded down to build the CSS-Object Model or CSS-OM. The Recalculate Style operation parses CSS, constructs the CSSOM tree, and recursively calculates computed styles. Or in other words, each node is checked for a style attribute and then the page layout is determined by the CSS style sheets.

In terms of web performance optimisation, the total time to create the CSSOM is generally less than the time it takes for one DNS lookup.

The browser rendering engine complies code first by looking at the syntax (lexical compliation).

- if it detects syntax errors, the code does not run
- if it detects JavaScript the code is sent to the JavaScript engine

The JavaScript is sent to the JavaScript engine, where a similar process of creating an Abstract Syntax Tree (AST), or another tree-like representation of the JavaScript source code is created.

The rendering engine and the JavaScript engine store this information in the data-layer or memory of the browser.

The browser engine then goes to the call stack and follows the critical render path, parsing the information to send these bytes to the computer GPU and CPU as machine readable code. 

Chrome has a great series on how Chrome works under the hood, [Part 1 of the series](https://developer.chrome.com/blog/inside-browser-part1/) explains this process in greater detail.

One confusing aspect is the meshing of how the browser engine and the rendering engine work.

Often you will find in articles on how browsers work the functions of a rendering engine, the network layer and the data layer aggregated as one blob of information.

However, the browser engine merely passes data to the rendering engine and the JavaScript engine. Once these engines convert source code into data-models and the "render tree" the browser engine then shifts this data to the computer GPU-CPU.

Similarly a URL is passed on to the network layer where the client-server model kicks in to result in users receiving the resources they requested from the internet back on their devices.

The rendering engine then displays this information on the UI and the viewport in the design layer of the browser engine.

### Further reading

- [Geek for geeks how the browser engine works](https://www.geeksforgeeks.org/web-browser-engine-definition-working/)

- [Mozilla docs](https://developer.mozilla.org/en-US/docs/Web/Performance/How_browsers_work)

- [WICG Github docs](https://wicg.github.io/aom/explainer.html#introduction)

- [Twilio blog on ASTs](https://www.twilio.com/en-us/blog/abstract-syntax-trees)