---
layout: default
parent: The developer environment
nav_order: 7
title: Basic tooling when you are learning to code
---

# Basic tooling when you are learning to code

When I started out the dev journey, it was hard to figure out what the very basic tooling I needed in my local environment - versus in my first job where the business needs were different and my work laptop had tonnes of stuff I had to download to get my environment set up.

This is a basic list for beginner devs in their first few jobs to help you set up your personal laptop with the basics that you require and separate that from the long list of requirements that an organisation may have to get your local environment working.

Please read the section [Installfest](https://sumisastri.github.io/dev-blogs/installfest/) - which is a longer list of the various packages I have had to install in different jobs - it may be helpful but is an optional read for beginners. I refer to this section often to pick and mix what I need to install on my local computer depending on what I am learning and the tools required to do the job.

Installfest has some simple set up instructions resources that I hope will help troubleshoot when you are stuck.

## A beginner's checklist to setting up your local environment

During the development process you will need these basic tools. 

You will need to be familiar with your computer terminal, [read Part 2 for a more detailed view of how your terminal works](https://sumisastri.github.io/dev-blogs/local-environment-setup/part2-the-terminal/) and use the cheatsheet to check out the terminal commands and familiarise yourself navigating your computer with the terminal.

## Ten pre-install checks for Mac users

1. Identify which version of your Mac's Operating System (MacOS) you're using. Ideally you should have Mojave or higher - click the apple icon on the left nav bar and check the "About this Mac" tab to find which OS you are on.

2. Ensure that you've uninstalled any anti-virus software you may have, as it can prevent some of the tools from installing properly - if you are working in a team, ask your tech lead if you are unsure. You can reinstall you anti-virus after you have installed all the tools you require.

3. The terminal is a Command Line Interface (CLI) that allows you to interact directly with your laptop's operating system. You can use it to run programmes, manage files and folders and install software. To open the terminal use <kbd>cmd</kbd> + <kbd>space</kbd>, then type Terminal and <kbd>enter</kbd>

  You can [read Part 2 for a more detailed view of how your terminal works](https://sumisastri.github.io/dev-blogs/local-environment-setup/part2-the-terminal/)

4. Speed up your cursor - By default, the speed of the cursor on a Mac is a little too slow. In an older Mac you need to go to 

  ```
  System Preferences > Keyboard
  ```
- In a newer Mac you can go directly to Keyboard

- Set Key Repeat to `Fast` 
- Set Delay Util Repeat to `Short`

5. Vim in the default text editor in a Mac, many developers prefer to use Vim instead of code editors and integrated development environments (IDE's) - bookmark [Vim CheatSheet](https://vimsheet.com/) you will find it useful when you are using a Mac terminal


6. Speed up your mouse clicks on a Mac

  - Go to Trackpad and enable tap-to-click
  - Tracking speed to medium or fast
  - Click to Light

7. Privacy and disabling Siri

  Siri by default tracks everything – to disable (with a name like mine - Sumi, this is often confused with Siri so I disable Siri on all my Apple devices)

  - Go to settings (system-preferences)/ accessibility/ Siri/ disable all you want to disable from type to Siri main page – then go to Siri preferences and disable each app that you do not want Siri to track your voice on – open Siri privacy suggestions to disable each app individually

8. To check your screen time and set breaks go to screen time in settings

9. Apple ID - each mac requires one (check with your office for what your user-name/ password should be)

  _NOTE_Save this to add new packages from the app store or from online downloads. Note if you lose this Apple now takes about 5-6 days to reset your password after MFA kicks in.

10. Reduce the number of times you require the use of your password - go to your terminal and paste this code

  `echo $(whoami)" ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(whoami)`
  
The password is your screen password that unlocks your Mac. You will not see it being typed but if it matches you will not get an error message.

## The dev environment tool kit for Mac users

You are now ready for the next steps in getting your local environment ready. Follow set up in the order given below.

1. For Mac users

HomeBrew is a package manager which helps you install external software packages on your Mac.

Check if you have Homebrew installed run `brew doctor` 
Check if you have Xcode installed run `xcode` or  `xcode --version` 

You can install both Xcode and Homebrew with one command.

```
xcode-select --install && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

__Note: It takes over 4-5 hours to install XCode, so plug your computer into a power socket and let it run overnight.__

Run `xcode-select --install` to check if it has been installed, you will get the confirmation Command Line Tools are already installed, with an error use "Software Update" - in that case run ```softwareupdate -i -a```

A more detailed guide in the Installfest section will help you trouble shooting installing XCode or Homebrew.

Neither HomeBrew nor Xcode are essential, installing Xcode CLI should be sufficient for starters. [GUIs or graphical user interfaces](https://www.computerhope.com/jargon/g/gui.htm) are often easier to install with versions for both Macs and PCs.

2. Familiarise yourself with computer shells and install Bash or Zish and customise them to suit your needs.

[In Part 4 - Computer shells the difference between Bash and Zish there is a quick guide and more details to understand shells and shell switching ](https://sumisastri.github.io/dev-blogs/local-environment-setup/part4-computer-shells/)

Once you have familiarised yourself with your computer shell and your terminal you can install a version control system.

3. Install a code editor or IDE (integrated development environment) - Atom, Visual Studio Code, Sublime Text (See section on clean code for [a quick guide to code editors and IDEs](https://sumisastri.github.io/dev-blogs/clean-code/part2-code-editors-and-how-to-setup-eslint/)

This will help you write HTML (Hyper Text Markup Language), CSS (Cascading Style Sheets), JavaScript and get started on learning the fundamentals of web development.

4. Git, the main version control system used by developers, should be preinstalled on both Mac and Windows. The set up requires secure hash keys and requires you to have a basic knowledge of how to set up your local environment, be comfortable with using the terminal and computer shells. Once you are confident in your terminal run ```git --version``` to check if it is pre-installed.

Then proceed to the section [how GitHub works as a version control system](https://sumisastri.github.io/dev-blogs/version-control-systems/) and to set up a Git, GitHub and set up your first GitHub repository to store versions of your code.

## Useful apps and GUIs

1.[Install Chrome](https://google.com/chrome) -  has the best developer tools, although Firefox and Safari have their own versions, personally I use Chrome for all my dev work. I also have Firefox and Duckduckgo as my non-developer browsers. I haven't warmed to Safari - once again these are all personal/ institutional choices if you are working in a team with its own corporate preferences.

You will need to have a gmail account to install Chrome and its extensions. One of the advantages of Chrome once you install it is when you change computers you can sync the bookmarks and extensions of your choice. This immediately makes the other tasks of connecting your local to Github, AWS, GCS and all your other go-to developer bookmarked sites so easy.

_Cheatsheet to install Chrome_
    - [Check your Chrome version ](https://www.whatismybrowser.com/detect/
      what-version-of-chrome-do-i-have). If you have an older version [update it ](https://www.whatismybrowser.com/guides/how-to-update-your-browser/chrome). This is useful as the installed version on a laptop may not be the latest Chrome version, which means your bookmarks may not sync effectively.
    -  [To download Chrome - go to](https://google.com/chrome)
    -  Click on `Download Chrome`
    -  Go to the Downloads folder and run the `googlechrome.dmg` package
    -  Drag the icon into the Applications folder
    -  Add Chrome to your dock and open it
    -  Select `set Chrome as my default browser`

    - [Node Inspector Monitor - Docs](https://chrome.google.com/webstore/detail/nodejs-v8-inspector-manag/gnhhdgbaldcilmgcpfddgdbkhjohddkj?hl=en)


2. [Sign up to Slack](https://www.slack.com/) a popular developer messaging service. Slack has a native app available on the App store. It's the first thing I install, if you haven't already,  online, and install the OS app. Once it has downloaded you'll find it your the Applications folder. Drag it into the dock and launch the app.

3. Checking API calls Insomnia/ Postman are apps that will allow us to make requests to web servers, and visualise the responses that they make. Either is fine, it is a matter of preference.

    - [Download Insomnia](https://insomnia.rest/)
      
    - [Download Postman](https://www.postman.com/downloads/) Postman now has 2 downloads for the older intelchip as well as the m1-m2 chips. To check which chip go to the apple icon. You will need to create a free account.

Copy the chosen app it into your Applications folder and add it to your dock.

4. Sign up to Stack Overflow

5. Pursue continuous learing with
  - [StackSkills](https://stackskills.com),
  - [Udemy](https://www.udemy.com/)
  - [Linked-in Learning](https://www.linkedin.com/learning/)
  - [FreeCodeCamp](https://www.freecodecamp.org/)
  - [Udacity](https://www.udacity.com/)

6. Refer to HTML and CSS documentation
- [W3Schools](https://www.w3schools.com/html/)
- [Mozilla](https://developer.mozilla.org/en-US/docs/Learn/CSS)
