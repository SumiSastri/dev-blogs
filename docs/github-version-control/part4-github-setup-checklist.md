---
layout: default
parent: Version Control
nav_order: 8
title: Installing Git & GitHub
---

# Installing Git & GitHub

To get you started with the installation of GitHub and Git the [git guidelines are a good place to start ](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup).

**Install `git`**

To paraphrase some of the steps

[To sign up and set up an account follow the instructions on this link](https://docs.github.com/en/get-started/signing-up-for-github/signing-up-for-a-new-github-account)

There are several ways to install Git and GitHub to your local machine

1. With you computer Terminal's [command line interface (CLI)](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) - run the command
`$ sudo dnf install git-all` or `$ sudo apt install git-all`

2. You can use the [binary installer](https://sourceforge.net/projects/git-osx-installer/
)

3. Home Brew on a Mac with the command

`brew install git`

[Homebrew instructions](https://git-scm.com/download/mac)

- Quit Terminal and reopen it

- Ensure you're not using "Apple Git"

- To check in terminal type `which git` it should say `/usr/local/bin/git`

- Configure your name and email address for commits (be sure to use the email address you have registered with Github) not the email that is your personal/ office email. If you are required to setup an enterprise github with your organisation double check this step with your team lead or manager.

_Connecting the cloud-based instance of GitHub to your local machine_

To successfully use GitHub, you should be able to write code in your local machine and then send the code (push the code) to your cloud-based repo or repository. Equally, if you want to update code, you should be able to access this remote version (pull code) into your local machine again.

The two sets of code - on your local machine and the cloud back up should be sync'd by this pull-push method.

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

**Configure secure shell or SSH access to Github**

GitHub is a web-based Git repository hosting service.

It allows you to store a remote copy of your projects and all the changes (versions) you have made. 

To login to GitHub, you will need an SSH key. SSH keys are are a way to identify trusted computers, without involving passwords.

Check if you already have SSH keys on your computer. Open up your Terminal and type: `ls -al ~/.ssh`. If you get `No such file or directory` go to the next step **Generate a new SSH key**, otherwise, go to step 4 **Add your SSH Ket to Github**.

1. Generate a new SSH key by typing `ssh-keygen -t rsa -C "your_email@example.com"` SAVE THE KEY
2. You'll be prompted for a file to save the key, and a pass phrase. Press enter for both steps leaving both options blank (default name, and no pass phrase).
3. Add your new key to the ssh-agent:
   `ssh-add ~/.ssh/id_rsa`
4. Add your SSH key to GitHub by logging into Github, visiting **Account settings** and clicking **SSH keys**. Click **Add SSH key**
   It will read
   SHA256:some serialised hash + your email associated to your laptop
   You can also find it by clicking your profile image and the edit key under it in the left nav.
5. Copy your key to the clipboard with the terminal command:
   `pbcopy < ~/.ssh/id_rsa.pub`
6. In the **Title** field put something that identifies your machine, eg: **My Office Mac - Office Repo Keys** or for your personal computer **My Home computer - personal repo Keys**
7. In the **Key** field just hit <kbd>cmd</kbd> + <kbd>V</kbd> to paste the key that you created earlier - _do not add or remove and characters or whitespace to the key_
8. Click **Add key** and check everything works in the terminal by typing:
   `ssh -T git@github.com` <br>

You should see the following message:

```
Hi YOUR_NAME! You've successfully authenticated, but GitHub does not provide shell access.
```

<br>

Now that your local machine is connected to the cloud you can create a repo online or on your local machine. Git has changed the name master for a branch main.
When linking repos it is easier to use the HTTPS key rather than the SSH key. While you need the SSH to link the repos initially to avoid the error.

```
Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```
This is a basic set up. Please read the section on [repo security](https://sumisastri.github.io/dev-blogs/github-repo-security/) to set up your repo more securely. There may be some duplication of content.
