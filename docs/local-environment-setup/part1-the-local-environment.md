---
layout: default
title: Your computer - the local environment
parent: The developer environment
nav_order: 7
---
# Your computer - the local environment

You computer is a synonym for a developer's local environment. Setting up  your computer with the right tools to help  you code helps you link your computer to cloud based systems like GitHub, where you code may reside, as well as cloud based data-infrastructures that host your software packages.

## Some pre-install checks for a Mac

1. Identify which version of your Mac's Operating System you're using - ideally you should have Mojave or higher - click the apple icon on the left nav bar and check the "About this Mac" tab to find which OS you are on

2. Ensure that you've uninstalled any anti-virus software you may have, as it can prevent some of the tools from installing properly - if you are working in a team, ask your tech lead if you are unsure. You can reinstall you anti-virus after you have installed all the tools you require.

3. The terminal is a Command Line Interface (CLI) that allows you to interact directly with your laptop's operating system. You can use it to run programmes, manage files and folders and install software. To open the terminal use <kbd>cmd</kbd> + <kbd>space</kbd>, then type Terminal and <kbd>enter</kbd>
You can [read Part 2 for a more detailed view of how your terminal works](https://sumisastri.github.io/dev-blogs/dev-environment/part2-the-terminal/)

4. HomeBrew is a package manager which helps you install external software packages on your Mac - in terminal type `brew doctor` to see if Homebrew has already been installed.

5. Node is a JavaScript environment that you will need if you are developing through the stack with JavaScript or TypeScript - in terminal type ```node --version``` to see if Node is pre-installed (ask your dev team lead to uninstall  node if it has been installed)

- [Node version check](https://www.sitepoint.com/beginners-guide-node-package-manager/)
- `which node` or  `node --version` for the version of node
- `which npm` or  `npm --version` for the version of node package manager
- `npm install npm@latest -g` - update node packages ONLY FOR MACs with the latest version of npm

6. Git which is a version control system should be preinstalled check by typing in terminal ```git --version```

7. Speed up your cursor - By default, the speed of the cursor on a Mac is a little too slow. Let's increase the speed of the cursor by going to:

```
System Preferences > Keyboard
```

- Set Key Repeat to `Fast` and Delay Util Repeat to `Short`, then close the Preferences panel.

8. Check if you have [Xcode installed](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)

9. Vim in the default text editor in a Mac, many developers prefer to use vim instead of code editors and integrated development environments (IDE's)

10. Check your computer shell - a shell is a very basic user interface for accessing an operating system's service. Macs come shipped with a shell called 'bash' by default. Bash stands for **'Bourne-again shell'**, referring to its objective as a free replacement for the Bourne shell which was developed by [Steven Bourne](https://en.wikipedia.org/wiki/Stephen_R._Bourne). 

You can also use`zsh` (zish) which has some extra features to make web-development easier. The American English pronunciation of Z is "zee", so Z shell rhymes with C shell, which sounds like seashell. `zsh` was also the login of the original developer Paul Falstad's Yale professor Zhong Shao. More detail on what a computer shell is and how to set up and [manage the Bash and Zish shells in Part 3](https://sumisastri.github.io/dev-blogs/dev-environment/part4-secure-shells/)

11. Speed up your mouse clicks on a Mac

Go to mouse clicks and enable tap-to-click

12. Privacy and disabling Siri

Siri by default tracks everything – to disable

Go to settings (system-preferences)/ accessibility/ Siri/ disable all you want to disable from type to Siri main page – then go to Siri preferences and disable each app that you do not want Siri to track your voice on – open Siri privacy suggestions to disable each app individually

To check your screen time and set breaks go to screen time in settings

13. Apple ID - each mac requires one (check with your office for what your user-name/ password should be)

Save this to add new packages from the app store or from online downloads. Note if you lose this Apple now takes about 5-6 days to reset your password after MFA kicks in.

14. Reduce the number of times you require the use of your password - go to your terminal and paste this code

  `echo $(whoami)" ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(whoami)`
  