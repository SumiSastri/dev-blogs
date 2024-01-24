---
layout: default
parent: GitHub Repo Management
nav_order: 10
title: Git, GitHeads and Branch Management
---

# Git, GitHeads and Branch Management

Git - which in British slang means an annoying and infuriating person aka a right git-head. It also happens to be a version-control system authored by Linus Torvalds.

It is no accident, that (GIT) which politely stands for Global Information Tracker, was termed git by Torvalds as he considered it nothing but a "stupid content tracker".

For the sake of accuracy here's a link to the documentation.

Git, to its reputation has some infuriating and annoying terminology, and performs certain content tracking tasks in its own way. Setting git heads is one of them. Git heads can get detached, need to be reset - three ways hard, soft or mixed - or can be reverted instead of reset.

All a bit confusing until you learn all about git origin heads and how to attach and track them before you can detach and meddle with them.

What does origin-head mean in a git branch?
Git branches and git branch management from the git book goes into some detail on how to manage branches but I found understanding what an origin-head was difficult.
A basic concept to get right is, that all commits in a git branch are part of a Merkle Tree. Wikipedia has a good image and description that really helps understanding the concept.
A Merkle tree is made up of a series of hash-tags that uniquely identify all the commits in a branch. To change the history of a git commit means understanding how each commit fits into this tree-like structure.
At the top of each branch of the Merkle tree is the head, or origin head. If you commit and run a `git log` in your main branch you should see `commit 123ab456 (HEAD -> main, origin/main, origin/HEAD)`.
The number you see in the commit is a Secure Hash Algorithm or SHA, or hashtag, that contains all the data of the commit and points to the top of the Merkle tree or the head of the branch.
This is how a commit points to the head of the git branch. The commit with the hash number holds the data of the author, date and the commit message which describes what the change in the version is all about.
So when you `git add <filename>` you add your blobs in your working file into a staging area. When you `git commit -m"Commit message"` you save the blob in a log queue.
Run a `git log` and you should see the blob of data:
commit 123ab456
Author: YourName <your email>
Date: Fri Jan 13 15:11:26 2023 +0000
The main or master branch is a branch like any other made up of commits. In the case of a main branch, the sub-branches are merged into the main branch and these merged branches are the key commits.
If you run `git branch` in a repo, you will see a list of branches with an asterisk against the name of the branch you are working on.
Feature-Create-data-table
BugFix-Remove-logo
Chore-Update-docs
HotFix-Add-codes-to-db
* Spike-Experiment-with-libraries
Feature-Create-admin-user-form
Each of these branches will be merged into the main branch and each of these branches will have their own origin head.
What does a blob refer to in a git branch and how does it relate to origin head?
Photo Credit: UnsplashIf the concept of git as a tree of data can be used as an analogy, then the commits are like leaves on the branch. Each leaf is a data object or a blob.
A blob is an acronym for both basic large object or a binary large object (BLOB) but is spelt as a common noun - blob and referred to as such. While many consider a commit as a file that is being committed, we are merely committing blobs of data to the data tree in the branches of the data tree.
As we have seen, at the top of every branch is the head. To attach the blob data to the branch the first commit must attach itself to the head and is set to the origin head. Each origin head is unique and at the top of the branch that the blob is attached to.
Setting the origin head of each branch for the first time
When you first create or clone a repo, add and commit changes, in your first commit you need to set the origin head to track the changes in the main branch with a `$git push -u origin main`. This sets the head to origin-main (previously known as origin-master). You only need to do this one before you create other branches off the main (master) branch.
However, each new branch you create must also be connected to its unique origin head to track changes of the branch.
To set up a new branch `git checkout -b <branch-name>` defines your new branch, you can also use the more up to date `git switch -b` to create a branch. When you add and commit for the first time to this branch and push the changes you need to set the upstream origin to the new branch to track the origin head of the new branch you will get a prompt to set the upstream origin of the branch eg: `git push - set-upstream origin <branch-name>`. Once again, you only need to do it with your first commit.
The branch now tracks unique changes made in your code with the SHA or hashed algorithm. As you have seen above in the log, the SHA is the commit number - `commit 123ab456`. The commits in this branch track the branch origin head and when you merge the branch into master all the changes in the branch track the master branch with its own unique SHA representing the point at which the branch origin head starts tracking the master origin head.
When you merge master into a branch, all the SHA's merged into master are merged into the branch and track the branch origin head.
This flip-flop between the branch and master origin heads can create some challenges.
Manually setting branch origin head if the process fails
Sometimes - especially if your computer is slow, you can create a new branch with the `git checkout -b <branch-name>` command and start to add and commit code. When you push the code and you set the origin `git push - set-upstream origin <branch-name>` you find it runs through all the processes checking deltas but the final blob is not pushed to your GitHub repo.
This happens because you have not successfully checked out of the previous branch into the new branch you have created. Therefore, the branch you have created has an origin head that has not been set and GitHub is still tracking the origin head of the branch you have checked out of.
To match the new branch head with the remote branch head you will have to set the upstream manually with `git push - set-upstream origin <your branch name>:<your branch name>`. You only have to do this once.
You may get a prompt to run `git config` to automatically set your upstream branch. You can `git config - global push.autoSetupRemote true` this way you do not need to manually set the upstream branch up with each creation of a new branch.
If you wish to ignore this config option, you will need to manually attach the branch blobs to the branch origin head.
What is a SHA and what does it do in git?
A SHA is a hash function which takes an input and produces a 160-bit (20-byte) hash value known as a message digest - typically rendered as a hexadecimal number, 40 digits long. It was designed by the United States National Security Agency, and is a U.S. Federal Information Processing Standard.
SHA-1 sometimes know as SHA-0 is deprecated/ SHA-2 and SHA-3 are now required for SSL certificates for browsers by the NIST (National Institute of Standards and Technology).
Version control systems still use SHA-1 to hash versions.
Every blob has a SHA which is the serialised number that holds the commit message, author name, time and date of creation.
As you add commits and run `git log - oneline` you will see all your commit messages in a single line with the commit message and the serialised number that uniquely identifies it. The `oneline` flag removes the author, date and other information that is contained in the `git log` command so that you can see the key information
In this case there is only one branch which is origin master therefore all the commit logs you see point to the origin head of the master branch.
b4ceaa6 (HEAD -> master, origin/master, origin/HEAD) Add regex
eec4771 Conditionally render url on submit for home page
0beb61d Fixes radio buttons css and custom component
c1790e4 Debug radio buttons
3d2fee9 Add radio buttons - initial set up
db6284a Add radio buttons component to component library
6505fea Add checkbox to registration page
1d3e6a6 Refactor select filter to make it a reusable typescript component
What is a detached head in git?
Photo Credit: Mathew Schwartz on UnsplashA blob may be detached from a head - that is when you get a detached head. It can be consciously created so that you can work in a detached head.
The use of detaching a blob from the head is to pretty much remove a part of the data to experiment with it - if the experiment proves to have no value the detached head can be discarded. If the the experiment is useful, then the blob can be reattached to the branch head.
However a detached head might occur by accident. If you get an error message you need to attach the blob to a branch.
Here are 3 easy steps to fix this
Step 1:
First check out of the branch that is in headless state `git checkout <headless-state-branch>`. This will save the detached head to this branch.
Step 2:
Attach the headless blob to a branch which is tracking an origin head correctly `git checkout <branch-name-to-attach-headless-blob>` this is any branch of your choice, including main (master).
Step 3:
In this branch merge `git merge <headless-state-branch>` the headless branch now tracks the branch you have switched to, i.e. `<branch-name-to-attach-headless-blob>`.
If you do not want the code in the headless state branch instead of merging you delete the blob by `git delete <headless-state-branch>` this is a destructive command and is not recoverable.
You may want to read the chatter on StackOverflow which I personally found confusing although it made me do some root cause analysis to find out how git tracks changes.
Understanding the Merkle tree, how a commit is a blob and how a blob is attached to an origin head made it easier to understand some of the challenges with git heads.
More reading on detached heads
Circle CI
Cloud Bees

