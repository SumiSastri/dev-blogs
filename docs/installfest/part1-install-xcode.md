---
layout: default
parent: Installfest
nav_order: 13
title: How to install Xcode on a Mac
---

#  How to install Xcode on a Mac

Xcode is a large suite of software development tools and libraries from Apple.  The Xcode Command Line Tools are part of XCode. 

You can install both Xcode and HomeBrew with one command. I personally only have XCode CLI installed

```
xcode-select --install && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Run `xcode-select --install` to check if it has been installed, you will get the confirmation Command Line Tools are already installed, with an error use "Software Update" - in that case run ```softwareupdate -i -a```

If this does not work check out these options.

Installation of many common Unix-based tools requires the a GCC compiler - more information on [GCC compiler](https://en.wikipedia.org/wiki/GNU_Compiler_Collection). 

You can also install it from the AppStore: [Xcode installed](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12). 

At the `Install` from the prompt,  `agree` to the license agreement

If you receive a message saying `Can't install the software because it is not currently available from the Software Update server` it's probably because the command line tools are already installed.

Run `gcc` in the terminal. If you see `gcc: command not found` 
Try ```softwareupdate -i -a``` if you have not already

Then run `sudo xcodebuild -license` and type in your password (latptop access) at the prompt.

To quit, press enter, then `q`

On the next prompt, type `agree` to the licence 

It takes over 4-5 hours to install XCode, so plug your computer into a power socket and let it run overnight.

When installing Xcode from the App Store, disable windows defender restart your machine, download Xcode and simply enable it after install. 

After download, install can take 3-5 hrs, just leave it running. Alternatively, if only the Xcode Command Line Tools are needed (a requirement for Git/Homebrew) you can simple install Homebrew and you will be prompted with the option to install Xcode Command Line Tools.

_Note_
With every major version change in Apple there are challenges installing . Catalina, BigSur and Sonomo (current version 2024) have caused a lot of challenges for developers, you may have to search and trouble shoot using Stack Overflow or other dev chat threads.

Some commands to try:
- `sudo rm -rf /Library/Developer/CommandLine Tools` and rerun `xcode-select --install`
- `sudo xcode-select -switch /Library/Developer/CommandLine Tools` - you may not be in the right directory this may help
- `sudo xcode-select --reset` reset and start again `xcode-select --install`
- You may need to shut-down and restart your Mac for the settings to be applied.

