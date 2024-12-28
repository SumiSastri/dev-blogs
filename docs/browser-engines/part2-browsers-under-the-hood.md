---
layout: default
parent:  Browser Engines
nav_order: 13
title: Browsers under the hood
last_updated: June 2024
---

# Browsers under the hood

Browsers are complex interfaces between users and the internet. This section merely outlines the key components of the browser infrastructure.

The first part of the infrastructure is data that persists across every layer of the browser infrastructure.  

Cookies are a form of data that captures browsing behaviour when a user enters a site - an action known as a session. Persistent data can be stored in a cache which may need to be cleared to remove this data from the browser.

The first layer of the web is the __user interface__ (UI) or the design layer. The UI is the fixed space that the user has to view information - the viewport of a desktop, laptop, mobile phone, gaming console or wearable device. A browser interacts with the device screens to render pixels of information to be viewed. A good user experience (UX) is dependent on good UXD (user experience design), which is the art of helping the user navigate through pages and find the information they need quickly.

To display this information to the user, the browser has a __rendering engine__ which displays the page structure - the  HTML (Hyper Text Markup Language) and then paints on the colours and layout from the CSS (Cascading Style Sheets) files. 

Sandwiched between the UI and the rendering engine, is the __browser engine__ that decontructs the information in the UI and ensures the rendering engine does its job of structuring and painting the page.

The __JavaScript engine__, does the work of compiling, transpiling and interpreting source code from developers into machine readable code.

The design layer and the data layer are also interconnected to the the network layer where the __networking__ operations of the browser are executed with application protocol interfaces (APIs).

The information is stored in the __UI backend__ and sent onwards to backend infrastructures via the cloud or via the network calls in the browsers networking layer.

### Further reading and resources

- [A simple guide to how browsers work - blog](https://www.liveabout.com/what-is-internet-browser-892819)

- [Web dev - how browsers work](https://web.dev/articles/howbrowserswork)

- [Hitesh Choudhary- how browsers work on You Tube](https://www.youtube.com/watch?v=5rLFYtXHo9s&t=31s)