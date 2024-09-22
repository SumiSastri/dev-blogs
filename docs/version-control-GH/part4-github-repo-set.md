<!-- ---
layout: default
parent: GitHub and version control
nav_order: 8
title: How to setup and use a GitHub repo or repository 
---

# How to setup and use a GitHub repo or repository 

<!-- 

 Git has changed the name master for a branch main.
When linking repos it is easier to use the HTTPS key rather than the SSH key. While you need the SSH to link the repos initially to avoid the error.

```
Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```
This is a basic set up. Please read the section on [repo security](https://sumisastri.github.io/dev-blogs/github-repo-security/) to set up your repo more securely. There may be some duplication of content.


- Configure your name and email address for commits (be sure to use the email address you have registered with Github) not the email that is your personal/ office email. If you are required to setup an enterprise github with your organisation double check this step with your team lead or manager.


[This is an excellent walk through from free-code-camp](https://www.freecodecamp.org/news/git-ssh-how-to/) which you can follow to configure your local machine to sync code with your cloud-based GitHub repo.


First Check file path `git config --list --show-origin`

Your user name:
`git config --global user.name "John Doe"`

Your email:
`git config --global user.email johndoe@example.com`

Track case changes in file names:
`git config --global core.ignorecase false`

Check set up:
`git config –list`

## Global `.gitignore`

There are a few files that we don't want Git to track. We can specifically ignore them by adding the files to a global `.gitignore` file.

Create a file in your home directory called `.gitignore_global` and configure git to use it for all repos, like so:

```sh
touch ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

[The gitignore docs are a useful guideline](https://git-scm.com/docs/gitignore)

**Configure secure shell or SSH access to Github**


 -->

<!-- Repositories are created for personal side projects and for commercial organisations to maintain their code base.

- to create a new repository on the command line
  echo "# testing-with-jest" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin — **(use HTTPS url not SSH)**
  git push -u origin main

- to push an existing repository from the command line
  git remote add origin **(use HTTPS url not SSH)**
  git branch -M main
  git push -u origin main

Git workflow [https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow]

#### `.DS_Store` files

`.DS_Store` files are used by Mac OS X to store folder specific metadata information. They are different for every mac, it means that they often cause conflicts in version controlled folders.

#### `node_modules`, `bower_components` & `.sass-cache`

In the same way, we want to never track the contents of our node_modules, bower_components or .sass-cache folder as these are not part of our source code and do not need to be committed.

Open the `.gitignore_global` file in terminal

```
open .gitignore_global
```

And add the following lines:

```
.DS_Store
node_modules
.sass-cache
.env
*.log
```

**Save** and close the file.
 --> -->
