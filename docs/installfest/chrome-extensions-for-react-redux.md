**Google Chrome Extensions**

__React / redux in the browser__

While most new react features are being developed, they are completely hidden from customers, but we still have a way to interact with the new react code as it is loaded like other JS bundles.

    - [React dev tools Docs](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)

    __React Developer Tools__

    To be able to view the react component tree in the chrome console, please install [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
    You will then have a "React" tab in your chrome developer tools.

    If you click on this, and open the console (Esc) at the same time, you'll have access to the `store provider` in there, through a variable named `$r`.

    Then, you can get the store state with `$r.store.getState()`, and dispatch actions with `r.store.dispatch(<< ACTION OBJECT >>);`

    Right now, as we develop a component, you can show it once the page has loaded with:
    `r.store.dispatch({ type: 'APP_SHOW_SIDE_SLIDER'});`

    - [Redux dev tools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)

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
