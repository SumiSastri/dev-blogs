---
layout: default
parent: The developer environment
nav_order: 7
title: What is the difference between a shell and SSH a secure shell?
---

#  What is the difference between a shell and SSH a secure shell?

The Shell allows you to inspect the files on your computer filing system. It is a user interface for accessing an operating system's services and is excellent for managing processes, working with text and remote system adminstration.

A shell is a program that you use to run other programs through a text‑only interface called the command line interface (CLI).

It will let you do simple things like starting your browser or complicated things like executing a set of transformations on data from multiple files. You can manage file system operations, programming processes and more.

It's a power tool that can help almost anybody to become more efficient at their work. This said, the Shell has limited operational powers - no can not execute complex calculations, manage complex binary data or create [graphical user interfaces (GUIs)](https://www.computerhope.com/jargon/g/gui.htm).

The shell can automate tasks (like cleaning up a downloads folder, etc.) and is a complete programming languague that allows you to write if statements, loops, create variables and functions.

As the Shell is a power tool. It assumes you know what you're doing and that you mean what you say. If you tell it to remove or overwrite something, it will.You may be used to working on a system that allows you to undo mistakes and recover files that you've deleted. Unlike these systems, the Shell offers no undelete and no undo.

Whenever you run a command, be prepared for the fact that its effects may be permanent.A simple mistake might cause you to lose important data. It is therefore important to read and reread what you type before executing your command.

Important system files and resources are usually protected from normal users tinkering with them, but since you will need to practice and probably make a mistake now and then, it might be wise to set up a safe environment where you don't have to worry about losing data.

If you want to be completely sure, set up a virtual machine to practice on. That will enable you to try anything without worrying about the consequences. If you want to work with an existing system, you may want to set up a separate practice account without administrative privileges. This minimizes the chances that you damage your system or your personal files.

There's a huge array of powerful tools and utilities that come with UNIX. The shell is the glue that makes these tools work together. Many tasks that would take quite some effort using the mouse and the graphical file manager can be done in a single command line, and since they are text commands, it's very easy to rerun the same tasks next week.

The shell is also a very powerful tool for automating tasks that you repeat often. Just to give some examples of the kind of tasks that you might use the command line for, there's file management, the shell that you copy, move, and delete files in a very efficient way, with a minimum of typing.

If you're a system administrator, the shell is probably the most important tool you need to know about. Most administration tasks are done most efficiently on the command line, and for many advanced jobs, the command line is the only way to go.

Software developers will see their work benefit a lot from using the command line. From front‑end developers to DevOps engineers or database admins, they all have tasks that are run more efficiently on the command line.

You can use the shell to search, filter, edit, and transform data, and as such, the shell is also a power tool for data scientists and analysts. And also, because the CLI is a text‑only interface, it is ideal for remotely accessing a machine. It's usable, even if you only have a dial‑up connection, and you'll never have to wait for it to start up. The shell can even be used as a powerful programming language to write scripts.

[Read this section in conjunction with Part 3](https://sumisastri.github.io/dev-blogs/dev-environment/part3-computer-shells/)


## Secure Shells or SSH

SSH, also known as Secure Shell or Secure Socket Shell, is a network protocol that gives users, particularly system administrators, a secure way to access a computer over an unsecured network.
For a complete definition of SSH read [Tech Target's article](https://www.techtarget.com/searchsecurity/definition/Secure-Shell) where I have summarised some of the key information.

The first version of secure shells or SSH appeared in 1995 and was designed by Tatu Ylönen, who was, at the time, a researcher at Helsinki University of Technology and later started SSH Communications Security, a cybersecurity vendor based in Finland.

Over time, various flaws were found in SSH-1. That version is now considered to be deprecated and not safe to use.

SSH-2, the current version of Secure Shell protocols, was adopted as a Standards Track specification by the Internet Engineering Task Force (IETF) in 2006. SSH-2 is not compatible with SSH-1 and uses a Diffie-Hellman key exchange and a stronger integrity check that uses message authentication codes to improve security.

SSH clients and servers can use a number of encryption methods, the mostly widely used being Advanced Encryption Standard (AES) and Blowfish.

There are no known exploitable vulnerabilities in SSH-2, though information leaked by Edward Snowden in 2013 suggested the National Security Agency (NSA) may be able to decrypt some SSH traffic.

SSH, also known as Secure Shell or Secure Socket Shell, is a network protocol that gives users, particularly system administrators, a secure way to access a computer over an unsecured network.

The most basic use of SSH is to connect to a remote host for a terminal session with the CLI command `ssh UserName@SSHserver.example.com`.

This command will cause the client to attempt to connect to the server named `server.example.com`, using the user ID UserName.

If this is the first time negotiating a connection between the local host and the server, the user will be prompted with the remote host's public key fingerprint and prompted to connect, despite there having been no prior connection.

Answering yes to the prompt will cause the session to continue, and the host key is stored in the local system's `known_hosts` file.

This is a hidden file, stored by default in a hidden directory, called `/.ssh/known_hosts`, in the user's home directory.

Once the host key has been stored in the known_hosts file, the client system can connect directly to that server again without need for any approvals; the host key authenticates the connection.

SSH keys are a way to identify trusted computers, without involving passwords. This is how, for example, GitHub works.
