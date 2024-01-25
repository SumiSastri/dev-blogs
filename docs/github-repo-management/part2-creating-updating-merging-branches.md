---
layout: default
parent: GitHub Repo Management
nav_order: 10
title: Git, Git 'heads' and branch management
---

# Git, Git 'heads' and branch management

When Linus Torvalds created Git, he considered it nothing but a "stupid content tracker" and named it Git which in British slang means an annoying and infuriating person.

Git, to its reputation has some infuriating and annoying terminology, and performs certain content tracking tasks in its own way. 

It does benefit you greatly to understand the structure around which Git is built and how it tracks version changes. 

The section in [docs on branch management](https://git-scm.com/book/en/v2/Git-Branching-Branch-Management) is a the best resource if you get stuck.

## Git heads and the Merkle tree

A basic concept to get right is, that all commits in a Git branch are part of a Merkle tree. 

At the top or the head of the Merkle tree is the trunk or main branch (this branch was formerly called the master branch). The head of the main or original branch and is also known as the origin head.

From the main branch - or the trunk of the Merkle tree - other branches are created. Each branch that is created now has its own head of the branch or branch head.

Sub-branches created from these secondary branches then have their own branch heads.

So the main branch could be the production branch, a sub-branch a development, staging, integration or testing branch. 

You may find it useful to read this section in conjunction with [the developer workfows](https://sumisastri.github.io/dev-blogs/github-version-control/part2-dev-workflows/) section as tracking changes is part of a systematic tracking of every miniscule change through the development process.

Each sub-branch points to a branch head, the branch head may point to another branch head until all branches point to the origin head in the main branch.

To track these complex secondary and tertiary branch changes, the Merkle tree generates serialised hash-tags that uniquely identify all the changes or git commits in a branch. 

[Wikipedia has a good image and description](https://en.wikipedia.org/wiki/Merkle_tree) that really helps understanding the concept.

To change the history of a git commit means understanding how each commit fits into this tree-like structure.

## Adding, commiting, staging and pushing code changes up the Merkle tree

Typically the workflow in a branch follow these steps

1. Making changes- these changes will not be tracked if the changes are not saved
2. Saving files - files are saved in the local repo once you are confident that the changes work
3. Changes saved and staged - this is done with a `git add` command
4. You can check if your files have been staged with the `git status` command
5. Staged files committed - when you are ready to push your changed code into the version control tracking system you do this with a `git commit` and this command takes a `-m` flag where you write a commit note - why has the change been made and how does it enhance the feature
6. You can check the logs of commits at this stage
7. When you are ready to add the files in your local environment to the cloud repo your committed files can be pushed up to the branch with a `git push` command this ensures tracked and saved changes are transfered to the repository

If you followed the [steps to setting up a repository](https://sumisastri.github.io/dev-blogs/github-version-control/part5-github-repo-set/) you have already gone through the process of adding, commiting, staging and pushing code changes to the main branch by adding the `README.md` file.

The command  `git add` README.md - adds changes you have made to the branch. You then commit these changes with the command `git commit -m "your commit message"` this sends the code to a staging environment.

At this stage if you check `git status` you will see your file in the staging area. 

You can now check the log files with `git log` in your main branch you should see `commit 123ab456 (HEAD -> main, origin/main, origin/HEAD)`. The number you see in the commit is a Secure Hash Algorithm or SHA, or hashtag, that contains all the data of the commit and points to the top of the Merkle tree or the head of the branch. This is how a commit points to the head of the git branch. The commit with the hash number holds the data of the author, date and the commit message which describes what the change in the version is all about.

The final command is `git push -u origin main` which pushes your code up the branch into the head of the branch - as this is the main branch this is the `origin head`.

So when you `git add <filename>` you add your blobs in your working file into a staging area. When you `git commit -m"Commit message"` you save the blob in a log queue.

Run a `git log` and you should see the blob of data:
```
commit 123ab456
Author: YourName <your email>
Date: Fri Jan 13 15:11:26 2023 +0000
```

The number you see in the commit is a Secure Hash Algorithm or SHA, or hashtag, that contains all the data of the commit and points to the top of the Merkle tree or the head of the branch.

The main or master branch is a branch like any other made up of commits. In the case of a main branch, the sub-branches are merged into the main branch.

You can run `git log - oneline` to see your commit messages in a single line with the commit message and the serialised number that uniquely identifies it. The `oneline` flag removes the author, date and other information that is contained in the `git log` command so that you can see the key information as you build up commits in a branch.

eg:
- b4ceaa6 (HEAD -> master, origin/master, origin/HEAD) Add regex
- eec4771 Render url conditionally on submit for home page
- 0beb61d Fix radio buttons css and custom component
- c1790e4 Debug radio buttons
- 3d2fee9 Add radio buttons - initial set up

If you run `git branch` in a repo, you will see a list of branches with an asterisk against the name of the branch you are working on.

Eg:
- Feature-Create-data-table
- BugFix-Remove-logo
- Chore-Update-docs
- HotFix-Add-codes-to-db
- * Spike-Experiment-with-libraries
- Feature-Create-admin-user-form

You can also use `git branch -vv` gives you your branch version and the name of its origin head and the SHA related to the branch.

Eg:
* version-control                4ae7a1d [origin/version-control: ahead 1] Fix nav typos

Each of these branches will be merged into the main branch and each of these branches will have their own origin head.

To check your logs try these out
`git log --pretty=format:"%cn - %cd %h %s %t"` - a neater version of the log files

Check the Merkle tree `git log --pretty=format:'%h %s' --graph git log --graph --oneline --decorate --all`

Check more details of the commit `git cat-file -p HEAD` 

## Creating your first branch and sub-branch 

To create a branch off from the main branch, you use the command `git checkout -b <branch-name>` this creates a new branch. This defines your new branch, you can also use the more up to date `git switch -b` to create a branch. 

You follow the same steps to add, commit and push code to your branch. Now the branch <My-new-branch> that you have created has its own branch head and all the logs will relate to the changes made in this branch.

Your initial commit will prompt you to set your upstream when you push changes `git push - set-upstream origin <branch-name>`, so you run the command and append your branch name to this `git push --set-upstream my-new-branch` you only need to do this one to link your branch to your branch head. This branch head will then point to the main branch.

_NAMING CONVENTION FOR BRANCHES_

Naming conventions vary from organisation, to organisation but often use these variables to create branch names to manage branch merges into a complex system of interactive and distributed code.

- Type of code change
feature/
release/
hotfix/
bugfix/
test/
chore/
task/
enhancement/

- Ticket number
- Repository or workflow name - eg: Forms, ECommerce, etc.,
- Reason for the creation of the branch

eg: Forms-feature-123-add-radio-buttons

In a personal repo or side project, you can create any name of choice for your branches.

## What is an SHA and how Git uses it to track code changes

A Sha is a hash function which takes an input and produces a 160-bit (20-byte) hash value known as a message digest – typically rendered as a hexadecimal number, 40 digits long. It was designed by the United States National Security Agency, and is a U.S. Federal Information Processing Standard.

SHA-1 sometimes know as SHA-0 is deprecated/ SHA-2 and SHA-3 are now required for SSL certificates for browsers by the NIST (National Institute of Standards and Technology).

Version control systems like Git still use SHA-1 to hash versions.

As you have seen above in the log, the SHA is the commit number - `commit 123ab456`. The commits in this branch track the branch origin head and when you merge the branch into master all the changes in the branch track the master branch with its own unique SHA representing the point at which the branch origin head starts tracking the master origin head.

## Merging branches and SHAs

When you merge master into a branch, all the SHA's merged into master are merged into the branch and track the branch origin head.

To integrate these changes to the main branch you need to merge these changes. To merge changes you will checkout of your branch to the branch you want to merge code changes. The steps in this example would be

- `git checkout main`
- `git merge my-new-branch`
- `git push origin main`

You will see all the updated code and the deltas (differences between the last commit and the new commit) running as the information is hashed.

Once the algorithm is run you can push and merge code.

To go back into your working branch you simply checkout of the main branch and check in to your branch with the command `git checkout my-new-branch`

## What does a blob refer to in a git branch and how does it relate to origin head?

If the concept of git as a tree of data can be used as an analogy, then the commits are like leaves on the branch. Each leaf is a data object or a blob.

A blob is an acronym for both basic large object or a binary large object (BLOB) but is spelt as a common noun - blob and referred to as such. While many consider a commit as a file that is being committed, we are merely committing blobs of data to the data tree in the branches of the data tree.

As we have seen, at the top of every branch is the head. To attach the blob data to the branch the first commit must attach itself to the head and is set to the origin head. Each origin head is unique and at the top of the branch that the blob is attached to.

## Code snapshots an organic way to capture code as it is changed

As you can see Torvalds is actually right, it is quite an easy to understand content tracking system if you know how the Merkle tree is structured.

Git tracks code up and down the Merkle tree by capturing snapshots of the code as it is changed.

The commands `git add <filename>` adds a file as a snapshot
The command `git add . ` adds all the files changed to the snapshot
The command `git status ` shows you the files modified but not saved
The command ` git commit ` adds the files to save to the snapshot
A commit can be a one line commit or a long commit if the change is complex. With the commit you get a serialised number identifying the commit/ the author of the commit and the date and time of the commit.
All commits are merged into the branch it points to until merges work they way up to the origin-head of the main branch

_In summary_

- The head of the whole project you are tracking in a repo is set once in the main branch.

- Each data blob or commit tracks the head that the branch is tracking via a SHA algorithm that collates all the data and tracks the deltas with a hashed number.

- The main branch is exactly like any branch.

- All new branches created are merged into the master branch.

-  Each new branch has its own unique head to track changes in the sub-branch.
