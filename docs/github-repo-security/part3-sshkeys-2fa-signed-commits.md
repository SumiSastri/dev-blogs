---
layout: default
title: How to keep Set up Git, SSH Keys, 2FA and Signed Commits
parent: Safeguarding your GitHub repo
nav_order: 9
---

# How to keep Set up Git, SSH Keys, 2FA and Signed Commits

Git is the version control system if you have a personal GitHub account provide the details to your manager for access, if not create your own repo. Installation requires you to set up your computer with an SSH key for securty.

 For a basic installation of git and connecting it to your local machine, see [the version control section](https://sumisastri.github.io/dev-blogs/github-and-version-control/part4-github-setup-checklist/)

Set up an account go to [https://docs.github.com/en/get-started/signing-up-for-github/signing-up-for-a-new-github-account]

These next steps will secure your code in your repo.

# Set up Authentication

You will need to verify your e-mail and add 2-factor authentication (2FA) with a phone or authenticator app.
See the docs[https://docs.github.com/en/authentication]

- Configure your name and email address for commits (be sure to use the email address you have registered with Github) not the email that is your personal/ office email. This is becuase the email address is bound to the key in the SSH setup.

- You will also be given recovery codes which you should save as if you can't access your files the recovery codes are a back-up to get back into your account.

- Set up a profile and select a free account as it ships with several great features like free file storage/ hosting and version control of files

  Install git - check version `git --version`

# Configure SSH access

Secure Shell protocol, or SSH, for short relies on public key cryptography. The user generates a pair of keys on their local workstation. One of the keys is secret and needs to be kept securely on the workstation. This key is used by the user to authenticate. The corresponding public key needs to be uploaded to GitHub to allow the service to authenticate the user.

GitHub also generates an authentication code called a personal access token. Users can generate this token on the GitHub website after successful authentication using their username and password. SSH and personal access tokens are the only two types of credentials that are supported by GitHub for authenticating the user working with the command line Git client.

Username and password can still be used to log into the GitHub website.

Connect your local machine to a repo using SSH keys read this overview Link: [https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup]

This is an excellent walk through from free-code-camp [https://www.freecodecamp.org/news/git-ssh-how-to/]

Now, let's see how SSH protects the user's private key. SSH software stores the private key encrypted on the disk. This protects the key even if the developer workstation is hacked or stolen. In order to use the key, the developer has to provide a passphrase. This passphrase is then used to decrypt the key. This decrypted key is then stored in the memory of a process called ssh‑agent. Only this process has access to the decrypted key and it is never stored on the disk in plaintext. Ssh‑agent is then responsible for using this private key to establish an encrypted SSH channel to the Git server.

GitHub is a web-based Git repository hosting service. It allows us to keep a remote version of our version-controlled projects.

When we push and pull from Git, we don't want to always have to login to verify who we are. Therefore, what we can do is generate and use something called an SSH key. SSH keys are a way to identify trusted computers, without involving passwords.

SSH and Git client hide all of this complexity from the developer and only asks for the passphrase once to start using the private key.

First, we need to check for existing SSH keys on your computer. Open up your Terminal and type: `ls -al ~/.ssh`. If you get `No such file or directory` go to the next step **Generate a new SSH key**, otherwise, go to step 4 **Add your SSH Ket to Github**.

1. Generate a new SSH key pair using ssh‑keygen `ssh-keygen -t rsa -C "your_email@example.com"` SAVE THE KEY.
   It provides a cryptographic algorithm we will use for our keys.

2. You'll be prompted for a file to save the key, and a pass phrase. Press enter for both steps leaving both options blank (default name, and no pass phrase). If you provide a passphrase save it as it is the passphrase the key will be encrypted with.

3. Add your new key to the ssh-agent

Create a configuration file by typing in terminal
`touch ~/.ssh/config`
Open the file
`~/.ssh/config` (you need admin access for this step)
Add code

```
Host*
AddKeysToAgent yes
UseKeychain yes
IdentityFile ~/.ssh/id_yourid
```

This file code adds the key to the agent and store the key in the keychain. We also need to point at the file with the key.

Finally, we need to add the private key to ssh‑agent with the ssh‑add command `ssh-add ~/.ssh/id_rsa`

4. Add your SSH key to GitHub by logging into Github, visiting **Account settings** and clicking **SSH keys**. Click **Add SSH key**

The next step is to copy the public key to the clipboard. Now, let's go to GitHub. Let's go to Settings, then to SSH and GPG keys section. Now, we can click the new SSH key, give our key a descriptive title and paste the public key from the clipboard. This is a very sensitive operation, and we need to confirm it with a password.

It will read

`SHA256:some serialised hash + your email associated to your laptop`

You can also find it by clicking your profile image and the edit key under it in the left nav.

5. Copy your key to the clipboard with the terminal command:

`pbcopy < ~/.ssh/id_rsa.pub`

6. In the **Title** field put something that identifies your machine, eg: **My Office Mac - Office Repo Keys** or for your personal computer **My Home computer - personal repo Keys**

7. In the **Key** field just hit <kbd>cmd</kbd> + <kbd>V</kbd> to paste the key that you created earlier - _do not add or remove and characters or whitespace to the key_

8. Click **Add key** and check everything works in the terminal by typing:

Test the connection with our new key using the `ssh ‑T` command -
you should see
usage: ssh [yourkey] [-B bind_interface]

Or use the command `ssh -T git@github.com` <br>

You should see the following message:

```
Hi YOUR_NAME! You've successfully authenticated, but GitHub does not provide shell access.

```

<br> 
Now that your local machine is connected to the cloud you can create a repo online or on your local machine. Git has changed the name master for a branch main.

When linking repos it is easier to use the HTTPS key rather than the SSH key. While you need the SSH to link the repos initially to avoid the error.

```
Permission denied (publickey).
fatal: Could not read from remote repository.
Please make sure you have the correct access rights and the repository exists.

```

Set up config commands
Check file path:  
`git config --list --show-origin`  
Your user name:
`git config --global user.name "John Doe"`
Your email:
`git config --global user.email johndoe@example.com`
Track case changes in file names:
`git config --global core.ignorecase false`
Check set up:
`git config –list`

# Git credential managers

- Default - do not store credentials at all
- Cache store credentials in RAM (stored only for 15 mins max)
- Persist credentials in plain text files (not advised - easy to hack)
- Customised storage in key-chains

# Signed commits

Git does not save user names or passwords of code writers and their commits. If an attacker finds a security leak and gets into a developer's local machine, impersonation to inject malicious code may occur or

Therefore to secure committed code from such attacks Git servers allow a GPG (GnuPG) signed commit and signed tag.

GPG has a public key that is sent to the server and a private key that can be set up on a local machine. The private key signs in and the public key on the Git server verifies that signature.

Git then marks these commits as crypotgraphically verified. A GPG therefore works like an SSH key but it has a few more features. It can be revoked or set to expire. These features are not available on SSH.

Vigilant mode [https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits] is a more strict enforcement of GPG signed commits

It is good practice to show the verification status of your commit [https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits]

To ensure signed commits follow the steps in this link [https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification#gpg-commit-sig[…]e-verification]

1. check if you have gpg set up in terminal run `gpg --list-secret-keys --keyid-format=long`
   If you do not have it installed on a Mac [https://www.gnupg.org/download/]
   use Osx package[https://gpgtools.org/]

2. Run the command `gpg --list-secret-keys --keyid-format=long` once you install the gpg CLI and you should get the list of GPG keys.

You will see the keys have a default expiration 1 year after installation.