What is the difference between git reset hard, soft and mixed?
You may want to reset the head of your list of commits to a particular SHA. This can happen if you have committed code and think that some of the commits have added no value to the code base. You want to rewind to a particular point in the commit history where the code was working and more useful to continue from this point that the point you are at.
Here is some fake commit history to work with to illustrate the point.
commit 123ab456
commit 223ab446
commit 223de446
In this example at SHA `commit 223de446` you want to rewind and go back to `commit 123ab456` and you do not know whether to reset or revert…what you need to know is that there are three types of resets and a revert may be the safer option.
`git reset - mixed <SHA>` default behaviour and is same as `git reset <SHA>` if you do not specify a flag, the default behaviour when your run a `git status` the files are in working directory - the place where they would be if you ran a `git add <filename>` when you are working on code
`git reset - soft <SHA>` does not remove either tracked or untracked files, you can deal with these files manually either discarding them or keeping them in the staging directory. This is the same place after you have added the files and have the files ready for a `git commit` - the SHA is removed from the files but the files are not removed from the branch
`git reset - hard <SHA>` removes all tracked files from the branch and you will not find these files either in the working directory or staging area. Untracked files will remain in the working directory.

Resets can be a bother and it may be therefore wiser to choose a revert.
What is the difference between reset and revert in git and when to use them?
If you run `git revert <SHA>` no files are deleted unlike the reset command. Revert is often the better choice as a new SHA is created migrating all the files from the commit that you want to revert to.
In the example using the fake commit data from the if you run the command `git revert commit 123ab456` all the files in this commit will be created in a new SHA - remember the SHA is a function that creates meta data around the files that they contain.
All the blob data that you commit to a revert will be contained in the revert. The SHA function runs the new commit has the old files and a new SHA.
commit 123ab456
commit 223ab446
commit 223de446
commit 22356de44689 - - now is reverted to the information in commit 123ab456
The files (or blobs) `commit 223ab446` and `commit 223de446` will be ignored `commit 22356de44689` is created with your files from `commit 123ab456` . This blob `commit 22356de44689` continues to track your branch origin head and you can work on your files as if you have discarded the blobs `commit 223ab446` and `commit 223de446` without having to delete them.
If you run a `git diff 123ab456 22356de44689` between the old and new commit blobs you will see the changes you have made and you can push them to the branch origin head.
While this works like an amend, it does not amend the git history and is better than the `git - -amend` command. It is also better than the `git reset` command as you do not have to deal with lurking files in your working directory or staging directory or even think about whether you should be running a hard, soft or mixed reset.
What does git commit - amend do and why is git reset is the better option?
Before you push a commit, the commits are queued and batched and you can still make changes using `git commit - -amend`. For example you notice that you have written the wrong commit message when you run a log
af406b7 (HEAD -> Feature-add-new-branch) Update docs 6
0a12f1c (origin/Feature-add-new-branch) Update docs 4
You now want this commit message to read Update docs 5. When you run the `git commit - -amend-m "Update docs 5"`.
fd9b085 (HEAD -> Feature-add-new-branch) Update docs 5
0a12f1c (origin/Feature-add-new-branch) Update docs 4
You can see that this has now been amended successfully by running a `git log - -oneline` again and checking if the amend has worked. You can also use the `- -amend <filename>` flag to add a file that you may have missed out in the commit.
The amend, however changes git history - you will note the SHA - or the algorithm for the hash - is rerun and you have two different SHAs for the two separate commits.
Using amend when you are code-sharing with a large team should be used advisedly. It is ok for side projects where you are the only user of the repo making changes because it does change the history.
When you push your code to your branch origin you have created a file or blob that now tracks the branch's origin head until it is merged with the main branch. Once it is merged into the main branch, it now tracks the origin head of the main branch.
How to consciously create a detached head state?
And now I leave the best for last.
A detached head - when you get into a detached head state accidentally sounds awful and medieval. A head lopped off hanging bloody on spikes on the top of castle or fort gates comes to mind.
Actually, a detached head is not so diabolical. When it comes to git heads and a detached head can work like a code sandbox. You can use if if and when you want to refactor code.
Using `git reflog` you can check into a branch and move it to a headless state. `reflog` or reference log is a list of the logs and each commit as it is represented in its distance away from the origin head. This is serialised in numbers starting from 0, in short it is the log of when you last referenced the logs.
For example if you want to experiment in the files from the commit in `HEAD{1}` you can copy the SHA of the commit and checkout into the commit. When you run `git checkout af406b7` a fake SHA representing `HEAD{1}` you immediately get a notification that you are in the detached head state.
Photo by Mohammad Rahmani on UnsplashThe notification gives you a list of these advantages - You can look around, make experimental changes and commit them, and you can discard any commits you make in this state without impacting any branches by switching back to a branch - in effect, it works like a code sandbox.
If you do want to retain the experimental work you can create a new branch `git switch -c <new-branch-name>` - this branch will remain in the headless state unless you set the remote origin to track these changes. As we have seen earlier you can add and commit but when you push you can run the command `git push - set-upstream origin <your branch name>:<your branch name>` with this detached head to attach it to a unique origin head. Once again, you only need to do this once to track all commits in this previously headless branch. In this example what I have done is `git push - set-upstream origin backup-update-6:backup-update-6`
If you do not create a branch and track changes in this detached head state, git will garbage collect and in 30 days the changes will be permanently removed.
How to manage git heads easy if you know how
Photo Credit: Priscilla Du Preez on UnsplashAs you can see Torvalds is actually right, it is quite an easy to understand content tracking system if you know how the git head is set.
In summary
The head of the whole project you are tracking in a repo is set once in the main branch.
Each data blob or commit tracks the head that the branch is tracking via a SHA algorithm that collates all the data and tracks the deltas with a hashed number.
The main branch is exactly like any branch.
All new branches created are merged into the master branch.
Each new branch has its own unique head to track changes in the sub-branch.
Unless upstream origin head is set once, either manually or through a `git config` automatically, you have a detached head.
Detached heads are like sandboxes and can be manually re-attached to the origin.

