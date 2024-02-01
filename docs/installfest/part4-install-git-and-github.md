---
layout: default
parent: Installfest
nav_order: 13
title: Installing Git and linking it to GitHub
---

# Installing Git 

Some new Macs already have Git installed to check run
`git --version`

If you do have Git installed, the official docs recommend you update by running
`git clone https://git.kernel.org/pub/scm/git/git.git`

- Ensure you're not using "Apple Git". To check in terminal type `which git` it should say `/usr/local/bin/git` or `/usr/bin/git`

__Options to install Git__

 1. Directly with the Xcode CLI 

   `sudo dnf install git-all` or `$ sudo apt install git-all`

2. You can use the [binary installer](https://sourceforge.net/projects/git-osx-installer/
)

3. Home Brew on a Mac with the command

`brew install git`

[Homebrew instructions](https://git-scm.com/download/mac)

__Trouble shooting__

[Official docs to install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) are quite easy to follow.

## Create a GitHub account

To use Git you need a cloud based service to host your version control repositories.

[GitHub account options](https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts) give you the option to set up a free account which is ideal for anyone learning to code.

[To sign up for a GitHub account follow the instructions on this link](https://docs.github.com/en/get-started/signing-up-for-github/signing-up-for-a-new-github-account)

Even if you work with an orgainsation, you will use your personal account. The organisation repository custodians will set you a role and access level, depending on their security and access policies for GitHub.

This is true even with SAML-SSO(single sign on where authentication is required at an enterprise level).

GitHub now strongly reccommends you use 2FA (2-factor authentication) since its [March 2023 announcement](https://github.blog/2023-03-09-raising-the-bar-for-software-security-github-2fa-begins-march-13/) to share with users the increased level of access security settings provided.

Once you have created a GitHub account, you can [add 2FA](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication)


## Using secure socket shell (SSH) to connect your local machine to GitHub

GitHub is a web-based Git repository hosting service. It allows you to store a remote copy of your projects and all the changes (versions) you have made. 

To successfully use GitHub, you should be able to write code in your local machine and then send the code (push the code) to your cloud-based repo or repository. Equally, if you want to update code, you should be able to access this remote version (pull code) into your local machine again.

The two sets of code - on your local machine and the cloud back up should be sync'd by this pull-push method.

To login to GitHub, you will need to use a secure socket shell (SSH) key. SSH keys are are a way to identify trusted computers, without involving passwords.

Check if you already have SSH keys on your computer. Open up your Terminal and type: `ls -al ~/.ssh`. 

If you get `No such file or directory` 

- **Generate a new SSH key on your local device**
- If you already have an SSH key go to step 5

1. Generate a new SSH key, on your laptop terminal run `ssh-keygen -t rsa -C <"your_email@example.com">`  _NOTE_ This is not your office email or a personal email, it is the email you used to set up and verify your `github.com` account.

2. You'll be prompted for a file to save the key in a filepath, and a passphrase. Press enter for all steps leaving both options blank (default name, and no passphrase). If you do enter a name and passphrase _SAVE_ Both the name and passphrase. You should get a success message with your key fingerprint. `<some serialised hash number> + <your email>` _SAVE_ This key before exiting as you will lose the fingerprint if you exit the terminal.

3. Add your new key to the SSH-agent on your local machine. The agent refers to the file path where the SSH key is encrypted and stored, to add run `ssh-add ~/.ssh/id_rsa`. You should get a success message  - Identity added with the file path and your email.   

4. Copy your key to the clipboard with the terminal command: `pbcopy < ~/.ssh/id_rsa.pub` _SAVE_ This information on your clipboard is the SSH-rsa key and not the key fingerprint you need both.

5. **Add your SSH Key to Github**. This is the key ID generated in the steps 3 and 4
   - log into your Github account (with a new computer/ if you have more than one device - work and home for example - you may now also be asked to create a passkey to identify and link the device to GitHub securely)

   - go to **/settings/profile** URL under your repo

   - you can find this section by clicking your profile image and the edit key under the image in the right navigation panel. Then on the left navigation panel you should see SSH and GPG keys

   - click **SSH and GPG keys**

   - click **New SSH key**

   - in the **Title** field put something that identifies your machine, eg: **My Office Mac - Office Repo Keys** or for your personal computer **My Home computer - personal repo Keys**

   -  In the **Key** field paste your SSH key that you have saved to the clipboard in step 4 - or just use <kbd>cmd</kbd> + <kbd>V</kbd> to paste _do not add or remove and characters or whitespace to the key_

   - Save by clicking **Add SSH key** 

   - Check everything works in the terminal by typing:
   `ssh -T git@github.com` <br>

- You should see the following message:
      ```
      Hi YOUR_NAME! You've successfully authenticated, but GitHub does not provide shell access.
      ```
_Trouble shooting_

In case you do not get a success message, you may have to go to your email with which you signed up for a GitHub repo and download your recovery codes they are random numbers and you will get between 12 to 20 recovery codes. SAVE YOUR GITHUB RECOVERY CODES - it is recommended to manage passwords with a password keeper - 1Password, Authy or Keeper by GitHub

Note these codes are your LAST DEFENCE in case you lose or forget your pasword and 2FA does not work. If you lose these codes, you will lose access to your account. There is NO customer service or support with account recovery for the free tier.

Now go back and type  `ssh -T git@github.com` 

If the error message - the authenticity of host `github.com` can't be established, you will get a prompt - are you sure you want to continue, instead of typing yes or no, type your SHA fingerprint that you have saved in step 2, note this is not the same as the SSH-rsa which you have pasted into your cloud-based GitHub repo.

Now that your local machine is connected to the cloud you can create a repo online or on your local machine and check if the two are in sync.
