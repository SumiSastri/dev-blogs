---
layout: default
parent: The developer environment
nav_order: 7
title: Navigating your computer terminal using the shell
---

# Navigating your computer terminal using the shell

The terminal, also known as a terminal emulator, is a graphical user interface (GUI) that emulates the instrument panel of your computer that contains programs that control your computer. The terminal is a text-based interface that allows users to input text and get a text output from the control panel of the computer, or the computer console.

Commands are typed through a `tty` or a teletypewriter device in the terminal. If you type the command `tty` in your terminal, it will give you your device tty number and the file path `/dev`.

The shell is a computer program that is a command interpreter, as defined by Stallings, et al., [1]. The shell interprets the computer control panel commands, translates or interprets the commands feeds these commands via the terminal in a simple text format. 

The shell sits next to the computer kernel. The kernel is an additional layer between the shell and the computer control panel. It is a layered system, which allows the system to communicate efficiently.

A shell a piece of software that is a basic user interface for accessing an operating system's (OS) service via the computer terminal's command line interface (CLI). Shells can be used to write a range of programming scripts from simple to more complex operations.

When you type `tty`, the command on a shell, it calls on the kernel to display the serial number and path where the `tty` is located and display it back to the user on the command line.

Shell programming works due to several packages of free software from GNU, [1] which the organisation describes as a collection of many programs, applications, developer tools and even games.

The kernel communicates via this layered system to the deepest layer - the interface with processors, network controllers, memory and other key components of the computer hardware.

The next layer is the management and distribution of memory, including random access memory (RAM), through the system.

As the computer is fed with various requests from the terminal, via the shell to the kernel. These processes have to be managed efficiently, in the kernel. Another layer in the kernel is the process scheduler, which takes care of input-output (I/O) management and schedules what processes will be managed in what order and in what order the output will be processed and delivered.

The next layer is device management, which may look after interaction with peripherals, screens, keyboards etc. 

The top layer of a kernel is FS, where the processes that are scheduled by the scheduler are assigned to memory or RAM, using the files in the FS.

The terminal in your computer is your main access point to all of these operations that are being run in the background. 

The terminal allows you to interact with the programs on your computer and navigate through the FS.

As a programmer and code writer, these FS files could be software and libraries of software that you need to download to write programs for web, gaming or mobile applications. They could be text files, data files, images. 

