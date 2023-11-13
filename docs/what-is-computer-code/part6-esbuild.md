---
layout: default
title: What is ES-Build?
parent: What is computer code
nav_order: 5
---

# What is ES-Build?

ES-Build is another code builder, compiler and transpiler. It uses `go` as a base language and uses ES-6 JavaScript modules parsing them on the fly.

Webpack and Babel, reduce JavaScript files to the base CommonJS for browsers to parse. This is an additional step.

Code is bundled in 3 phases - parsing, linking, and code generation. The linking happens by hooking into code modules with the import-export key words without transpiling them. Only in the third phase is the code transpiled.

This makes the build process more performant.