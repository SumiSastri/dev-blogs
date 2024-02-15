---
layout: default
title: What is GitHub Actions
parent: Github Actions
nav_order: 11
---

# What is GitHub Actions

GitHub Actions (GHA) allows developers to run workflows when other events happen in your repository. GHA allows developers to run workflows based on these events. An event is a specific activity in a repository that triggers a workflow run. 

For example, activity can originate from GitHub when someone creates a pull request(PR), opens an issue, or pushes a commit to a repository.

You can run a workflow to automatically add the appropriate labels whenever someone creates a new issue in your repository.

A workflow contains one or more jobs which can run in sequentially or in parallel. 

Each job will run inside its own virtual machine runner, or inside a container. The job has one or more steps that either run a script that you define or run in an action.