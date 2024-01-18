---
layout: default
title: What is a software dependency ?
parent: How to keep Set up Git, SSH Keys, 2FA and Signed Commits
nav_order: 9
---

# What is a software dependency

The term “dependencies” can be fundamentally defined as the files, packages, libraries, or plugins integrated into a project to implement a specific task or set of tasks. It is a modern way to leverage code from various developers, but it also creates a reliance on external code for the project to operate properly.

Applications may encounter dependency issues for the following reasons:

Utilization of third-party databases
Using external web-based services
Implementing libraries to measure app adoption
Using outdated versions of third-party libraries
Poorly implemented functionalities by inexperienced developers

https://www.crowdbotics.com/blog/how-to-ensure-that-your-dependencies-are-up-to-date

**What is a vulnerability?**

A vulnerability is a problem in a project's code that could be exploited to damage the confidentiality, integrity, or availability of the project or other projects that use its code. Vulnerabilities vary in type, severity, and method of attack.

When your code depends on a package that has a security vulnerability, this vulnerable dependency can cause a range of problems for your project or the people who use it.

Read more on:[https://docs.github.com/en/code-security/supply-chain-security/managing-vulnerabilities-in-your-projects-dependencies/about-alerts-for-vulnerable-dependencies]

**What are the key dependency types to check for vulnerabilities?**

**Direct Dependencies**

These include the direct integration of libraries or plugins within an application. In other words, they have been actually integrated into the app's code. You should avoid using different direct dependencies for the same functionality (such as multiple JSON parsing libraries).

**Transitive Dependencies or Dependency of a Dependency**

A transitive dependency is a library called by one of your direct dependencies. Conflicts originate when, for example, if Library A is dependent on version 0.1 of Library B, but your application requires version 0.2 of Library B. How can you know if Library A is compatible with version 0.2 of Library B?

It is recommended to avoid using implicit transitive dependencies and to explicitly maintain all transitive dependencies that are in use by your direct dependencies.

**Development Dependencies**

Two types of dependencies are included in package.json, one of which is devDependencies. These dependencies are only executed and consumed by files in the development phase. They can be used on remote hosts, e.g. linter packages and presets.

**Runtime Dependencies**

These include both frontend dependencies (executed in the end user's browser) and backend dependencies (running in the backend for http communication).

**Classifying Dependencies by Development Phase or SDLC(Software Development Life Cycle)**

Various types of dependencies can be classified in accordance with different phases of the development process. Read more on the SDLC on the Stackify blog [https://stackify.com/what-is-sdlc/]

Mandatory dependencies are hard logic that are built into a project's requirements during the client approval phase of development.

Discrete dependencies deal with the way a sequence is defined for two activities by developers, as there can be multiple way to define sequences between activities.

External dependencies usually do not involve the project team, while internal dependencies between two separate functions must be handled by the project team itself during development and testing phases.
