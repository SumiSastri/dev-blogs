---
layout: default
parent: The developer environment
nav_order: 7
title: Navigating your computer terminal
---

# Navigating your computer terminal

The terminal in your computer allows you to interact with the programs on your computer and navigate through folders and repositories.

Windows/ Mac / Linux have different terminals. WSL allows you to use a Windows terminal for a Linux OS.

The command line interface(CLI) helps you navigate through these systems with a terminal emulator. The CLI allows you to make commands that are executed in the terminal emulator. 

Packages like npm, yarn, Babel, webpack may have their own CLI commands.

## What is C-URL

C-URL also written as c-url, c-URL and curl, is an acryonm for client-URL (unique resource locator).

Your local device, when it needs to connect to a client (on a remote server or cloud-based platform) can use a curl command in the terminal. The data from the client's remote server then can be safely transferred to your local device via an URL. 

A curl is encoded and therefore different from a general URL where you can access web or mobile pages and data. The code is then decoded at your local device making the data from software development kits (SDKs) available for developers to use.

_Further reading_

- [What is c-url and when to use it](https://blog.pair.com/2018/01/26/curl-description-basic-use-cases/)
  
- [curl Documentation](https://curl.se/docs/manpage.html)
  
- [curl and APIs](https://developer.ibm.com/articles/what-is-curl-command/)

- [What are source or dot files](https://en.wikipedia.org/wiki/Dot_(command)#Source)
  
- [Customising your terminal](https://towardsdatascience.com/the-ultimate-guide-to-your-terminal-makeover-e11f9b87ac99) 
  
- [Unix CLI](https://www.cs.dartmouth.edu/~campbell/cs50/shellcontinued.html)
  
- [Concatinating paths](https://www.cyberciti.biz/faq/linux-unix-appleosx-bsd-cat-command-examples/)

## My CLI cheat sheet

In your terminal you can type the following most used commands to navigate through your files. The terminal has command arguments and options. A combination of arguments and their options give you the power to list, create or navigate effectively through your filing system. eg: `ls` is an argument and `-a` is an option of the argument. This is my CLI cheat sheet of commands I most frequently use.

_List_

- `npm ls -g --depth 0` list all npm packages
- `ls` - list files
- `ls - a` list all including hidden files
- `ls - l` list long version
- `ls - la` or `ls -lah` list all including hidden files in long version
- `ls - s` list and sort
- `ls -lt` list long and sort by modification time - newest first
- `ls | less` - list a shorter version (uses the pipe symbol)
- `ls a*` - files starting with a (uses the wild card asterisk to search)
- `ls *a` - files ending with a (uses the wild card asterisk to search)
- `ls *amperstand*` - files with amperstand anywhere in the files (see grep as well)
- `pwd` - path to home directory - prints all in file path
- `echo $PATH` - prints current path. Your default path should be export PATH=/usr/bin:/usr/sbin:/bin:/sbin

_Create_

- `mkdir <directory name>` make a directory
- `touch <filename>` make a new file in the directory if you have spaces between file names you will have as many files as there are spaces eg: `touch this is my file` - will create this/is/my/file as separate files.
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
- `chsh -s` change shell to Zish, Bash or sh
- `chsh -s /bin/zsh`
- `chsh -s /bin/sh`
- `chsh -s /bin/bash`
- `echo $SHELL` - which shell are you on
- `zsh --emulate sh` - zsh can be made to emulate sh by executing the command `man -ls` manual for the ls command
- `/` search
- `n` next match
- `b` move up a page
- `spacebar` move down a page
- `q` quit
- `wqa` quit all
- `grep ` search eg: `grep <searchkeywords>*` this will search through text and files
- `grep <searchkeywords> | sort` sorts the search out in alphabetical order
- `grep <searchkeywords> | wc -l` search and list number of lines and word count
- `grep <searchkeywords>*` - search all matches - if key word is NodeJS matches and returns files
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

_`sudo`` or Super user rights_

`sudo` is the short version of super-user-do and is usually used to install packages - you will find many examples in the [Installfest section](https://sumisastri.github.io/dev-blogs/installfest/) 

- `sudo ` gives you super admin rights to your computer - if you are working with a team these rights may be reserved only to senior developers. 
- ` sudo chown` - change file owner or user
- ` sudo chown -r` change file owner or user recursively
- ` sudo chmod` change mode - changes user rights

