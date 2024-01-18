---
layout: default
parent: Version Control
nav_order: 8
title: What are developer workflows and environments?
---

# What are developer workflows and environments?

As we have seen in Part 1, version control systems help software developers to write and experiment with code to develop features for a software application. To allow for parallel workflows across multiple systems, geographies and developers the code base has a root and branch structure.

The root of the branches is the final shipped software to the end user. The trunk is the workflow pipeline and the individual branches are the sections of code that individual teams and developers work on.

A branching strategy is required to orchestrate and synchronise all these different workflows, test the code and ship working code to the end user.

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

<!-- Check and dedupe -->
<!-- 
## Version control workflows

The purpose of this document is to see how version control manages the workflow pipeline. It helps teams set guidelines and enhances the developer experience across teams.

Developers set up instances of code in different environments to ensure clean code and production-ready code to ship to external clients.

1. The development environment

- The initial environment where developers code is written and peer reviewed. This is a feature driven environment where initial features are created, tested and reviewed

2. The testing environment

- Once peer review is completed and as many tests that are required at this stage of development pass, the next instance of the code is the testing environment.

This is a test-driven environment, additional tests like end-to-end testing checks code and its working with other downstream applications such as databases/ security-applications are more thoroughly tested. Bugs from this environment are sent back to the development environment for developers to fix

3. The production environment

- Once tests are completed, the code can be shipped to the servers. As the more data stored on servers increases costs all activities that are not production-ready are worked on in mocked environments (mock-servers/ mock-api calls).

This is an integration-driven environment further pre-release tests and integration to on-premise or cloud-based servers are tested. Bugs found here are returned to the testing environment or back to the development environment.

4. The staging environment

- This is the pre-release stage before the product is released to end-users.
- The feature is seen in its release form for product-owners/ clients/ teams to review and approve before the final release stage to the end user

This is an approval-driven environment. Some workflows use this as a beta-environment testing new features with a small group of users.

5. The release environment

Each development phase has its own release environment where in the development phase, the feature is released to the testing environment, in testing it is released into production and the final release phase to the end-user by going through this filtering process should be bug-free and end-user friendly.

Some development workflows have a specific end-user release environment after all approvals to ensure features that have been produced meet specifications before the final release to end user

Because the development workflow is iterative, it is important to keep track of every version of the code base as a reference point.

There are several tools to manage code work-flows.

## Git vs BitBucket

Git is the version control system from Microsoft, it integrates well with VS Code, BitBucket is another version control system. Version control managers allow you to commit your code, each version gets a ``sha``` or id or hash code that identifies each version as unique.

It helps collaborative code writing, peer reviews and maintaining an evolving code base.

BitBucket is another version control system that teams can use.

Contributing to a workflow:

### Features (new feature development)

Feature/ Ticket Number/ Short Description

### QA & Testing

- Done in a separate branch where code is pushed from develop branch
- All code must pass in develop before it goes to a QA/ Test environment with the PR process 2 pairs of eyes at least
- End-to-end failing tests in QA become defects and go back to develop with bug-fix tickets or tidies tickets with new numbers prioritised and re-assigned

### Bugfixes (fixing defects)

Naming convention
BugFix/ Bug-fix-ticket Number/ Short Description

### Tidies (tidying up code/ includes tech-debt fixes)

Naming convention
Tidy/ Tidy-ticket Number/ Short Description

### Release Testing to Deploy

- Deploy to a staging environment, the release candidates should be prioritised and discussed
- A start release sheet written
- All bugs, tidies from QA should be fixed before they come to a release branch
- This is the final e2e test before deploy
- Any defects now can be reclassified to bugfixes, tidies or hotfixes
- Only deploy team can assign a hotfix

using the instructions that you will find [here](https://github.com/i6systems/docker-kube/blob/master/docs/Deployment.md). Use as the container name the name of the tag that you just created

### Deploying to production

- deploy to production as described [here](https://github.com/i6systems/docker-kube/blob/master/docs/Deployment.md). There is no need to run any tests or build any container before deploying as we have already done this in previous steps
- Rebase the `master` branch to point to the tag that we have deployed

### HotFix (urgent bug-fix)

Naming convention
Hotfix/ HotFix-ticket Number/ Short Description

### Rollbacks

If we have deployed some code which intruduces some problems which cannot be fixed by a quick hot fix, we may need to roll back to a previous version of the code. To do so, just deploy an earlier tag by using the name of this tag in the docker kube files. There is no need to build anything as these images have already been built and stored in Docker Hub -->
