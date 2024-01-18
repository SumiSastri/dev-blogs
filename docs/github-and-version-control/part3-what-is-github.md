---
layout: default
parent: Version Control
nav_order: 8
title: What is the difference between Git and GitHub?
---

# What is the difference between Git and GitHub?

Git created by Linux to manage code versions now purchased by Microsoft. Other workflow tools are Gitlab and BitBucket.

Git is a tool that tracks changes to source code, and it's very basic. That's what it does. It tracks changes to any file actually, but it's mostly used for source code files. 

Git isn't the only version control tool around, even though it's the most popular one. 

__Code Snapshots__
Git does this by capturing snapshots of the code as it is changed.

The commands `git add <filename>` adds a file as a snapshot
The command `git add . ` adds all the files changed to the snapshot
The command `git status ` shows you the files modified but not saved
The command ` git commit ` adds the files to save to the snapshot
A commit can be a one line commit or a long commit if the change is complex

Add/Change/ Delete - the imperative is best practice when adding a line to your commit message
Adding tickets and other links in a longer commit gives the change context and helps management and maintainence of the code by multiple developers.

With the commit you get a serialised number identifying the commit/ the author of the commit and the date and time of the commit.

To check the difference between one and another commit the command `git diff` with the names of the 2 files to compare by their identifying identifier numbers.

To look at the exact version of each commit you can use the command `git checkout ` with the identifying number of the commit - you can then see the exact code in that commit

__Multiple versions of the code base__

Git also helps collaboration with multiple versions of the code diverging and being updated as team members work on different aspects of the code base.

A master version keeps track of all changes
A branch version keeps track of the individual changes in the branch
As the branch is merged into the master version the master version is updated
As another branch is added if there are conflicting versions of the code the version conflicts must be fixed before they are merged into the master of main version of the branch

`git checkout <branchname>` you will get to the branch
To merge it back into the main branch you go into the branch `git checkout main`
Merge the branch `git merge <branchname>` into the main version

This is the simple example but in a large organisation you can have multiple repos with multiple main branches that need to be integrated not at the development stage level but when all these branches are integrated and tested together to see each peice of the jigsaw works as a whole.

__What is GitHub?__


GitHub is the hub where all code is stored, reviewed. It is a public hosting site that is free for developers to host versions of their code.

Has issue tracking tools and is along with BitBucket one of the tools used to use Git.

- Understanding GitHub flow(https://guides.github.com/introduction/flow/)
- Git workflow(https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
- Git Extensions (https://git-extensions-documentation.readthedocs.io/en/latest/z_appendix.html)
  Naming convention

Git integrates well with VS Code, BitBucket is another version control system. Version control managers allow you to commit your code, each version gets a `sha` or id that identifies each version as unique.

It helps collaborative code writing, peer reviews and maitaining an evolving code base.

Repositories are created for personal side projects and for commercial organisations to maintain their code base.
