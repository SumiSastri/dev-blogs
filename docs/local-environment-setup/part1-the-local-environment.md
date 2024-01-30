---
layout: default
title: Your computer - the local environment
parent: The developer environment
nav_order: 7
---

# Your computer - the local environment

You computer is a synonym for a developer's local environment. Setting up  your computer with the right tools to help  you code helps you link your computer to cloud based systems like GitHub, where you code may reside, as well as cloud based data-infrastructures that host your software packages.

## Ten pre-install checks for Mac users

1. Identify which version of your Mac's Operating System you're using - ideally you should have Mojave or higher - click the apple icon on the left nav bar and check the "About this Mac" tab to find which OS you are on

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
