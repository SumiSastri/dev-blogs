---
layout: default
parent: The developer environment
nav_order: 7
title: Computer shells - Bash vs Zish
---

# Computer shells - Bash vs Zish

A shell a peice of software that is a basic user interface for accessing an operating system's (OS) service via the computer terminal's command line interface (CLI). Shells can be used to write a range of programming scripts from the simple to more complex operations.

A system adminstrator is the root user while the owner of the computer who writes scripts into the shell is not a super adminstrator but the regular user of the computer.

Root users can access all files in the OS, Brash and Naik (2018, ch1, "Getting started with Bash and CLI fundamentals"), advise caution for users with root privileges as these users can delte any or all critical files in an OS and "could render the system unusable or broken".[1]

Developers are regular users. [To familiarise yourself with the terminal read the previous section](https://sumisastri.github.io/dev-blogs/hardware-local-environments/part2-the-terminal/) in this series.

In the early 1960s, French computer scientist [Louis Pouzin](https://en.wikipedia.org/wiki/Louis_Pouzin) was credited for writing the first software that ressembles a modern computer shell.

Two of the most popular shells, Bash and Zish both are mostly used across the Linux/Unix ecosystems - including the Ubuntu environment, a common Linux distribution environment. In the Unix world, and that includes the Mac operating system (MacOS) and Linux, many shell implementations have been popular in the past, like Bash, the Korn shell, the C shell (seashell).

Read more about [OSs](https://sumisastri.github.io/dev-blogs/local-environment/part1-the-local-environment/) for a contextual reference.

Shell scripts allow you to, with minimal installation write scripts to automate repetitive tasks. 

In the mid‑nineties, the Unix world has been dominated by Bash, which is the default shell on almost every Linux and BSD system. There are exceptions, though, and one of them is the MacOS, which used to have Bash as the default shell but recently switched to the Z (zee in American English) shell with the introduction of MacOS Catalina. 

Zish was the login of the original developer Paul Falstad's, Yale professor Zhong Shao. Zee-shell as it rhymes with C-shell is also referrred to as the Zish to avoid confusion.

Microsoft Windows has its own shells, which are very different from Unix shells. You can use the Linux for (WSL) Windows Subsystem for Linux and run either Bash or the Zish on your Windows system.

Zish is now the default terminal for Macs replacing Bash, with the M1 chips. 

Zish is considered by some Mac users to be more user-friendly as it has some extra configuration features.

The main difference between Bash and the Zish is not so much what you can do with them, because they are both very powerful tools that can accomplish the same things, but Zish is easier to customize and tweak. There is a large community of people who write extensions and themes for Zish.

By default, the Mac CLI is considered difficult to use.

Type `echo $0` or `which zsh`
If you get the answer `/bin/zsh` then you are in the Zish shell and if you get `/bin/bash` you are in the Bash shell.

Another way to identify which shell you are in  is, you should see a `%` instead of a `$` at the terminal prompt with Zish. A root user, however, will see `#` in their terminal as a prompt.

- First check if you have a  `.bashrc` or a `.zshrc` file these are the files that you can use to customise your personal commands to customise your shell

- Using your CLI type `open .bashrc` or `open .zshrc`

If you do not have these files you can create them depending on which shell you would like to use.
I will start with Zish as it is my preferred shell.

You may find it useful to read the section on [the difference between shells and secure shells](https://sumisastri.github.io/dev-blogs/local-environment-setup/part5-secure-shells/).


## Zish

__Installing Zish__

To install Homebrew see [the section basic tooling for beginner's learning to code](https://sumisastri.github.io/dev-blogs/local-environment-setup/part3-tooling-checklist/)

If you are not in the Zish shell and do not have installed on your computer then to install Zish without Homebrew type `sudo apt install zsh git fonts-font-awesome` or type `brew install zsh` if you have already installed HomeBrew.

If you have skipped the pre-install checks please run through them again as you may avoid the next step which is entering your computer password. If you have skipped these steps, type `sudo su` and enter your password. You should see a `#` instead of the `$`. Type `echo '/usr/local/bin/zsh' >> /etc/shells` to add `zsh` into the list of allowed shells, then type `exit`. You should see the `$` sign at the prompt again. 

Type `chsh -s /usr/local/bin/zsh`, and enter your password (laptop) - you will get the shell you have changed paths for ```chsh: /usr/local/bin/zsh: non-standard shell``` change if you get this error message ``` chsh -s /bin/zsh```

Close and reopen your terminal application. This will enable `zsh` by default. You should see the `%` symbol at the prompt.

Type `echo $SHELL`. This should return `/usr/local/bin/zsh`

__The `.zshrc` file__

 Next create a `.zhhrc` file if you do not have one
 - Type `touch .zshrc` - do not forget the dot before the file as this is the file extension
 - Other dot files for Zish are

```
.zcompdump
.zsh_history
.zsh_sessions
.zshenv (the equivalent of bash_profile)

```
To check these hidden dot files type `ls -a` which is list all including hidden files in your terminal. You may also see .bash_profile.save which means you have both Zish and Bash installed and you can switch shells if you prefer Bash.

 - Now you can open the file `open .zshrc` for example to check contents/ edit contents of the file for customisation

You may find an empty file - this is in my file and you can copy and paste this and close the file.

```
# Path to your oh-my-zsh installation.
export PATH=$HOME/bin:/usr/local/bin:$PATH
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

# Change default theme
ZSH_THEME=pygmalion

# Add Plugins
plugins=(
...git
...git-commit
colorize
zsh-autosuggestions
zsh-syntax-highlighting
)

# Set up auto complete
autoload -Uz compinit && compinit


# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substituion, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info

# Enable substitution in the prompt.
setopt prompt_subst

# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info

# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red - the RPROMPT also adds info to the right
  
PROMPT='%1~ %F{red}${vcs_info_msg_0_}%f %# '
RPROMPT='${vcs_info_msg_0_}'

# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

```

Ensure there are no trailing spaces at the end of the file

__Zish customisation with Oh My Zsh (optional)__

Oh My Zsh, is a framework for customizing Zish.

Oh My Zsh is an open source, community-driven framework for managing your zsh configuration. Here is the link to the [Github](https://github.com/robbyrussell/oh-my-zsh).


Install it with the command
`sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`

The `PATH` environment variable is a colon-delimited list of directories that your shell searches through when you enter a command.

Type `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`.


- If you want to override or add plugins go to [zsh plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode)


## Bash 

Older Macs with the Intel Chip, ship with Bash by default. Bash stands for **'Bourne-again shell'**, referring to its objective as a free replacement for the Bourne shell which was developed by [Steven Bourne](https://en.wikipedia.org/wiki/Stephen_R._Bourne).

Bash is still by far the most‑used shell in the Unix world and unlikely to change.

Modern Macs may have both Zish and Bash Shells installed.

Run `nano ~/.bash_profile` and it should open up  `.bash_profile`. 

Most customisation happens by running commands inside this file which is parsed or read every time you open a new terminal window.

__Installing Bash__

If you do not have Bash installed you can use HomeBrew to install the shell package.

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

## Shell switching

You can check which shell you are using by type `echo $SHELL` in your terminal.

By default, since the upgrade to Catalina, MacOS uses Zish [see this announcement](https://support.apple.com/en-ca/HT208050). 

You can, however, change the default login shell through `chsh -s /bin/bash` or any other shells listed by running  `< /etc/shells` this lists the shell paths: /etc/shells, such as /bin/zsh, /bin/bash, /bin/csh, /bin/dash, /bin/ksh, /bin/sh, or /bin/tcsh..

You might want to switch from Bash to Zish and vice-versa. To use %zsh - if you wish to switch to any of the other paths listed replace with the file path.

``` chsh -s /bin/zsh```
``` chsh -s /bin/bash```

In some code editors like VS Code, you can select a Zish or Bash shell by clicking the chevron to the right of the terminal.

#### REFERENCES

- [1] Brash Ron & Naik Ganesh, __Bash Cookbook__, 1st edn (Packt Publishing, July 2018), chap.1, pg3 - (URL or https://doi.org/)

- [2] [How to install Zish](https://linuxhandbook.com/install-zsh/)
  
- [3] [How zsh files are sourced](http://zsh.sourceforge.net/Intro/intro_3.html)

_Further reading_ and to debug your `.zshrc file` if you get errors:

- [4 - Official docs ](https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information)

- [5 - The Modern Coder](https://www.themoderncoder.com/add-git-branch-information-to-your-zsh-prompt/)

- [6 - Araaj van der Garg](https://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html)

- [7 - Sal Ferrarello blog](https://salferrarello.com/zsh-git-status-prompt/)

- [8 S. Bajaj "zsh"](https://sourabhbajaj.com/mac-setup/iTerm/zsh.html))

- [9 Geek for geeks, "The difference between a terminal, the console, a shell and the command-line-interface"](https://www.geeksforgeeks.org/difference-between-terminal-console-shell-and-command-line/)