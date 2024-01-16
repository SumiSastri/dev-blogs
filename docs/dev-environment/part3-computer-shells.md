---
layout: default
parent: The developer environment
nav_order: 7
title: Computer shells - Bash vs Zish
---

# Computer shells - Bash vs Zish

A shell is a very basic user interface for accessing an operating system's service. 

Two of the most popular shells, Bash and Zish both are mostly used on UNIX and Linux systems. In the UNIX world, and that includes macOS and Linux, many shell implementations have been popular in the past, like bash, the Korn shell, the C shell (seashell).

In the mid‑nineties, the UNIX world has been dominated by Bash, which is the default shell on almost every Linux and BSD system. There are exceptions, though, and one of them is macOS, which used to have Bash as the default shell but recently switched to the Zee (S) shell with the introduction of macOS Catalina.

Microsoft Windows has its own shells, which are very different from UNIX shells. You can use the Linux for (WSL) Windows Subsystem for Linux and run either Bash or the Z shell on your Windows system.

Macs ship with Bash by default. Bash stands for **'Bourne-again shell'**, referring to its objective as a free replacement for the Bourne shell which was developed by [Steven Bourne](https://en.wikipedia.org/wiki/Stephen_R._Bourne).

The Zish or `zsh` shell is considered by some Mac users to be more user friendly as it has some extra features. The American English pronunciation of Z is "zee", so Z shell rhymes with C shell, which sounds like seashell. `zsh` was also the login of the original developer Paul Falstad's Yale professor Zhong Shao.

By default the command line on a Mac is fairly unhelpful and not nearly as pleasent to work on as it can be with a few tweaks.

Most customisation happens by running commands inside a file called `.bash_profile` which is parsed every time you open a new terminal window.

This file is found in your home directory, so to edit it, run `nano ~/.bash_profile`

After making any changes you can restart your session by typing:

```bash
$ source ~/.bash_profile
```

Zish has some extra features features to make web-development easier. The American English pronunciation of Z is "zee", so Z shell rhymes with C shell, which sounds like seashell. `zsh` was also the login of the original developer Paul Falstad's Yale professor Zhong Shao.

Bash is still by far the most‑used shell in the UNIX world and unlikely to change.

The Z shell is very similar to Bash. The Z shell as a more configurable version of Bash with some extra features.

The main difference between Bash and the Z shell is not so much what you can do with them, because they are both very powerful tools that can accomplish the same things, but Zish is easier to customize and tweak, and there's a large community of people who write extensions and themes for it. 

Oh My Zsh, is a framework for customizing Zish.


**The dot files**
for zee shell

```
.zcompdump
.zsh_history
.zsh_sessions
.zshrc
```

use `open .zshrc` for example to check contents/ edit contents of the file for customisation

for bash

```
.bash_history
.bashrc
```

If you dont have a `.bashrc` or a `.zshrc` file you can create one for customizations `touch .bashrc` in your terminal to add your aliases and customisations

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

<!-- 

## Install zsh (zish/ zee-shell)


## Oh-My-Zsh (optional - can create conflicts with updates)

.zshrc (customize for more information) on your files

```
autoload -Uz compinit && compinit
autoload -Uz vcs_info

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

setopt prompt_subst

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Check me
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

```

 -->
