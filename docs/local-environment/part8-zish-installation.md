---
layout: default
parent: The developer environment
nav_order: 7
title: Installing Zish
---

# Installing Zish


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



_Further reading_ and to debug your `.zshrc file` if you get errors:

- [1] If you want to override or add plugins go to [zsh plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode)

- [2] [How to install Zish](https://linuxhandbook.com/install-zsh/)
  
- [3] [How zsh files are sourced](http://zsh.sourceforge.net/Intro/intro_3.html)

- [4 - Official docs ](https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information)

- [5 - The Modern Coder](https://www.themoderncoder.com/add-git-branch-information-to-your-zsh-prompt/)

- [6 - Araaj van der Garg](https://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html)

- [7 - Sal Ferrarello blog](https://salferrarello.com/zsh-git-status-prompt/)

- [8 S. Bajaj "zsh"](https://sourabhbajaj.com/mac-setup/iTerm/zsh.html))

- [9 Geek for geeks, "The difference between a terminal, the console, a shell and the command-line-interface"](https://www.geeksforgeeks.org/difference-between-terminal-console-shell-and-command-line/)