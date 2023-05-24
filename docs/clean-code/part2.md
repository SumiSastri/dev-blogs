---
layout: default
title: Part 2 - Code editors and linting
parent: Clean Code
nav_order: 3
---

# Part 2 - Code editors and linting

There are as many code editors as there are coding languages. Before code editors were developed, Notepad and TextEdit on Macs were used or vim - on the computer terminal.

Modern code editors come with many extensions to help code writers write and edit code as well as check formatting and syntax. They also provide you with a linter, which is a tool that analyses your code and flags up errors, bugs, syntax mistakes and incorrect code constructs.

Linting is a programme that can be run to scan your code and keep it clean. As you can imagine, writing lines and lines of code is fatiguing. Nobody writes bad code because they want to. The nature of the beast - code being lines of programmatic instructions that need to be parsed and executed - depends on every indent, comma, spelling and use of a code block being rigid and adhere to rules. This becomes humanly impossible to monitor as you will find if you rely on Notepad, for example as a text editor.

Linting therefore keeps track of code inconsitencies and is 1 tool to use to keep code that smells at bay. For more, here's [a good read from freeCodeCamp](https://www.freecodecamp.org/news/what-is-linting-and-how-can-it-save-you-time/)

An IDE - Integrated Development Environment - is a code editor on speed.

Like all things, choosing a code editor is a matter or personal preference and what you are using the code editor for. Code sandboxes provide a good first step to working on code if all you need is to check syntax, errors and if the code works.

Language specific code editors - like PyCharm - are great for Python. IDE's like Vim and Visual Studio Code, which is what I have migrated to after using Vim, Sublime Text, Scribd and Atom, suits my needs as it has several great extensions and integrates with GitHub seamlessly.

Sublime Text although good for beginners, is annoying as it interupts your code flow with regular prompts to upgrade to a paid version - which you can ignore when you are using it infrequently, but becomes intrusive when you want to code in peace. For a beginner who has gone beyond the useful functions of CodePen, code sandboxes and Sublime Text, Atom is a good free option to set up shop with and start projects in HTML, CSS and JavaScript.

This blog is pretty Mac-centric, so a small note - **Commander (cmder)** allows you to run the same commands on Macs/ Windows/ Linux - and especially good for windows.

## Linter set up - ESLint

- Install the following eslint packages globally with package managers `yarn` or `npm`

```sh
yarn global add eslint eslint-plugin-react babel-eslint

npm install eslint eslint-plugin-react babel-eslint

```

- Create an `.eslintrc` file - note this is a dotfile

```open .eslintrc``` if you want to check pre-set linter rules in a code base

- In your terminal copy and paste - this programs the terminal to open your code editors

```code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}```
​
After you should be able to now use VS Code with the command `code .` or Atom with `atom .`

## Vim - the IDE everyone loves to hate

Vim is an editor that is on every Mac terminal by default. All you need to do is type `vi` in your Mac terminal and the IDE fires up. Type `I` (insert and edit), escape from the command mode. You can quit `:q` (quit), `:qa` (quit all tabs the quit commands do do not save edits). The command for editing is to write and then quit `:wq` (write & quit) or `:wqa` (write and quit all tabs).

Created by Bram Moolenaar in 1991 as an upgrade from the 1970s version, Vim is free, open-source and light-weight. It is easy to use but for the unfamiliar, a bit clunky and the vim commands can be a bit difficult to understand, at first.

