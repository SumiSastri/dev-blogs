
<!-- 
rsh (remote shell)


## GUI applications 

**Google Chrome**
- Check your chrome version [https://www.whatismybrowser.com/detect/what-version-of-chrome-do-i-have] At the time of writing the browser is: Chrome 85 on macOS (Catalina) if you have an older version update it [https://www.whatismybrowser.com/guides/how-to-update-your-browser/chrome]. If you do not have Chrome installed
- Go to [https://google.com/chrome](https://google.com/chrome)
- Click on `Download Chrome`
- Go to the Downloads folder and run the `googlechrome.dmg` package
- Drag the icon into the Applications folder
- Add Chrome to your dock and open it
- Select `set Chrome as my default browser`


8. Slack

Slack has a native app available on the App store. If you haven't already, [sign up to Slack](https://www.slack.com/) online, and install the OS app. Once it has downloaded you'll find it your the Applications folder. Drag it into the dock and launch the app.

<br>

9. Insomnia/ Postman

Insmonia/ Postman are apps that will allow us to make requests to web servers, and visualise the responses that they make.

Download Insomnia[[https://insomnia.rest/](https://insomnia.rest/) ]
Download Postman [https://www.postman.com/downloads/]

Copy the chosen app it into your Applications folder and add it to your dock.

<br>


## Pretty git prompt

You can configure the terminal to include a colourful prompt showing the current git branch next to the cursor.

Add the following to your `~/.bash_profile` and restart the session:

```
export CLICOLOR=1
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
reset=$(tput sgr0)
export PS1='\w \[\033[01;32m\]$(__git_ps1)\[$reset\] \$ '
```

## Basic tools

During the development process you need to check you Mac has the

- A code editor or IDE (integrated development environment) - Atom, Visual Studio Code, Sublime Text
- Version control - GitHub or Gitlab, BitBucket
- For JavaScript developers - Node and Node Version manager (nvm)
- Package managers - Node package manager (npm) or Yarn




Concatinating paths
[https://www.cyberciti.biz/faq/linux-unix-appleosx-bsd-cat-command-examples/]

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
