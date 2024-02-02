---
layout: default
parent: Installfest
nav_order: 14
title: How to install HomeBrew on a Mac
---

# How to install HomeBrew on a Mac

Homebrew is a package manager for Mac OSX. Packages are bundles of source code distributed by developers of software, which can be compiled and installed on your machine.

You can install both Xcode and Homebrew with one command. I personally do not have HomeBrew but do have XCode CLI.

```
xcode-select --install && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

If this does not work

1. Go to the documentation [https://docs.brew.sh/Installation]

`mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew`

Copy and paste the following command into the terminal, then hit enter

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. Press `enter` at the prompt, and enter your password (laptop access)
3. Once installation has finished type `brew doctor`. It should say `Your system is ready to brew.` If not check with dev team
4. Update Homebrew: `brew update`

OR
git clone `git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew`
Make a directory to hold the cloned file `mkdir ~/.linuxbrew/bin`
Then run the comand `ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin`
Followed by `eval $(~/.linuxbrew/bin/brew shellenv)`
Check with `brew doctor`
Test with `brew install hello`

This will install it in your Bash shell

Subprocess:
If you are using bash, create a .bash_profile file `$touch .bash_profle` and add the code so that files are sourced in this order once you install Homebrew and nvm

```
export NVM_DIR=~/.nvm && source ~/.nvm/nvm.sh

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
```

For more reading[https://www.cyberciti.biz/faq/change-bash-profile/] & [https://shellzero.wordpress.com/tag/bash_profile/]

if you are using zsh, create a `.zshrc` file `$touch .zshrc`

If you want to read more on how zsh files are sourced [http://zsh.sourceforge.net/Intro/intro_3.html]

General reading on source files [https://en.wikipedia.org/wiki/Dot_(command)#Source]

Add this code to the .zshrc file

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.linuxbrew/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/YourUserName/.oh-my-zsh"
```

[Trouble shooting official docs](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/#troubleshoot-brew)
