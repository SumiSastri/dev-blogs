---
layout: default
parent: The developer environment
nav_order: 7
title: Navigating your computer terminal
---

# Navigating your computer terminal

The terminal, also known as a terminal emulator, is a graphical user interface (GUI) that emulates the instrument panel of your computer that contains programs that control your computer.

The terminal is a text-based interface that allows users to input text and get a text output from the control panel of the computer, or the computer console.

The shell is an interpreter, that interprets the computer control panel commands, translates or interprets the commands feeds these commands via the terminal in a simple text format. 

The shell sits next to the computer kernel. The kernel is an additional layer between the shell and the computer control panel. It a layered system, which allows for different elements of the system to communicate efficently.

The deepest layer is the interface with processors, network controllers, memory and other key components of the computer hardware.

The next layer is the management and distribution of memory, including random access memory (RAM), through the system.

As the computer is fed with various requests from the terminal, via the shell to the kernel. These processes have to be managed effiently, in the kernel. Another layer in the kernel is the process scheduler, which takes care of input-output (I/O) management and schedules what processes will be managed in what order and in what order the output will be processed and delivered.

The next layer is device management, which may look after interaction with peripherals, the screens, key boards etc. 

The top layer of a kernel is the file system, often refered to as the FS, where the processes that are scheduled by the scheduler are assigned to memory or RAM, using the files in the FS.

The terminal in your computer, is your main access point to all of these operations that are being run in the background. 

The terminal allows you to interact with the programs on your computer and navigate through the FS.

As a programmer and code writer, these FS files could be software and libraries of software that you need to download to write programs for web, gaming or mobile applications. They could be text files, data files, image. 

The files in the FS are identified by the dot extension, eg: `.txt`, `.doc`,`.css`, `.class`, `.js`, `.xls, `.jpg`, `.mp4`, etc. 

These are just a few such examples of FS files you can access via the terminal. 

When you change the files in the FS, or their location, the kernel picks up these changes and transmits them to the various elements of the hardware that will deal with the processing and scheduling in memory and return the updated files with their instructions back to the file in the FS.

Windows/ Mac / Linux have different terminals. WSL, or Windows System for Linux is an emulator that allows you to use a Windows terminal for a Linux OS.

The command line interface(CLI) is yet another bit of software that sits outside the FS. Using a CLI you can write simple commands that will be executed on the terminal, via a shell to the kernel of the computer and its internal systems.

Text editors like vi - visual editor, or nano may be inbuilt into the terminal and allow you to execute CLI operations. This is a great guide on  [how to use the nano editor](https://www.geeksforgeeks.org/nano-text-editor-in-linux/).

There are no "universal" CLI commands. Each shell, or even software packages like Node Package Manager, etc., may have their own CLIs to download with their own CLI commands.

The terminal has command. Each command has a main argument and options to the arguement which are denoted by either a single or double dash `-`, or `--`, this is also known as a flag.

For example, to find the version of a software you can type `node -version` or the double dash flag `node --version` to find out if you have NodeJS, a software environment, preloaded on your computer. 

In the next article, in this series, I have outlined [a quick tooling checklist for JavaScript developers](https://sumisastri.github.io/dev-blogs/local-environment/part3-tooling-checklist/).

A combination of arguments and their options give you the power to list, create or navigate effectively through the FS. 

eg: `ls` is an argument and `-a` is an option of the argument. This is my CLI cheat sheet of commands I most frequently use.

There are some files in the filing system that are invisble to the user. These are often termed as `dot files`. The command `ls -a` refers to listing these dot files, or invisible files.

Configuration files, for example, are dotfiles and to find and open a dot file, you may want to type `ls -a` to find the file, then to open the file you require you can type `open .bashrc` to open the hidden file and view and edit its contents.

#### EXTERNAL REFERENCES

- [1] __Geek for geeks__, "The difference between a terminal, the console, a shell and the command-line-interface", https://www.geeksforgeeks.org/ (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/difference-between-terminal-console-shell-and-command-line/)

- [2] __Geek for geeks__,"Nano text editor in Linux", https://www.geeksforgeeks.org/ (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/nano-text-editor-in-linux/).
