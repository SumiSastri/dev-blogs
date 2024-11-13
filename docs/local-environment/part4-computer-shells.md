---
layout: default
parent: The developer environment
nav_order: 7
title: Computer shells - Bash vs Zish
---

# Computer shells - Bash vs Zish

A shell a peice of software that is a basic user interface for accessing an operating system's (OS) service via the computer terminal's command line interface (CLI). Shells can be used to write a range of programming scripts from the simple to more complex operations.

In simple terms, the shell gives you access to "installed programs, hardware resources, and files stored on the system", according to Simpson[1], in the section of his tutorial, _What is Bash_.

A system adminstrator is the root user while the owner of the computer who writes scripts into the shell is not a super adminstrator but the regular user of the computer.

Root users can access all files in the OS, Brash and Naik (2018, ch1, "Getting started with Bash and CLI fundamentals"), advise users who have root file privileges to run bash scripts with caution: "Running some scripts can delete any or all critical files in an OS and could render the system unusable or broken."

Developers are regular users. [To familiarise yourself with the terminal read the previous section](https://sumisastri.github.io/dev-blogs/hardware-local-environments/part2-the-terminal/) in this series.

In the early 1960s, French computer scientist [Louis Pouzin](https://en.wikipedia.org/wiki/Louis_Pouzin) was credited for writing the first software that ressembles a modern computer shell.

In the Unix world, and that includes the Mac operating system (MacOS) and Linux, many shell implementations have been popular in the past, like Bash, the Korn shell, the C shell (seashell).

Two of the most popular shells, Bash and Zish both are mostly used across the Linux/Unix ecosystems - including the Ubuntu environment, a common Linux distribution environment. 

Read more about [OSs](https://sumisastri.github.io/dev-blogs/local-environment/part1-the-local-environment/) for a contextual reference.

Shell scripts allow you to, with minimal installation write scripts to automate repetitive tasks.

Older Macs with the Intel Chip, ship with Bash by default. Bash stands for **'Bourne-again shell'**, referring to its objective as a free replacement for the Bourne shell which was developed by [Steven Bourne](https://en.wikipedia.org/wiki/Stephen_R._Bourne).

Bash is still by far the most‑used shell in the Unix world and unlikely to change.

Modern Macs may have both Zish and Bash Shells installed.

Run `nano ~/.bash_profile` and it should open up  `.bash_profile`. 

Most customisation happens by running commands inside this file which is parsed or read every time you open a new terminal window.

The MacOS, which used to have Bash as the default shell but recently switched to the Z (zee in American English) shell with the introduction of MacOS Catalina. 

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

See the installation guides for bash and zish. Both shells need to be installed before you can write scripts.

## Shell switching

You can check which shell you are using by type `echo $SHELL` in your terminal.

By default, since the upgrade to Catalina, MacOS uses Zish [see this announcement](https://support.apple.com/en-ca/HT208050). 

You can, however, change the default login shell through `chsh -s /bin/bash` or any other shells listed by running  `< /etc/shells` this lists the shell paths: /etc/shells, such as /bin/zsh, /bin/bash, /bin/csh, /bin/dash, /bin/ksh, /bin/sh, or /bin/tcsh..

You might want to switch from Bash to Zish and vice-versa. To use %zsh - if you wish to switch to any of the other paths listed replace with the file path.

``` chsh -s /bin/zsh```
``` chsh -s /bin/bash```

In some code editors like VS Code, you can select a Zish or Bash shell by clicking the chevron to the right of the terminal.


#### EXTERNAL REFERENCES

- [1] Scott Simpson, _Learning Bash Scripting_, (Linked-in Learning, Sept, 2022), [Accessed: Oct. 29, 2024](https://www.linkedin.com/learning/learning-bash-scripting-17063287/what-s-bash?resume=false&u=42314660)

- [2] Brash Ron & Naik Ganesh, __Bash Cookbook__, 1st edn (Packt Publishing, July 2018), chap.1, pg3 - (URL or https://doi.org/)

- [3] __Geek for geeks__, "The difference between a terminal, the console, a shell and the command-line-interface", https://www.geeksforgeeks.org/ (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/difference-between-terminal-console-shell-and-command-line/)

- [4] __Geek for geeks__,"Nano text editor in Linux", https://www.geeksforgeeks.org/ (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/nano-text-editor-in-linux/)

- [5] George Charalambous (2024), __BASH part 1__, PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5330159_1)
