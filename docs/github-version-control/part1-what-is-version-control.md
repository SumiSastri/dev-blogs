---
layout: default
parent: Version Control
nav_order: 8
title: What is a version control system and why do we need it?
---

# What is a version control system and why do we need it?

From the writing of code, to the final shipping of a feature to users, a code writer will experiment with different approaches to make the code work.

Each small change is a version of the previous code base. Keeping track of the minute changes is impossible but necessary.

Version control systems have been developed to manage workflows of multiple developers across distributed systems - and maybe geographies - to write versions of code that can be unifed, tested and shipped to end-users.

Once code is written, tracking its history is one part of the job. An equally important corollary is the ability to discard incorrect code, unused code, or reverting to a point in the version history of the code that is the cleanest and most usable.

## Why do code writers need a version control system?

The key reasons a version control system is required - either for a side-project as an emerging developer working on your own or for complex organisations - remain the same.

_Why version control checklist_

- Simplify code management
  - Allow experimentation before release of final version
  - Test features and code
  - Allow peer reviews to improve code
  - Allow parallel implementation of multiple features across multiple platforms
  - Allow integration at some point of all the multiple features across multiple platforms into one work stream/ workflow
  - Merge disparate branches of code (same as above)
  - Save local code to a server that can be accessed by other users
  - Increase individual and team accountability with transparent systems
  - Automate work flows making the developer experience better

- Track changes to code base - a code history
  - timestamps of code change
  - people making the change
  - library dependencies and versions

- Root cause analysis and code collision/conflict management
  - Debug code
  - Remove bugs
  - Patch and update code
  - Identify potential code collisions/ conflicts
  - Prevent code collision/ conflicts
  - Resolve code collision/ conflicts
  - Revert to an old version of code if the new version does not meet requirements
  - Update dependencies
  - Update versions of libraries and move legacy systems to newer systems

- Reference and documentation
  - Storehouse for ideas for future code - reuse of code patterns
  - Best practice hub - a reference point for collaborators
  - Cross reference resources (legacy systems to the new system)

- A safety net - experiment without fear in a branch of the code as the rest of the code is isolated from this experimentation
  - Protecting core code that is shipped to end-users in a main branch while sub-branches experimentation continues
  - Prevent data/ code loss
  - Save changes for future reference - accidental delete of code can be restored quickly
  - Restore and backups
  - Revert to the last working version of code if code breaks with a new feature

## What is the difference between local, central and distributed version control?

Local version control means code is versioned on a local machine by the individual code writer. If this system breaks, the opportunity for collaboration is limited.

Central version control means code from different local machines is versioned at a central location - a server, for example. This also comes with its challenges if the central system breaks down.

Distributed version control is a system where the whole tree of code is sharded and each code base mirrors the whole code tree.
This means, each local version mirrors the central repository and all its version history. Therefore if the central version breaks there are several copies in the system that maintain code history and recovery is so much easier.

Distributed version control is what most modern tech companies use choosing from a variety of solutions available.

## What are the different version control systems available?

This is a list with links to the resources

- [SVN by Apache](https://subversion.apache.org/)

- [TFS by Microsoft](https://learn.microsoft.com/en-us/azure/devops/repos/tfvc/what-is-tfvc?view=azure-devops#team-foundation-version-control)

- [Mercurial - open source](https://www.mercurial-scm.org/)

- [Git - now owned by Microsoft](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)

## What are the cons of using a version control system?

While version control benefits are they are fast, flexible, distributed and enhance collaboration, the downside is everyone has access with few controls.

The nature of version control is its open for distributed teams to use and collaborate, so how can you lock-down files? Everyone can change them to update code so how do you keep a version flexible yet secure?

A lot of experimentation leads to both good and bad code being pushed to branches and repositories.  Repository file sizes can get too heavy with version history and the bloat. There are work arounds like cherry-picking only the files you want in an environment, or after it is merged into a main branch. This leads to the option of shallow-cloning where not all files are pushed to the main repositories, ignore file rules can be set.

Many version control systems are not good for binary files and have to be compiled or transpiled down again to machine readable code.

The key challenge for emerging and established developers is that version control is not user friendly. It is hard to learn but easy to use which is a conundrum.

## Additional reading and resources

[Wikipedia](https://en.wikipedia.org/wiki/Version_control)