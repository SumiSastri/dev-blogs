###  Xcode

Xcode is a large suite of software development tools and libraries from Apple.  The Xcode Command Line Tools are part of XCode. 

You can install both xcode and homebrew with one command
```
xcode-select --install && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

If that does not work

Installation of many common Unix-based tools requires the [GCC compiler](https://en.wikipedia.org/wiki/GNU_Compiler_Collection). 
The Xcode Command Line Tools include a GCC compiler.  
Ensure you've got [Xcode installed](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12). 

**HOW TO**

1. At the terminal prompt type: `xcode-select --install`
2. Choose `Install` from the prompt then `agree` to the license agreement
3. If you receive a message saying `Can't install the software because it is not currently available from the Software Update server` it's probably because the command line tools are already installed. If so type `gcc` in the terminal. If you see `gcc: command not found` slack your manager for help, otherwise, move on to the next step.
4. Type `sudo xcodebuild -license` and type in your password (latptop access) at the prompt.
5. Press enter, then `q`
6. Then on the next prompt, type `agree`

You can also run ```softwareupdate -i -a```


When installing Xcode from the App Store, disable windows defender restart your machine, download xcode and simply enable it after install. 

After download, install can take 3-5 hrs, just leave it running. Alternatively, if only the Xcode Command Line Tools are needed (a requirement for Git/Homebrew) you can simple install Homebrew and you will be prompted with the option to install Xcode Command Line Tools.