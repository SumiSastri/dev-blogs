---
layout: default
title: What is the difference between code transpiling, compiling and code bundling?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Feb 2024
---


## What is a code interpretor?

## What is code compiling?

## What is code transpiling?

Transpiling is a further process once code has been compiled to re-compiling the code from one language or code format into another code format or language. You can think of it as a translation service of one code format to another.

When Byte code is compiled down to machine readable code, for example, a process of compiling and transpiling is taking place.

Compilation from source code and transpilation into machine readable code.

## What is code bundling?

Code bundlers automate certain processes required for the code to be interpreted by code interpretors.

Some of the functions the bundlers under take are 
- to standardise code 
- clean up traceable errors
- handle any expensive and inefficient tasks reducing the compute load on hardware

- split and chunk code into smaller, more easily loadable parcels containing - code, images and other assets - bundlers must have the ability to bundle different modules/ packages/ code together efficiently

- trace code back to the source files and providing source maps - this helps in the development environment with root-cause analysis and debugging

- extend basic functionality through plugins

- bundle code for development, integration and production environments - in development source-code mapping is more important while in production minification and concatenation are more important. Minification is the process which a code bundler removes all white spaces, as well as unecessary code to make the file size smaller/lighter and more performant. Concatenation is the process where one or more files are combined together once again to make the code more performant

## What is code patching?

## What is the difference between interpreting, compiling, transpiling and bundling?

## What is a code package?

## What is code package management?
Code package management is a part of maintaining your code base and ensuring code packages used are updated on a regular basis.

When code packages are updated, they may or may not be backwards compatible and may generate breaking changes.

These changes have to be managed to ensure code failures are stopped before they are published or released.

Code in the packages a developer writes will have to be rewritten to the new syntax and norms of the new version of the upgraded package.

Often, packages that are out of date offer no long-term support and issues that you face will not be addressed by the package publisher.

This constant updating of packages with new features takes a significant amount of time for developers but is a core part of writing and maintaining code bases.

