---
layout: default
title: What is the difference between monoliths, microservices, monorepos and multirepos?
parent: Data infrastructures and cloud computing
nav_order: 5
---

# What is the difference between monoliths, microservices, monorepos and multirepos?

A monolith is a single program that runs the whole application. The program is responsible for maintaining authentication and authorisation (auth), access to Application Programming Interfaces (APIs), UI (User Interface) and even messaging systems like emails, notifications and alarms. All of these services are tightly coupled.

A microservice has distributed services for different components of the application. This modularises the application and your auth services could be run by one program, while UI run by another. If you have several APIs, each API could have a separate program to run the API calls. This separation of concerns could make the app more performant.

Microservices require dedicated teams, infrastructure management by infrastructure engineers.

Serverless is microservices without infrastructure management and the use of functional programming to set-up and provision servers and infrastructure.

## What is the difference between monorepos and multirepos?

A monorepo is one (mono) repository, or repo, that hosts all services needed for the app. It acts as a single source of truth and allows code sharing and code transparency.

The repo may contain several projects with different teams working on each submodule in the repo. While these projects maybe different, the relationship between these projects need not be. Indeed, well-defined relationships between these projects could make the use of monorepo make resounding sense.

A monorepo often has one single package manager - like [lerna](https://github.com/lerna/lerna?utm_source=monorepo.tools) or `pnpm` - that updates all the packages in each repo with a single command in the root repository. 

There are other tools - Bazel from google, Gradle, Nx by Nrwl and Turborepo by Vercel.

I personally have used both `lerna` and `pnpm` and have found them effective in managing related code bases with my side projects as well as at work on an enterprise level. [Here is a link to my dev blogs home page](https://sumisastri.github.io/dev-blogs/)

A multirepo (or a polyrepo) code bases distributed across different code repositories.

## Is a monorepo a monolith?

A monolith is an app with related data to this app. While a monorepo may contain a monolith, a monolith is not always in a monorepo.

A monolith can be broken up into microservices, but a monorepo can only be broken down into individual repositories. 

However, it would be a mistake to apply the use of the monorepo concept simply to colocate code. It goes back to the problem above, which is no well-defined relationship between projects in a repo.

Another way to understand a monorepo versus a monolith is to define each by what it is not. 

The opposite of a monorepo is a multirepo (or a polyrepo) and the opposite of a monolith is distributed microservices. 

Monoliths have tightly coupled code bases which can only be decoupled by distributed microservices not by polyrepos or monorepos.

A monorepo is often mistakenly thought to be a monolith - this is when code is colocated with no clear establishment of the relationship or use of such a stratgey. 

And a monolith is often broken down into polyrepos each with their own code base to decouple code. This decoupling of code is best when related code bases are still colocated without being tightly coupled.

Monorepos can solve some of the challenges faced by a polyrepo approach - inconsistent tooling, duplication of code, a lack of ease in code sharing.

The section on what [monorepo tools should provide](https://monorepo.tools/) is useful if you are planning to set up an enterprise-level monorepo.

A monorepo has constraints just as does a monolith, it is not a silver bullet. 

Version control systems like Git, and code repo hubs like GitHub, do not scale multiple repos in a monorepo particularly well. 

It is also hard for DevOps to move work along from local hosts to integration and production environments. Some of this is attitude to change rather than a true release constraint. Colocated code with clear relationships between the code bases do not mean co-dependency of the code. Each repo can have its own DevOps workflow.

A combination of monorepos and microservices could solve the challenges of monorepos as monorepos are expensive in terms of data storage. Microservices for the distribution of these data sets across microservices may be one available solution.

A monolith may have different package managers, different stacks and different sets of data configured in different ways all related to a single application. 

Colocating these packages in a monorepo may make sense in some use cases.

In general, there are no solutions without trade offs. These articles may be useful in determining how and when your use case fits a monorepo, polyrepo or monolith structure.

### Further Reading 

- [What is a monorepo](https://www.perforce.com/blog/vcs/what-monorepo)

- [Monorepo tools](https://monorepo.tools/)

- [How google uses a monorepo - case study](https://cacm.acm.org/magazines/2016/7/204032-why-google-stores-billions-of-lines-of-code-in-a-single-repository/fulltext)

- [Misconceptions on monorepos and monoliths](https://blog.nrwl.io/misconceptions-about-monorepos-monorepo-monolith-df1250d4b03c)

- [A demo of how the 3 systems work - monorepos, multirepos and monoliths](https://medium.com/@magenta2127/monorepo-vs-multi-repo-vs-monolith-7c4a5f476009)

- [Pros and cons - a blog from Medium](https://medium.com/ableneo/monorepo-pros-cons-tools-2e6f86939be1)

- [Pros and cons - thoughtworks blog](https://www.thoughtworks.com/en-us/insights/blog/agile-engineering-practices/monorepo-vs-multirepo)
