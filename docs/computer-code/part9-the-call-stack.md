### What is the call stack and critical render path?

The critical render path is how browser engines read different languages - HTML, CSS and JavaScript and the order they are read in is the call stack. HTML is parsed first, then CSS and then JavaScript.

JavaScript being a loosely typed language - stores variables that can be changed - asynchronous and single-threaded means that browsers parse the language in the most convenient order in the call stack. 

The Document Object Model (DOM), which is a copy of the node-tree on a webpage,  queries HTML and CSS and returns an object which then can be mutated. JavaScript accesses the DOM and then is run on each node. When using vanilla JavaScript, it is required to put the scripts between body and html for set up so that the browser can parse the script. With JavaScript libraries, the MVC (model-view-control) method is used to access the DOM via a virtual DOM. The method of access to the DOM depends on the library - jQuery, React-js, Node-js are library dependencies that access the DOM in different ways.

The browser complies code first by looking at the syntax (lexical compliation)
- if it detects syntax errors and the code does not run
- if it detects blocks of code in the function - conditionals, loops, variables etc., then it looks at the scope of the function and what is within and what is referenced
- then in the browser memory, it runs the new code and stores it in the window object
- by default all code is in the window scope therefore window.alert() can be called anywhere. (go to console type window to check root scope)
- Since the DOM is an internal API you have the traditional API calls
```get``` which is the ```getElement``` function. Once the data has been fetched by the DOM API, you can perform other methods available from the DOM-API ```setAttribute = post``` or ```removeElement = delete``` For example, ```-getElementsByTagName() - setAttribute() - removeElementById();``` are all the DOM-API methods.

### Why is code readability important?
Making code readable improves efficiency. Statements can be broken with the semicolon or operators. If a statement is more than 80 characters it is recommended to use breaks. Curly braces show a list of code block to be executed together ```{ }```. For namespaces to start with a number, for example browsers will try to parse (read) it as a number rather than a naming convention. Browser engines are also case sensitive, therefore ```nameOfFunction``` and ```nameoffunction``` will be read as 2 different identifiers and code breaks/ has unintended side-effects. Similarly ```id``` , ```iD``` & ```ID``` are three different name spaces. Hypens will be read as subtraction signs. Each language has its own naming conventions, lower camelCase is preferred as the first alphabet in upper case, denotes the namespace belongs to the class keyword. Similarly commas separate variables, semi-colons statements or one line of code. Browsers stop running the code when they reaches the return statement. For all these reasons code readability and the right syntax are important.

