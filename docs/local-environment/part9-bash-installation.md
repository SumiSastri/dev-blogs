---
layout: default
parent: The developer environment
nav_order: 7
title: Installing Bash
---

# Installing Bash

Check if you have bash type the command to find out ```bash --version`, to find out if bash is your default shell type the command `echo $SHELL` and to change shells if you wish to use the command `chsh <shellname>`, in this case `chsh bash`.

Note that Bash may be removed from MacOS's in the future and runs a very old version of Bash if installed even on the latest ARM-chips. My computer which has the M1 chip, has `GNU bash, version 3.2.57(1)-release (arm64-apple-darwin23)` although Bash is now on version 5.

If you do not have Bash installed you can use HomeBrew to install the shell package with a Mac and WSL (Windows subsystem for Linux) for the Windows OS.

```bash
$ brew install bash-completion
```

Using the CLI type `ls -a` which is the command to list all files including dot and hidden files in your computer
if you have a `.bash_profile` type `open .bash_profile` if you do not

 `open .bash_profile` - if you do not have a `.bash_profile`


and copy and paste this code into the file

```
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
```

Close the file and restart your session

__The `.bashrc` file__

To customise your Bash shell you will need a `.bashrc` file, if you do not have one create it by running `touch .bashrc` in your terminal 

Once you've done this, you can use Bash completion by pressing the tab key twice after a command. Bash completion is a Bash function that allows you to auto complete commands or arguments by typing partially commands or arguments, then pressing the [Tab] key.

For example:

```bash
$ git [tab] [tab]
mergetool      range-diff     replace        send-email     stash          worktree
apply          bundle         clean          diff           gc             init           mv             rebase         request-pull   shortlog       status
archive        checkout
```

We use some commands so frequently that it's often helpful to setup an alias for them. You can do this with this command: `alias shortcut=long command`

Some potentially useful aliases:

```bash
# List directory contents
alias ll="ls -lh"

# Current git status
alias gs="git status"

# Undo all local changes - use with caution!
alias grh="git reset --hard"

# Change directory to the cloud project
alias cloud="cd $HOME/projects/in2plane-cloud"

# Change directory to the API V2 project
alias api="cd $HOME/projects/in2plane-api"
```

_Prettify your git logs_

You can configure the terminal to include a colourful prompt showing the current git branch next to the cursor.

Add the following to your `~/.bash_profile` and restart the session:

```
export CLICOLOR=1
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
reset=$(tput sgr0)
export PS1='\w \[\033[01;32m\]$(__git_ps1)\[$reset\] \$ '
```