Hopefully this helps you from head butting a git head!
In this series How to change a git branch name



## Version control workflows

Working on files

Changes made - changes untracked if the changes not saved
Changes saved and staged - changes tracked
Staged files saved into a commit - tracked changes saved
Committed files with a push - tracked and saved changes transfered to the repository

**Create a branch**
Branching off from the main branch created or cloned enables collaborative and parrallel coding for teams

- [$git pull] (get the lastest version of the branch)
- [$git checkout -b new-branch] (creates a new branch)
- [$git status] (checks the branch and working tree)
- make sure you are in `new-branch` and working tree clean
- spin up your front end and make sure unit tests are running

NAMING CONVENTION FOR BRANCHES:
Ticket-Number-feature-name-of-feature
eg: 123-feature-add-modal

feature/
release/
hotfix/
bugfix/
test/

**Working and committing from a branch**

- write/ save & test code
- $git add . (or add individual files safer)
- $git commit -m'commit message'

NAMING CONVENTION FOR COMMIT MESSAGES:
Chunk and commit frequently with good updates to track changes use short action verbs for your commit messages
Ticket-number-verb-noun
eg: '123-feture adds submit button'

- chunk commits and push a batch of commits. Push only when a good section of work is completed as it alerts the whole team

- $git push - set upstream with initial commit
- [$git checkout main-branch] (checks out of new branch into the main branch)
- $git status you should be in `main branch`
- $git pull (gets most update version of the `main branch`)
- $git checkout new-branch
- $git status you should be in the `new-branch`
- $git merge main-branch (merges the `main-branch` into the `new-branch`
- if someone else also works on your branch and you need an updated version run [$git-pull] in the branch you are working on there is no need to merge, you will get the latest version of the branch

**Useful git commands working in a branch**

[$git branch -vv] gives you branch version
[$git branch -d branch-name] delete a branch check out of remote
[$git remote prune origin] removes a non-existent branch
[$git branch —unset-upstream] removes an upstream not linked to branch
[$git pull origin remotebranch] in case local branch not set to track remote
[$git checkout origin branch name]
[$git fetch]
[$git fetch origin]
[$git merge origin master] if origin branch deleted
[git pull origin remotebranch] in case local branch not set to track remote

- deleting branches (see Medium article)
  [git fetch origin] [git merge origin master] if origin branch deleted by mistake [git branch —unset-upstream]


  