---
layout: default
parent: Software version control systems
nav_order: 9
title: What is a branching strategy?
---

# What is a branching strategy?

As we have seen in Part 1, version control systems help software developers to write and experiment with code to develop features for a software application. To allow for parallel workflows across multiple systems, geographies and developers the code base has a root and branch structure.

The root of the branches is the final shipped software to the end user. The trunk is the workflow pipeline and the individual branches are the sections of code that individual teams and developers work on.

A branching strategy is required to orchestrate and synchronise all these different workflows, test the code and ship working code to the end user.

## What are developer workflows and environments?

A large organisation will usually set out 3-4 main branches that form the trunk of the workflow tree. Each stage is a refining stage of the code. As with physical products, code also goes through a refining process.

Take the case of sugar, for example. When harvested the first stage of refinement is to rid the molasses of mud, plant matter and process it into a dark liquid form.

The second stage of refinement is transform the liquid into crystals and standardise them to the International Commission for Uniform Methods of Sugar Analysis [ICUMSA](https://www.icumsa.org/) values. The Icumsa values range 0-1000 degrees, which represent the angle at which light enters a sugar crystal. The lower the number the higher the quality of sugar.

The refinement process of sugar then goes through stages to refine sugar down to 25- 45 Icumsa a standard required for commodities trading.

Similarly code refinement is a big seive through which code writers send code to be refined so that the end product can be sold effectively with minimum after-sales challenges by organisations.

The key refinement stages are called environments. Each environment is an instance of the final code that is shipped to the end user.

Developer workflows are divided into these environments - and may vary from organisation to organisation, depending on the workflow strategy employed.

## What happens in the development or dev environment?

The development (dev) environment, where features are written, tested and merged into the next workflow environment. At this stage bugs are caught, code is refactored and a senior or lead-developer is responsible for code contribution and the quality of the code that is to be merged into the next phase of development.

A dev environment will have a contribution and branching strategy set out by the team lead, or harmonised across an organisation depending on how best-practices are cascaded down the teams.

As a code writer, you will pick up a ticket, write code, get code reviewed and passed and either merge this code into the dev main branch, or a dev-ops engineer will cherry-pick code blocks to add into the main branch to keep the code pipeline light and performant.

## What happens in the integration or int environment?

Once the development environment features have been peer-reviewed, a developer (sometimes known as a dev-ops engineer) will merge the changes into a main branch. This main branch is merged into the integration (int) environment.

Additional refinement in the shape of end-to-end tests and other performance tests are conducted. Sometimes the int environment is referred to as the testing environment.

Developers may write the tests in the dev environment and they are run in the int environment alongside other more robust testing techniques.

If tests do not pass, then the code may be reviewed again and sent back to the dev environment where bugs are fixed or code quality improved to enhance the robustness of the code that is passing through the int environment.

## What happens in the staging environment?

In a workflow strategy, a staging environment is the next logical branch to merge code from the int environment. Once code quality checks are passed by QA (quality analysis) engineers, then the code is merge into  the staging environment.

The staging environment may now have more data visibility to the engineers who are looking at the code quality, security tests and infrastructure testing may happen here and even beta-users - a chosen group of end-users - are invited to test out the semi-ready product and provide feedback before the software package, improvements and new features are released.

Here more robust testing of security/ api-calls and other risks are managed and where bugs are found returned to int or dev environments to ensure a fully tested and secure feature is released.

In product development, some hypothesis may be revalidated or if they are not valid improvements to the original features suggested and the feature re-development, tweaks may be suggested and new code written in the dev environment.

## What happens in the production or prod environment?

After beta-tests and staging tests have been conducted, if the feature is fully approved and working as expected a production environment is created with another set of QAs reviewing the code.

Once the code is up to standard, a release date is set and the feature is released.

This process, like with sugar process, is a slow refinement of the code. The top of the funnel (dev) the code is at its rawest state and and the end of the process (release) where it is at its most refined state.

## Branching strategies through the software development workflow?

As you can see a significant amount of collaboration is required to refine code. Branches of code must be orchestrated at every stage of development and tested so that the final code is of a high quality and meets quality standards of the organisation.

Branches are often updated by fetching code from an upstream branch and merging - the two code bases can be of different quality. The upstream branch has the cleaner code, the downstream branch where features are written still untested.

Keeping environments, packages and library dependencies in sync require some thought and planning so that the code development process is smooth and bug-free.

Branching strategies will vary from organisation to organisation and best-practices that are followed will also vary. Following clear guidelines prevent code collison (code conflicts) as branches often go out of sync. Code then has to be reverted, rebased or deleted. 

Each version control system will have different methodologies to help you rewind, re-write, revise code so that branches remain in sync in the environment you are working on so that the code you pass to the next environment is of a quality that can be accepted (merged) into the next environment.

Clean code principles and other development best practices and developer tools are used to manage this process. Version control systems form a fundamental part of an organisations branching strategy.
