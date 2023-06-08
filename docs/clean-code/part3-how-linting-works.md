---
layout: default
title: How linting works
parent: Clean code
---

# How linting works

As we have seen in Part 2, linting is a programme that can be run to scan your code and keep it clean. Linting for JavaScript code and how it works - not just how it is configured - is worth a mention.

In a side-project, or an enterprise level app, you will add several Node packages to help you with the task you hope to complete. Each of these packages are written by different code writers, to different rules.

While these packages are maintained by the code writers, they are often upgraded, patches added and therefore, you will also need to manage the packages you have used in your code base regularly.

Besides checking style, linters are also excellent tools for finding certain classes of bugs and code inconsistencies that may cause a code run to fail. You can find this out before the code runs and compiles and fix it. However, it is not a silver bullet and you may not be able to fix all problems using a lint.

Tests, other style check tools can, and should, be used with a linter.

## ESLint for JavaScript

There are different [style-guides and rules](https://xkcd.com/1513/) for ES Lint, the [airbnb guide](https://www.npmjs.com/package/eslint-config-airbnb) is most often used for React projects. Kwabena Boadu has a great guide to [set-up ES Lint with airbnb's style guide](https://biblicalph.github.io/journal/linting-with-eslint-airbnb-and-prettier.html). 

It's worth reading the style guides your organisation sets out and if you need to write in some overides or make tweaks for your project - for example some style guides can be very strict and some packages methods may fail linting. With the `Formik` form library for React, the use of the spread operator, essential to run some methods in the package, fail the Air-BNB style guide rules.

Monoliths and monorepos have different ways of configuring ES Lint. A monolith, is a repo that refers to packages and APIs outside the repo for its functioning. A monorepo hosts all packages that it depends on within the same repo. An uber-package manager like `pnpm` or `lerna` are popular package managers for monorepos.

