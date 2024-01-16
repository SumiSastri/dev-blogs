---
layout: default
parent: The developer environment
nav_order: 7
title: Computer shells and shell switching
---

# Computer shells and shell switching

A shell is a very basic user interface for accessing an operating system's service. There are 2 main types of shells - Bash and Zish.

Bash stands for **'Bourne-again shell'**, referring to its objective as a free replacement for the Bourne shell which was developed by [Steven Bourne](https://en.wikipedia.org/wiki/Stephen_R._Bourne). Macs usually have bash shells pre-installed.

The Zish shell or `zsh` is considered by some Mac users to be more user friendly as it has some extra features. The American English pronunciation of Z is "zee", so Z shell rhymes with C shell, which sounds like seashell. `zsh` was also the login of the original developer Paul Falstad's Yale professor Zhong Shao.

By default the command line on a Mac is fairly unhelpful and not nearly as pleasent to work on as it can be with a few tweaks.

Most customisation happens by running commands inside a file called `.bash_profile` which is parsed every time you open a new terminal window.

This file is found in your home directory, so to edit it, run `nano ~/.bash_profile`

After making any changes you can restart your session by typing:

```bash
$ source ~/.bash_profile
```

## Bash 

Bash completion is a bash function that allows you to auto complete commands or arguments by typing partially commands or arguments, then pressing the [Tab] key.

### Installation

```bash
$ brew install bash-completion
```

You will need to add the following to your `~/.bash_profile` then restart your session - from command line or

open .bash_profile (copy and paste the code below)

```
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
```

### Usage

Once you've done this, you can use bash completion by pressing the tab key twice after a command. For example:

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

## Zish

1. Type `brew install zsh`.
2. Type `zsh`. You will see a list of options. Type `0` to create a `~/.zshrc` file.
3. You should see a `%` instead of a `$` at the terminal prompt. Type `exit` and you should see the `$` again.
4. Type `which zsh` to determine where your new shell has installed. It should say `/usr/local/bin/zsh`
5. Type `sudo su` and enter your password. You should see a `#` instead of the `$` at the terminal prompt
6. Type `echo '/usr/local/bin/zsh' >> /etc/shells` to add `zsh` into the list of allowed shells, then type `exit`. You should see the `$` sign at the prompt again.
6. Type `chsh -s /usr/local/bin/zsh`, and enter your password (laptop) - you will get the shell you have changed paths for ```chsh: /usr/local/bin/zsh: non-standard shell``` change if you get this error message ``` chsh -s /bin/zsh```
7. Close and reopen your terminal application. This will enable `zsh` by default. You should see the `%` symbol at the prompt.
7. Type `echo $SHELL`. This should return `/usr/local/bin/zsh`.

<br>

## Oh-My-Zsh (optional)

Oh My Zsh is an open source, community-driven framework for managing your zsh configuration. Here is the link to the [Github](https://github.com/robbyrussell/oh-my-zsh).

The `PATH` environment variable is a colon-delimited list of directories that your shell searches through when you enter a command.

1. Type `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`.
2. Open the `.zshrc` file by typing `code. ~/.zshrc`
3. Find the line `# export PATH=$HOME/bin:/usr/local/bin:$PATH` It's right at the top of the file.
4. Remove the `#` and the space at the start. This sets the right path
5. Save the file and quit Atom.
6. Close your terminal and open a new one.

<br>

## Shell switching

You can check which shell you are using by type `echo $SHELL` in your terminal.

By default, macOS Catalina uses zsh as the default login shell (see this announcement[https://support.apple.com/en-ca/HT208050]). 

You can, however, change the default login shell through `chsh -s /bin/bash` or any other shells listed by running  `< /etc/shells` this lists the shell paths: /etc/shells, such as /bin/zsh, /bin/bash, /bin/csh, /bin/dash, /bin/ksh, /bin/sh, or /bin/tcsh..

To test script compatibility with Bourne-compatible shells in macOS Catalina, you can change /var/select/sh to /bin/bash, /bin/dash, or /bin/zsh. If you change /var/select/sh to a shell other than bash, be aware that scripts that make use of bashisms may not work properly.

zsh can be made to emulate sh by executing the command ```zsh --emulate sh```.

You might want to switch from $bash to %zsh and vice-versa. To use %zsh - if you wish to switch to any of the other paths listed replace with the file path.

``` chsh -s /bin/zsh```
``` chsh -s /bin/sh```
``` chsh -s /bin/bash```


[PluralSight](https://app.pluralsight.com/course-player?courseId=29e8d875-9af9-4018-9362-1b94d3e1e049)

