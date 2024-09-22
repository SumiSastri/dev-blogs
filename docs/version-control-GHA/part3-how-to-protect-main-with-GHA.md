---
layout: default
title: How to protect your main or master branch with GitHub Actions
parent: Github Actions
nav_order: 11
---

# How to protect your main or master branch with GHA

You can configure a GHA workflow to be triggered when an event occurs in your repository, such as a PR being opened or an issue being created.

Workflows in Github refer to the process of software development and maintaining control over versions over several iterations and changes to the code base.

A workflow configures an automated process that will run one or more jobs.

To maintain this control over version control in Github, you can take actions to protect your key branches. The main branch - formerly known as the master branch, is usually is the production ready-branch. 

Additionally each branch you create can be sanitised with GHA, leading to cleaner and more efficient merges of branches into the main branch from development, integration or test environments.

These steps allow for continuous integration, of the app into the production branch and continuous delivery. CI-CD, as it is referred to, keeps the main branch ready for release on a continuous basis as well as continuous deployment. New features/ bug-fixes can be released into production and making these features available to customers as soon as they are tested and production-ready reducing time-to-market.

Workflows are defined by a `.yml` file and will run automatically, or they can be triggered manually, or at a defined schedule.

The most important branch to protect is the main branch.

- No direct changes can be made to main (best practice)
- Branches must be made from main (the first branch therefore production ready)
- Only named people can merge a branch into main (improve security)
- This can be done by clicking the `protect-this-branch` on your repository in GitHub and checking the boxes that you would like depending on what rules you want to set to protect the branch
