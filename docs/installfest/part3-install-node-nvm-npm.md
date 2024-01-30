---
layout: default
parent: Installfest
nav_order: 13
title: How to install NodeJS with Node Version Manager(nvm)
---

# How to install NodeJS with Node Version Manager(nvm)

NodeJS, known as Node, is a run-time environment. This section helps you install Node with nvm, or Node Version Manager.

Node not a language but uses JavaScript syntax to run programmes outside the browsers. It is instrinsically a JavaScript engine that works on the server side - just as Spider Monkey/ V8 work browser-side.

Node is used to full stack web applications for those who prefer an end-to-end JavaScript solution architecture. Node ships with command line tools (the Node CLI) and various other tools and packages.

For more on Node I have a [Node Tutorial repo on GitHub](https://github.com/SumiSastri/nodeJs-server-side-javascript) where I have followed some Linked-in and YouTube course materials.

## What is the different between `nvm` and `npm`

Node updates are frequent. Different project may have different versions of Node installed.

This is where `nvm` is useful.

To use the Node environment, several packages or modules - known as node modules need to be installed. 

Node Package Manager, more familiarly refered to as `npm`, is used to install these modules and packages.

While `npm` is used to install packages of code that your app requires to function, `nvm` manages the version of node used in your app.

Installing Node with `nvm` is easier as it allows you to manage and upgrade Node versions. This is especially useful if you are working on multiple projects with different Node versions.

## Node pre-installation checks

In terminal run 

```sh
node --version
``` 

for the version of Node. You can also use this [Node version check link](https://www.sitepoint.com/beginners-guide-node-package-manager/) For the version of nvm, run

```sh
nvm --version
```

> **Note:** if you have installed NodeJS previously, you will have to uninstall it first. You will also need to have set up your `.zshrc` and if you are using Bash your `.bash_profile` and `.bashrc`

To install `nvm` run `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

To ensure your `nvm` installation points to Zish shell, you may have to run `source ~/.zshrc`

To debug the official docs are really easy to follow [Install nvm docs](https://github.com/nvm-sh/nvm#installing-and-updating)

You need to close the terminal and open it again after installation to check if nvm has been installed.

Once `nvm` is installed, list the available versions by typing:

```sh
nvm ls-remote
```

You can now install the latest version of Node with

```sh
nvm install Node
```
This will alias and default the latest available version of Node.

However, if you require a specific version Node you can install it and alias default it to the version required

```sh
nvm install 12
```
or 

```sh
nvm alias default 12
```

And you will be shown a list of all the available versions of Node. 

Note: If you are switching shells, each shell will require the 

- [Install Node & Node Version Manager with the GUI](https://github.com/nvm-sh/nvm#install--update-script). If you prefer to install Node and nvm separately you can use the GUI link. If you want to install Node using the terminal rather than the GUI, paste the following command for Node in your terminal. This is useful if you do not have HomeBrew or Xcode preinstalled.

```sh
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -sudo apt-get install -y nodejs
```
Once you start coding with Node as an environment or with npm to install packages that your app is dependent on for performance, you will see a directory of `node_modules` installed. If Node is part of your app's stack, you will require an dot file `.npmrc` where you pin the version of Node used in the package. You can then run `nvm use` in the project and use different versions of Node in different projects on your local machine.

**Trouble shooting with MacOS installing Node**

Depending on your shell you will need a `.bashrc` or .`zshrc`` file – if they don’t exist create them

Your system may not have a ``.bash_profile file`` where the command is set up.

Simply create one with `touch ~/.bash_profile` and run the install `nvm` script again. You might need to restart your terminal instance.

If the above doesn't fix the problem, open your run `ls -a` and then `$open .bash_profile` and add the following lines of code in the pop up window

```
export NVM_DIR=~/.nvm && source ~/.nvm/nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

Note: Make sure the two commands are on separate lines each shell will need a script so if you are shell switching both your Bash and Zish shells will need a script.

This is for the Zish `.zhrc` file

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

or if you are using oh-my-zsh

```
<!-- export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```
