---
layout: default
parent: The developer environment
nav_order: 7
title: Navigating your computer terminal
---

# Navigating your computer terminal

The terminal in your computer allows you to interact with the programs on your computer and navigate through folders and repositories.

Windows/ Mac / Linux have different terminals. WSL allows you to use a Windows terminal for a Linux OS.

The command line interface(CLI) helps you navigate through these systems with a terminal emulator. The
CLI allows you to make commands that are executed in the terminal emulator. 

Packages like npm, yarn, Babel, webpack may have their own CLI commands.

[Further reading: Unix CLI](https://www.cs.dartmouth.edu/~campbell/cs50/shellcontinued.html)


## A quick CLI cheat sheet

In your terminal you can type the following most used commands to navigate through your files The terminal has command arguments and options. A combination of arguments and their options give you the power to list, create or navigate effectively through your filing system. eg: `ls` is an argument and `-a` is an option of the argument

_List_

- `npm ls -g --depth 0` list all npm packages
- `ls` - list files
- `ls - a` list all including hidden files
- `ls - l` list long version
- `ls - la` list all including hidden files in long version
- `ls - s` list and sort
- `ls -lt` list long and sort by modification time - newest first
- `ls *a` - files starting with a
- `ls *a*` - files with a anywhere
- `pwd` - path to home directory - prints all in file path
- `echo $PATH` - prints current path. Your default path should be export PATH=/usr/bin:/usr/sbin:/bin:/sbin

_Create_

- `mkdir [directory name]` make a directory
- `touch [filename]` make a new file in the directory if you have spaces between file names you will have as many files as there are spaces eg: `touch this is my file` - will create this/is/my/file as separate files.
- `cat this \ is \ my \file` concatinates files into one file - you will get a file with <thisismyfile> as the file name
- `echo ` prints to console
- `nano create_report`

_Copy_

- `cp [~/filepathfrom ~/filepathto]` copy file from one directory to another
- `cp [~/*.file-extension ~/filepathto]&` copy all files with the file extension (eg. `.doc/.jpg`) from one directory to another
- `#` Comments - non-executable as code

_Navigate or move files/directories/shells_

- `cd` change directory
- `cd..` move one directory up
- `mv [~/filepathfrom ~/filepathto]` move file from one directory to another
- `mv [~/*.file-extension ~/filepathto]` move all files with the file extension (eg: .doc/.jpg) from one directory to another
- `open [file_name]`
- `chsh -s` change shell
- ` chsh -s /bin/zsh`
- ` chsh -s /bin/sh`
- ` chsh -s /bin/bash`
- `echo $SHELL` - which shell are you on
- `zsh --emulate sh` - zsh can be made to emulate sh by executing the command `man -ls` manual for the ls command
- `/` search
- `n` next match
- `b` move up a page
- `spacebar` move down a page
- `q` quit
- `wqa` quit all
- `grep ` search text strings
- `echo *` prints all the files in the directory (star is a wild card finder)
- `chmod ` change mode
- `chmod u+x [file_name]` change mode to the user of the computer only can execute commands on the file
- `chmod a+x [file_name]` change mode to any user

_Read_

- `cat [file_name]` outputs the contents of the file (good for small files)
- `open [file_name]` opens the contents of the file (good for large files )
- `less` (browse screen by screen)
- `/` search
- `n` next match
- `b` move up a page
- `spacebar` move down a page
- `q` quit

_Checking_

- `[package_name] -v` list version/ sometimes $[packagename] --version

_Delete_

- `rm [file_name]` remove file - destructive you won't get the file back again
- `rm -rf [file_name]` remove file force remove

_Super user rights_

- `sudo ` gives you super admin rights to your computer - if you are working with a team these rights may be reserved only to senior developers
- ` sudo chown` - change file owner or user
- ` sudo chown -r` change file owner or user recursively
- ` sudo chmod` change mode - changes user rights