The files in the FS are identified by the dot extension, eg: `.txt`, `.doc`,`.css`, `.class`, `.js`, `.xls, `.jpg`, `.mp4`, etc. 

These are just a few such examples of FS files you can access via the terminal; the previous section provides a little more detail.

When you change the files in the FS or their location, the kernel picks up these changes and transmits them to the various elements of the hardware that will deal with the processing and scheduling in memory and return the updated files with their instructions back to the file in the FS.

Windows/ Mac / Linux have different terminals. WSL, or Windows System for Linux is an emulator that allows you to use a Windows terminal for a Linux OS.

The command line interface (CLI) is yet another bit of software that sits outside the FS. Using a CLI you can write simple commands that will be executed on the terminal, via a shell to the kernel of the computer and its internal systems.

## Text editors for the terminal and shell commands

Text editors like emac, vi - -visual editor, or nano may be built into the terminal and allow you to execute CLI operations. This is a great guide on  [how to use the nano editor](https://www.geeksforgeeks.org/nano-text-editor-in-linux/).

It is to be noted, by Stallings, et al., that text editors are separate pieces of software from the shell. There are no "universal" CLI commands. Each shell, or even software packages like Node Package Manager, etc., may have their CLIs to download with their own CLI commands.

The terminal has pre-written commands. Each command has a main argument and options to the argument which are denoted by either a single or double dash `-`, or `--`, this is also known as a flag.

A combination of arguments and their options give you the power to list, create or navigate effectively through the FS. 

eg: `ls` is an argument to list files and `-a` is an option of the argument. Some files in the FS are invisible to the user. These are often termed as `dot files`. The command `ls -a` refers to listing these dotfiles, or invisible files.

## Internal and external commands in shell scripting

There are 2 categories of commands in shell scripting languages - one's built into the shell, for example, if you want to change directories, type `cd  <directory name>`, and this internal command works out of the box.

However, the `ls` command which lists files, is an external program, stored in the `/bin/ls` directory. These are part of the GNU packages of files incorporated into the shell. Some external programs like wordcount - `wc` require the program to start a subprocess with the `|` pipe symbol. The pipe directs the shell to execute the command before the pipe from internal or external programs in the root directory or pipe it to the external file which could be in another location of the FS.

Once you understand the basic grouping of commands - eg: `ls` for listing vs `ps` - for listing process files/ and some of the flags or options to the arguments -`l` means list the long version - working through your FS becomes so much easier to handle as a developer. Try the `ps aux` command and the `ps el` command just for fun, you will see how many processes are running giving you a small glimpse of the inner workings of the myriad systems within an OS!

Now run `fsck` you will find out if you have shut down your computer and if any errors occurring the shutdown process.

## Fast file creation, navigation and permission setting

The most powerful use case for bash scripting in the terminal shell, is managing the FS. 

From the terminal, you can create files and directories. In one command you can set up a directory with multiple files. In the example below, you can make the directory test2, with the command `mkdir` under the file path of Desktop. Using the double ampersand `&&` you can also create a range of files - file1.txt to file5.txt - as defined by the command `touch` to create the files and the file expansion command `{1...5}` to define the number of files you want with the `.txt` extension.

`mkdir Desktop/test2 && touch Desktop/test2/file{1..5}.txt`

One thing to be aware of, Shelley, et al., warn is that a file in a shell scripting language in Unix (like Bash) is a stream of bytes, not a file with a file extension - like a `.txt` or `.hmtl` what that means is the command you see above is a stream of bytes. The `mkdir` and `touch` commands are considered bash files.

In the FS, the bash file or command to delineate ownership `chown`, this command can change the ownership of the user and `chmod` can change the operations the user can perform.

By default, all users can read, some users can read and write, and some users can execute file commands. By default, the file creator is the primary user. To allocate users who are multi-OS users or groups, as well as external users in a multi-OS environment, permissions for write and execute have to be explicitly set by system operators.

In the FS, the etc folder is used to define groups of users `etc/passwd` or `etc/group` define a single-OS user or a multi-OS group of users.

## The Unix manual of commands

It is virtually impossible to remember all the commands and is not even very useful to, however one command `whatis <nameofcommand>` is a real get-out-of-jail card. If you type the command `whatis` followed by the name of the command you want to understand - for example if it is `chmod`, type `whatis chmod` in the terminal and the list of use cases and meaning of the command is displayed. 

Another very useful command is `whereis <nameofcommand>` - for example if you want to know where in the filing system the listing commands are stored `whereis ls` 
you should get the answer `ls: /bin/ls /usr/share/man/man1/ls.1` will tell you where the file is stored.

__Run commands or rc files__

While setting up bash or zish shells, you will be asked to create run command files or rc files - `bashrc` or `zshrc`. Run command files and tell the computer how to run the programs installed - in this case the bash scripting files and the zish scripting files.


__Creating aliases__



#### EXTERNAL REFERENCES

- [1]__GNU__(Accessed: Oct. 27, 2024) [Available]https://www.gnu.org/

- [2] Shelley, Peek, Jerry D, __Unix Power Tools__ 3rd edition, (O'Reilly Learning, Beijing, 2003) 

- [3] __Geek for geeks__, "The difference between a terminal, the console, a shell and the command-line-interface", https://www.geeksforgeeks.org/ (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/difference-between-terminal-console-shell-and-command-line/)

- [4] __Geek for geeks__,"Nano text editor in Linux", https://www.geeksforgeeks.org/ (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/nano-text-editor-in-linux/).

