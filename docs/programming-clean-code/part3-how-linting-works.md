---
layout: default
title: How linting works
parent: Clean code
nav_order: 12
---

# How linting works

Linting removes fluff from fabrics. That is the original use of the term when threads come off the surface of cloth and you remove them with a linter. This was done for 2 reasons - lint inhaled by workers in a factory resulted in respiratory challenges and artificially inflated the weight of the cloth. Lint had to be removed to clean and pare down the cotton to its real intrisinc value in terms of commercial sales as well as prevent workers from being impacted by the fluff flying around.

Code linting was created by a computer scientist at Bell Labs, in the United States, for pretty much similar reasons. Stephen C Johnson, used the term linting code as a linter could trap the bad code and leave it out of the code base while letting the best value code pass through.

He split code into algorithms that caught the bad code, then the good code that was written then passed through. More of the history of linting can be found on [Wikipedia](https://en.wikipedia.org/wiki/Lint_(software)).

Do read the references where there is a fascinating bio of Johnson, who was not a computer scientist but a mathematician. 

It makes reading his original paper a pleasure - some extracts from the 12-page document below.

## From Johnson's original white paper on linting

In his [original paper](https://web.archive.org/web/20220123141016/https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.56.1841&rep=rep1&type=pdf), on why he created a linting package, Johnson says "Lint is a command which examines C source programs, detecting a number of bugs and obscurities. It enforces the type rules of C more strictly than the C compilers. It may also be used to enforce a number of portability restrictions involved in moving programs between different machines and/or operating systems. Another option detects a number of wasteful, or error prone, constructions which nevertheless are, strictly speaking, legal. Lint accepts multiple input files and library specifications, and checks them for consistency."

The paper has a wealth of information and is written so well that if you have ever (or never) used a code linter, you will understand the philosophy and constraints of linting far better than I can every describe - it is a read worth investing in.

One of my pet peeves on linting was how strict the rules are. Johnson, refers to this in his paper. The example he uses is a number being converted to a character - possible in JavaScript where 1 or one can be used interchangeably and the program will still run.

"The programmer obviously has a strong motivation for doing this, and has clearly signaled his intentions. It seems harsh for lint continue to complain about this." he says, "On the other hand, if this code is moved to another machine, such code should be looked at carefully."

The motivation for linting, therefore arose to make code portable across multiple systems and devices and correcting kinks that may otherwise pass through and block the performance of the software that has been written.

Understanding this motivation behind the creation of linting, significantly helps the radical acceptance of linting as a tool that helps and defends, rather than blocks and annoys.

One of the joys of the paper is the sense of humour, and frustration Johnson expresses for the reasons behind his need for a linter ... "(for various stupid reasons!)" - he says, code can be written badly and this "causes fatal conflicts which prevent the proper operation of the program".

He created a program for linting therefore to detect as many code discrepancies possible.

## Shut the lint up

Johnson, in his imitable way, has a section called "shutting lint up" as he says "There are occasions when the programmer is smarter than lint... Some way of communicating with lint, typically to shut it up, is desirable."

The challenge with lint overrides - a more polite term for shutting your lint up - is a lack of clarity on how to do this with your existing linter. Linters work on certain key word commands and new keywords may not be recognised by code compilers. If you see lint overrides, they still follow the same principles set out in Johnson's paper - they take the form of comments, which require minimal preprocessor changes.

"The preprocessor just had to agree to pass comments through to its output, instead of deleting them as had been previously done. Thus, lint directives are invisible to the compilers, and the effect on systems with the older preprocessors is merely that the lint directives don’t work," the paper says.

## Lint override strategies

To override your linter commands, it requires a team to discuss which rules should be ignored and how. Style-guides, like airbnb's linting guide for React, prepackages these rules for you.

In Part 2, of this series - the ES Lint config for the code editor, Atom - is the config we used when I was at bootcamp with [GA](https://generalassemb.ly/) and enforces, what GA believed were good styling guiderails for a linter.

Besides checking style, linters are also excellent tools for finding certain classes of bugs and code inconsistencies that may cause a code run to fail.

You can find this out before the code runs and compiles and fix it. However, it is not a silver bullet and you may not be able to fix all problems using a lint. Test other tools than can, and should, be used with a linter as it is not a fail-safe method to catch all code smells.

## ES Lint for JavaScript

There are different linters for JavaScript, but ES Lint has proved to be very popular as it is more easily configurable. [The Codecampus](https://www.thecodecampus.de/blog/eslint-customizable-javascript-linting-tool-1/) has a good article on why it believes ES Lint to be a better linter for JavaScript compared to other options in the market.

The [airbnb guide](https://www.npmjs.com/package/eslint-config-airbnb) is most often used for React projects as it pre-writes some rules for linting with the React component library.

Kwabena Boadu has a great guide to [set-up ES Lint with airbnb's style guide](https://biblicalph.github.io/journal/linting-with-eslint-airbnb-and-prettier.html).

Style guides can be opinionated and vary - this is an example of an opionated guide - [The Arcanist user guide - lint](https://secure.phabricator.com/book/phabricator/article/arcanist_lint/), but reading them always gives you another perspective and challenges your own ways of thinking, opening you out to possibilities that you may not have considered.

Many organisations will write in some overrides or make tweaks to prefab style-guides like airbnb. Some style guides can be very strict and some packages methods may fail linting. For example, with the `Formik` form library for React, the use of the spread operator, essential to run some methods in the package, fail the airbnb style guide rules.

Another point worth bearing in mind is your repo structure. Monoliths and monorepos have different ways of configuring ES Lint. A monolith, is a repo that refers to packages and application programming interfaces (APIs) outside the repo for its functioning. A monorepo hosts all packages that it depends on within the same repo. An uber-package manager like `pnpm` or `lerna` are popular package managers for JavaScript monorepos that use [npm packages](https://www.npmjs.com/).

Whether you are working on a side-project, or an enterprise level app, you will add several `npm` packages to help you with the task you hope to complete. Each of these packages are written by different code writers, to different rules.

While these packages are maintained by the code writers, they are often upgraded, patches added and therefore, you will also need to manage the packages you have used in your code base regularly.

Do take [style-guides and rules](https://xkcd.com/1513/) seriously and save the blushes :-)

Here's a good link to help you understand why [linting is a friend not foe](https://www.thecodecampus.de/blog/eslint-customizable-javascript-linting-tool-1/).
