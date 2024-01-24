---
layout: default
parent: GitHub Repo Management
nav_order: 10
title: How to create, clone and fork a repo  
---

# How to create, clone and fork a repo  

When you are creating a personal project, the first thing you will need to do is back-up your work in a repo or repository that can store your code.

Since October 2020, GitHub has introduced a new method and naming convention for repos. The main repo is now called main and not master.

When you create a repo in your local environment, for example, called <my local repo> you can follow the process outlined in GitHub - paraphrased here.

- cd <my local repo> - (make sure you are in the repo created)
- git init (initialize with git)
- git add README.md/ `touch README.md` (make a readme file)
- git commit -m ”message with your commit” (make your first commit)
- git branch -m main (CREATE A NEW MAIN BRANCH TO PUSH CHANGES FROM LOCAL)
- git remote add origin — (**(use HTTPS url not SSH)**)
- git push -u origin main - (make the first push and linking remote and local repos)
(Note this replaces the old method `git push -u origin master` followed by
`git push --set-upstream origin master`)

You can also set up a repo using the GUI in GitHub and then clone that repo to your local environment.

Trouble shooting.
- If you have not linked the files remove the git initialisation `rm –rf .git` or `git remote remove`


## How to clone a repo

- When you are in GitHub and you choose a repo to clone, go to clone button copy to clip board the  clone the HTTPS version, not the SSH version of the repo
- In your local environment make a a directory to store your code - eg: dev/ side-projects
- In terminal paste the clone command you have on your clip board and select the directory you have made for the repo you are cloning when prompted
- install dependencies and run build commands as outlined in the repo's documentation (README's)
- Add a `.gitignore` so that uneccessary files are not added

_With SSH keys_
- If you need to clone the SSH version
- In terminal you will need to add your SSH key -  [git clone + sshkey]

## The difference between forking and cloning a repo

When you fork a repo, you create a copy of the repo in GitHub. You can do this with the GitHub GUI. A copy of the forked repo can be added to your repo. You can not alter a forked repo without the owner of the repo accepting the changes via a pull-request. This is a form of cloning a repo in GitHub without this being a Git version control process. There are no changes to track or git commands to run.

Cloning is a git process that creates a cloned version of the repo with the command `git clone`. In the cloned version git actions can occur.

A forked branch needs to be cloned and this becomes the main branch divorced of the original copy where changes are reflected in forked and cloned branch. 