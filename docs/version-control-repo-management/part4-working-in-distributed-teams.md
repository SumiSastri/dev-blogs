---
layout: default
parent: GitHub Repo Management
nav_order: 10
title: Branch management in a distributed team
---

# Branch management in a distributed team

Git also helps collaboration with multiple versions of the code diverging and being updated as team members work on different aspects of the code base.

A main version keeps track of all changes from all contributors from all branches(formerly known as the master version). A branch version keeps track of the individual changes in the branch is rolled up and merged into the main version.

The main version is constantly updated by branch merges into the main version and the branch is updated will any changes from main with a `git pull` command

As another branch is added if there are conflicting versions of the code the version conflicts must be fixed before they are merged into the master of main version of the branch

`git checkout <branchname>` you will get to the branch
To merge it back into the main branch you go into the branch `git checkout main`
Merge the branch `git merge <branchname>` into the main version

This is the simple example but in a large organisation you can have multiple repos with multiple main branches that need to be integrated not at the development stage level but when all these branches are integrated and tested together to see each peice of the jigsaw works as a whole.