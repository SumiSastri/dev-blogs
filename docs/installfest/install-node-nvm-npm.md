## Node

Node is a run-time environment. It is not a language but uses JavaScript syntax to run programmes outside the browsers. It is instrinsically a JavaScript engine that works on the server side - just as Spider Monkey/ V8 work browser-side.

Node is used to full stack web applications for those who prefer an end-to-end JavaScript solution architectuore. Node ships with command line tools and various other tools and packages.

Node updates are frequent. Different project may have different versions of node installed.

This is where `nvm` or Node Version Manager is useful.

To use the Node environment, several packages or modules - known as Node Modules need to be installed. Node package manager is used to install these modules and packages.

# Node Version Manager vs Node Package Manager

To flip between different versions of the packages, `nvm` is installed. `nvm`(MacOS) or `nvm-windows` (WindowsOS)

- [Node Version Manager](https://github.com/nvm-sh/nvm#install--update-script)

> **Note:** if you have installed NodeJS previously, you will have to uninstall it first. Having node and npm already installed doesn't matter. However, installing node with `nvm` which allows us to easily manage and upgrade our node version.

**Install and use `nvm`**

Node is installed in the terminal as a global installation on your operating system.

Open a terminal window MacOS(spacebar + enter) / Windows (go to start and find the terminal)

In the terminal paste the following command for node

```
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -sudo apt-get install -y nodejs
```

Install NVM [https://github.com/nvm-sh/nvm#installing-and-updating]

In terminal `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

You need to close the terminal and open it again after installation to check

node --version
nvm --version

Once you do this you can run the script

`nvm use` which will use the existing NodeJS version in your project.

**Get the latest version of node with an alias**

```
nvm alias default 12
```

or

```
nvm install 12
```

Once `nvm` is installed, list the available versions by typing:

```sh
nvm ls-remote
```

And you will be shown a list of all the available versions of node.js. Install the latest version. At the time of writing that was `v12`.

If you type:

```sh
node --version
```

You should see the last version number that you've installed.

**Trouble shooting with MacOS installing Node**

Your system may not have a [.bash_profile file] where the command is set up.
Simply create one with `touch ~/.bash_profile` and run the install script again
You might need to restart your terminal instance.

Try opening a new tab/window in your terminal and retry.
If the above doesn't fix the problem, open your run `ls -a` and then `$open .bash_profile` and add the following lines of code in the pop up window

```
export NVM_DIR=~/.nvm && source ~/.nvm/nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

Note: Make sure the two commands are on separate lines (if you have installed Homebrew this is already notated in the subprocess)

**This loads nvm bash_completion**

For zsh - create a .zshrc

Depending on your shell add to the .bashrc or .zshrc file – if they don’t exist create one

```
autoload -Uz compinit && compinit
autoload -Uz vcs_info

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

setopt prompt_subst

RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '

zstyle ':vcs_info:git:*' formats '%b'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

<!-- or for oh my zsh -->
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

```

file (follow the subprocess in the Homebrew section)

In your project now you can use `npm install -y` which will set up a `package.json` file that stores the dependencies you have used in your repository.

**This loads nvm bash_completion**

# Node scripts

`npm` scripts they are a lightweight, easy to learn alternative to Grunt, Gulp, Webpack, etc. They are actually part of the `package.json` file. The `scripts` object holds the key-value pair of the key scripts that can be run to build out your front-end browser-based app.

They are like a batch file or a bash script, depending on your operating system. One of their key advantages is they will run the local version of an `npm` module you have installed for your project without providing a path. The program goes to the `node_modules` folder.

If you use the CLI - `npm run scripts` runs these scripts and builds your front-end. To run tests from your repo `npm run test`.

Should there be a compile time error then an error is thrown in the console with the reason why the script failed and where. The errors are written to the console as Node works outside the browser, so a `console.log()` command will log what you want to see in the CLI and not necissarily in the google browser console.

Gulp/ Grunt/ Webpack are all front-end build tools that have more specialised scripts and features that help front-end production-ready builds.

Grunt was the first (therefore has first mover advantage over other build tools) task runner that automated the process of chunking, bundling, compiling and transpiling front-end code ready for production and deployment.

Webpack and Browserify are bundlers and module loaders.

The build can be done manually but a combination of these pre-packaged tools make it so much easier to create a production-ready/ deployment-ready package for servers like Heroku/ AWS/ Azure/ Google Cloud to parse and display content on the browser.
