---
layout: default
parent: The developer environment
nav_order: 7
title: Tooling a checklist
---

# Tooling a checklist

Before you set up your local environment with global installs of useful packages that will support your development of software locally, I have a checklist of tools that you may find useful to checkout and use as appropriate.

## Basic tools

During the development process you need to check you Mac has the

- A code editor or IDE (integrated development environment) - Atom, Visual Studio Code, Sublime Text (See section on clean code for [a quick guide to code editors and IDEs](https://sumisastri.github.io/dev-blogs/clean-code/part2-code-editors-and-how-to-setup-eslint/))
- Version control - GitHub or Gitlab, BitBucket
- For JavaScript developers - Node and Node Version manager (nvm)
- Package managers - Node package manager (npm) or Yarn, Homebrew for Macs in your local environment.

## Useful Apps and GUIs

1.[Install Chrome](https://google.com/chrome) - chrome has the best developer tools, although Firefox and Safari have their own versions, personally I use Chrome for all my dev work. I also have Firefox and Duckduckgo as my non-developer browsers. I haven't warmed to Safari - once again these are all personal/ institutional choices if you are working in a team with its own corporate preferences.

You will need to have a gmail account to install chrome and its extensions. One of the advantages of chrome once you install it is when you change computers you can sync the bookmarks and extensions of your choice. This immediately makes the other tasks of connecting your local to Github, AWS, GCS and all your other go-to developer bookmarked sites so easy.

_Cheatsheet to install Chrome_
      - Check your chrome version [https://www.whatismybrowser.com/detect/what-version-of-chrome-do-i-have]. If you have an older version update it [https://www.whatismybrowser.com/guides/how-to-update-your-browser/chrome]. This is useful as the installed version on a laptop may not be the latest chrome version, which means your bookmarks may not sync effectively.
    - Go to [https://google.com/chrome](https://google.com/chrome)
    - Click on `Download Chrome`
    - Go to the Downloads folder and run the `googlechrome.dmg` package
    - Drag the icon into the Applications folder
    - Add Chrome to your dock and open it
    - Select `set Chrome as my default browser`

**Google Chrome Extensions**
1. React dev tools Docs[https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en]
2. Redux dev tools [https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd]
3. Node Inspector Monitor - Docs [https://chrome.google.com/webstore/detail/nodejs-v8-inspector-manag/gnhhdgbaldcilmgcpfddgdbkhjohddkj?hl=en]

__React / redux in the browser__

While most new react features are being developed, they are completely hidden from customers, but we still have a way to interact with the new react code as it is loaded like other JS bundles.

__React Developer Tools__

To be able to view the react component tree in the chrome console, please install [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
You will then have a "React" tab in your chrome developer tools.

If you click on this, and open the console (Esc) at the same time, you'll have access to the `store provider` in there, through a variable named `$r`.

Then, you can get the store state with `$r.store.getState()`, and dispatch actions with `r.store.dispatch(<< ACTION OBJECT >>);`

Right now, as we develop a component, you can show it once the page has loaded with:
`r.store.dispatch({ type: 'APP_SHOW_SIDE_SLIDER'});`

__Redux DevTools__

While the React developer tools give you access to the store, it's cumbersome to inspect the current store state and dispatch actions. There is an easier way, with another extension: [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)

The front-end code is already configured to use it if it's installed in your browser, so all you have to do is install the browser extension.

Again, you'll have a new tab named "Redux" in your Chrome Developer Tools.
From there, you can inspect the current state ('state' tab, top right), see all the actions that have been dispatched (list on the left when using the 'inspector'), see the content of a selected action in this list (select action in list, then select the 'Action' tab, top right), or dispatch a new action from the textArea at the bottom.

Like with the React Developer Tools, you need to use `APP_SHOW_SIDE_SLIDER` as an action type, so you would enter the following in the textArea and hit 'dispatch' at the bottom right:

```
{
    TYPE: 'APP_SHOW_SIDE_SLIDER'
}
```
<br> -->

2. [Sign up to Slack](https://www.slack.com/) a popular developer messaging service. Slack has a native app available on the App store. It's the first thing I install, if you haven't already,  online, and install the OS app. Once it has downloaded you'll find it your the Applications folder. Drag it into the dock and launch the app.



3. Checking API calls Insomnia/ Postman are apps that will allow us to make requests to web servers, and visualise the responses that they make. Either is fine, it is a matter of preference.

- [Download Insomnia](https://insomnia.rest/)
  
- [Download Postman](https://www.postman.com/downloads/) Postman now has 2 downloads for the older intelchip as well as the m1-m2 chips. To check which chip go to the apple icon. You will need to create a free account.

Copy the chosen app it into your Applications folder and add it to your dock.
