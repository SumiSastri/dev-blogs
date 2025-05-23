---
layout: default
parent:  Browser Engines
nav_order: 14
title: User interface - the life of a pixel
last_updated: June 2024
---

# User interface - the life of a pixel

The user interface (UI) in the browser needs the rendering engine to structure the content and data on the device a user uses.

It is also the interface that receives input from the user and transfers it to the browser. Devices may allow users to do this via voice commands, text commands on a key board, file uploads - which include a variety of file types. 

These files have their own file extensions - `.txt`, `.pdf`, `.mp3`, `.png`, `.mp4`, `.jpg` - are all files we are familiar with and either wish to store on our devices, the client or local machine, or in a cloud-based storage on the internet.

Each device has some specific characteristics - height, width, an x-axis, a y-axis as well as pixels on a screen.

The UI in a browser is dependent on the rendering machine to calculate and adjust design information according to these device differences. The UI layer is the last leg in the journey of a pixel from a software developers source code to the end user.

The aim of all code developers and software maintenance teams is to ensure that the last byte to pixel render is fast, or in technical terms, has alow latency. Fast renders are a sign of well-written efficient browser code and not necissarily source code written by the software developer.

The way that the UI is displayed by a browser is intensely complex as a browser has to deal with hardware as well as source code software written by developers.

Each peice of hardware - the device to display information on - has its own operating system. A browser needs to call application programming interfaces (APIs) provided by device manufacturers to display content on their devices.

The multiplicity of devices from wearables like smart watches to large smart TVs means the UI-layer is a critical consideration. Browsers need to work on this last step to ensure the rendering engine and the rendering pipeline work seamlessly across all devices.

Users are dependent on source code writers and UI designers to write and design good interfaces - this is not the job of the browser's UI layer.

The browser, on the other hand, is responsible for sending the right information to the Open Graphics Library's (OpenGL) stack of APIs.

OpenGL, is a cross-platform library that enables browsers to render graphic designs.

The process is so complex that it is really difficult to describe in a short blog, however a 42-minute video [Life of a pixel](https://www.youtube.com/watch?v=K2QHdgAKP-s) is worth watching for developers.

It breaks down the lifecyle of how source code interacts with the OpenGL library, further breaks down the source code into bytes for the hardware's GPU and CPU and then renders it as a pixel on a screen. Once the pixel is rendered, it may change and may have to be re-rendered. This in itself poses a complex sub-process. The video goes through the technical detail of each process in the UI layer and how it is dependent on the rendering engine as well as the JavaScript engine to be performant.

### Further reading and resources

- [UI design](https://aloa.co/blog/web-ui)

- [UI design best practices - BrowserStack](https://www.browserstack.com/guide/what-is-user-interface)

- [UI design - types of design interfaces](https://www.geeksforgeeks.org/user-interface-ui/)

- [Chromium University - Life of a pixel](https://www.youtube.com/watch?v=K2QHdgAKP-s)

- [OpenGL blog](https://www.geeksforgeeks.org/getting-started-with-opengl/)

- [OpenGL - about](https://www.khronos.org/opengl/)