[This guide](https://vim.rtorr.com/) might help. I use Vim, when I have to - for adding configs and some other tasks, but it is not my preferred IDE. However, this is a great guide if you want to check it out - [codecademy guide](https://www.codecademy.com/resources/blog/what-is-vim/) and [freeCodeCamp](https://www.freecodecamp.org/news/vim-language-and-motions-explained/) provides a more detailed guide.

## Atom set up and linting for JavaScript

If you are using Atom as our text editor of choice. It's similar in many ways to Sublime Text, but it has a nice user interface and a lot of 3rd-party plugins and packages that we can use to help us code more efficiently, and hopefully make fewer typos along the way.

To use and install:-

1. Download [Atom](https://atom.io/).
2. Copy it into your `Applications` folder, and add it to your dock.
3. Open Atom and click on the `Atom` menu then `Install Shell Commands`
4. Un-check the box on the left hand panel `Show Welcome Guide when opening Atom`
5. Type <kbd>cmd</kbd> + <kbd>,</kbd> to open the preferences. Click on the _Themes_ tab and set the UI theme **and** the syntax theme to _One Light_
6. In the _Core_ panel, make the following change:
   - **Exclude VCS Ignored Paths** - _uncheck_
7. In the _Editor_ panel, make the following changes:
   - **Show Indent Guide** – _check_
   - **Show Invisibles** - _check_
   - **Tab Type** > _soft_
   - Copy and paste the following command into the terminal - this installs options to edit, clean and lint your code keeping it clean without manual intervention

    ```sh
    apm install auto-indent atom-ternjs file-icons language-ejs language-babel linter linter-erb linter-csslint linter-eslint linter-js-yaml linter-ruby open-in-browser ruby-block pigments sublime-style-column-selection
    ```

8. ​Atom has a package called atom-linter that we can configure to work with eslint to check our code _as we type_. We'll set up this next. We're going to define a set of rules for `eslint` to use. From the terminal, run the following command:
   ​

    ```sh
    atom ~/.eslintrc
    ```

You might come across some blue notifications on the right hand side, just say `yes` to all of the installations. Cut and paste the following text into the file you just opened in Atom. This JavaScript Notation file (`.json` file) runs the linter's scanning and programming function through your code base.
​

  ```json
  {
    "env": {
      "browser": true,
      "commonjs": true,
      "es6": true,
      "node": true
    },
    "plugins": ["react"],
    "extends": ["eslint:recommended", "plugin:react/recommended"],
    "globals": {
      "angular": true,
      "$": true
    },
    "parser": "babel-eslint",
    "parserOptions": {
      "sourceType": "module",
      "ecmaVersion": 7,
      "ecmaFeatures": {
        "jsx": true
      }
    },
    "rules": {
      "brace-style": "error",
      "camelcase": ["error", { "properties": "never" }],
      "comma-dangle": ["error", "never"],
      "func-call-spacing": ["error", "never"],
      "eqeqeq": "warn",
      "indent": ["error", 2, { "SwitchCase": 1 }],
      "key-spacing": ["error", { "beforeColon": false }],
      "no-console": "off",
      "no-fallthrough": "warn",
      "prefer-const": "error",
      "quotes": ["error", "single"],
      "semi": ["error", "never"],
      "react/prop-types": [0]
    }
  }
  ```

And now **save the file** in Atom with <kbd>cmd</kbd> + <kbd>S</kbd>.
​
9. Keeping your code indented is so important and because of this we are going to give you a shortcut to automaticly indent all code in the file you are viewing.
   ​
   Whilst on atom:

- click on "Atom" in the topbar and select `Keymap...`
- Add this to the bottom of the file
- This yaml (`.yml` file) is a lightweight script that formats your editor's indenting functionality for your
  ​

  ```yml
  "atom-text-editor":
    "cmd-shift-r": "editor:auto-indent"
  ```

Save file and <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>R</kbd> will be the shortcut to auto indent!

**Cleaning up and linking set up** Back in Atom's preferences

- Click on the packages tab and search for the `linter-eslint` and click on "Settings" for this package.
- Find where it says `.eslintrc Path`, set it to `~/.eslintrc`
- Make sure the box for `Disable when no ESLint config is found` is **unchecked**
- Set `Global Node installation Path` to `/Users/username/.config/yarn/global`, replacing `username` with your username. If you are not sure what that is ask your instructor for help.
- Check the `Use global ESLint installation` checkbox
  ​
  **Now quit Atom** and you are ready to use it.

## VS Code and my favourite extensions

​If you are using VS Code as our text editor of choice and a mac, you can download it and read the
[Documentation](https://code.visualstudio.com/docs/setup/setup-overview). Once you have used Atom, you will find VS Code easy to use and intuitive. Some useful [keyboard shortcuts for reference](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)

Some quick ones that are handy <kbd>cmd</kbd> plus

- a selects all + c copies + x cuts + v pastes + z undo
- b toggle open and close side bar with file names
- d - find next match of a word - word by word
- f finds a word at file level
- f2 finds and selects all occurances of the word and you can change all occurances
- p opens a new file allows you to switch between files double click the tab to keep it permanantly docked in the tab
- k opens a preview mode tab hit enter allows you to keep it permanently docked in the tab you have opened

<kbd>alt</kbd> plus

- arrow up moves selected line of code up the arrow down moves the code to the line below

<kbd>alt</kbd> plus <kbd>shift</kbd> plus

- arrow up or down duplicates the code line selected 1 line up or down

<kbd>cmd</kbd> plus <kbd>shift</kbd> plus

- e - go to explorer
- f - go to finder

<kbd>control</kbd> plus <kbd>shift</kbd> plus

- g goes to the files you have changed

<kbd>cmd</kbd> plus <kbd>option</kbd> plus

- s saves all open files

Once you use these commands often enough, they become a part of your DNA and you will do it without thinking :-)

### VS Code extensions - my go to list**

- Prettier - code formatting
- VSCode pdf - save pdf's and read them in vscode
- Bracket pair colorizer - colors pairs of brackets to identify code blocks
- Live Server - opens html files serves it on a real port
- Live Share - share code and collaborate
- Markdown pdf - markdown for pdf's
- MPEG-4 Preview - saves mp4 files that you can view in the IDE
- Prettier - cleans up formatting
- Thunder client - great for api's and a substitute for postman so that you can work on apis and check data within the IDE

### VS Code extensions - how long is a peice of string

There are a ton of extensions which can be used - I have tried some of these and removed them as I don't need them on a day-to-day basis. You will develop your own list of faves too...

- Advanced new file - allows you to run `>new file` gives you a drop-down selector to show file paths you can put the new fiel in
- Better comments - if you add comments highlights it in different colors
- Quokka - javascript playground/ scratchpad/ sandbox
- Polacode - generates snippets to share in other files
- Bookmarks - use it to mark blocks of code and toggle between codeblocks in files
- Cloak - hides .env files and api keys/ passwords
- CSS Peek - checks css code by class and id
- Debugger for Chrome - for html and vanilla javascript
- DotEnv - different colors for different variables
- EditorConfig for VSCode - team formating of code
- ES7 React/Redux/GraphQL/React-Native snippets - code snippets for React-Redux
  When to use code snippets (<https://www.freecodecamp.org/news/definitive-guide-to-snippets-visual-studio-code/>)
- FaunaDB - for databases
- Kite - ai code intellisense
- Import cost - file sizes

While this is only a small sample, if you want to know more about how to choose and editor and what's out there, [Hostinger](https://www.hostinger.com/tutorials/best-code-editors) has a good summary that is worth checking out.
