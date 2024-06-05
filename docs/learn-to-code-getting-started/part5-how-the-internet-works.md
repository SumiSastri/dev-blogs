---
layout: default
title: How the internet works
parent: Learn to code - getting started
nav_order: 2
last_updated: May 2024
---

# How the internet works

To take advantage of the content in this section, you need to

- create an account with [Netifly](https://www.netlify.com/)
- download a code editor - [Sublime Text is good for beginners](https://www.sublimetext.com/)
- set up a [GitHub account](https://github.com/)

As we are going to deploy our portfolio site to the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web, it is useful to know how the internet works and how your files are read, stored and received by your users and viewers.

The internet, is just a network of computers that talk to each other over a computer network. A network can be made up of 2 or more computers.

The internet connects trillions of computers and mobile devices over the world, using the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web. The internet itself is a data-layer over the Web that shares all of this information. This information is collected via web-browsers, from websites.

Web-browsers are software-engines that read and interpret the computer code from web or mobile apps and transmits this information via URLs (Unique Resource Locators) to a server. A server hosts billions of URLs and "serves" them back to any other user who is interested in this information.

All of this information is written in code on a computer (client) sent to a server via an IP address - a series of numbers that uniquely identifies a computer - and then the server sends this information back to a user. This process is often called the client-server model.

If you are a buyer and are looking for a product to buy, your laptop is the client, your request for a URL goes via interconnected servers managed by the DNS (Domain Name System) to the seller's computer (another client) and serves back the content hosted on an URL once again through this network of servers back to your laptop or mobile device all in a matter of micro-seconds.

## How HTML, CSS and JavaScript are parsed on the Web

When a request comes in to the client - your computer with your  HTML (Hyper Text Markup Language), CSS (Cascading Style Sheets) and JavaScript files - via your computer's operating system allows the files on your system to be read by or parsed by a browser, which is a software interface that connects users to the Web.

In the 1990s, there were several browsers competing with each other as interfaces between end-users and servers that connect the Web. In that phase, Netscape, Microsoft's Internet Explorer were dominant players. Google, came in as a late entrant. Investing significant engineering resources to make source code written by web developers easy for computers to read and decode, google made giant strides grabbing market share. Its V8 JavaScript engine, along with the Chrome browser, became a dominant player ousting Netscape, Explorer and to a signficant extent, even Safari.

Browsers under the hood, all work to the same task, converting source code into machine-readable code. The source files - your HTML, CSS and JavaScript files -  are injested by the browser and then the browser engine reads the HTML files first to understand the page structure.

 CSS files are read next to understand how the page is "painted" or how it looks. Read [Part 3](https://sumisastri.github.io/dev-blogs/learn-to-code-getting-started/part3-learn-html-css-javascript/) in this series if you want to get the context of this process.
 
 Then JavaScript, via its connectivity to the Document Object Model, or DOM, is parsed. Read [Part 4](https://sumisastri.github.io/dev-blogs/learn-to-code-getting-started/part4-free-portfolio-template-html-css-javascript/), in this series, to get a quick overview on how JavaScript interacts with HTML and CSS.

Once the code is transferred to machine readable code, it is then sent via the network layer in the browser to a server. The server then sends the data via the DNS.

The DNS is a directory of the names of all registered web domains.The DNS matches the URLs of a web page, the name of the website to the IP (internet protocol) associated with the webpage.

The network of servers are connected by underground pipes/ cables that send packets of information from the client to the servers to the DNS that can be located anywhere in the world.

Traditional websites need the client-server model to run. The data is then sent back to the browser and by a process of reverse engineering, the information is sent to the "rendering" engine in the browser. 

The page's HTML nodes set out the page structure, the CSS is "painted" in and the each node in the DOM-tree is "hydrated" with the JavaScript, this is the task of the rendering engine.

However, this is not the only way the rendering engine can render pages. A quick way is to by-pass servers by using application programming interfaces (APIs). Web-APIs, can use pre-configured and pre-rendered pages giving the browser engine less work to do. These pre-configured pages render faster.

The hosting service Netifly, we are using for this project, performs this pre-rendering or pre-parsing of these files, before the file is actually transferred to the URL where it is hosted.

Freed from backend servers, websites run faster with automated deployments of the code you have written.

Rather than building content, brick-by-brick or codeline-by-codeline, where the HTML is set up, then the CSS painted and then the JavaScript injected for for each request, content is prebuilt and optimised during a build setup using a site generator and other build tools created by Netifly, and other pre-rendering software services and options.

[For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).

## Source code file set-up on Sublime Text

In Sublime text create a folder and give it a name, for example, _'My porfolio folder'_. If you have not created your own portfolio site go back to Part 4 in this series. Once you have your site, continue with this section.

In this folder open a new file and name it `index.html`. Copy and paste your CodePen HTML-code into this file. This indexes the HTML content for the browser to parse. If you would like to use the code provided in the Portfolio pen then feel free to do so!

Save the file and add another file and name it `styles.css`. Copy and save your CSS-code into this file. Make sure the import in the meta data in the HTML boiler-plate is correct.

Do the same with the JavaScript code in a file called `scripts.js`. Remember this file is imported as meta data just above the closing body tag `</body>`. Check the file has been imported correctly.

## Transfer files to a GitHub repo

Git is the version control system from Microsoft. Version control managers allow you to commit your code. Each version gets a unique id to tag each version. Version control, enhances collaborative code writing, peer reviews and maintaining an evolving code base.

Repositories, or repos, are created both for personal side projects and for commercial organisations to maintain their code base.

You can upload your files following the instructions on GitHub with a single click or you can use your computer terminal and connect your laptop to this cloud-based version-control hub.

Note if you are not already familiar with the Terminal or it gets too much to learn at this stage skip this section and go straight to the section Deploy over Netifly.

## Optional reading - using the terminal and CLI tools

The Terminal is a command line interface (CLI) that allows you to interact directly with your laptop's operating system. You can use it to run programmes, manage files and folders and install software.

_With a Mac cmd + space - you will get spotlight search_

- Type Terminal in the search bar and hit enter
- You will get your mac's default Terminal

_With Windows go to the window icon_

- Type Terminal in the search bar and hit enter
- You will get your Windows's default Terminal

_Further reading_ on the [Unix CLI](https://www.cs.dartmouth.edu/~campbell/cs50/shellcontinued.html)

Some useful terminal commands (the dollar symbol indicates you must start at terminal leaving no spaces between the first character you type and the terminal file path end)

- $ls - (this will list all the files in your computer drive)
- $ls -a - (lists all including hidden files)
- $pwd - (prints the working directory file path)
- $cd -(helps you change directories)

To connect your laptop files to your GitHub repo using the terminal

- $cd (type the full file path and name where you have stored your portfolio folder with the HTML, CSS and JavaScript files)
- $git init (initialise with git)
- $git add README.md/ $mkdir README.md - make a readme file
- $git commit -m"initial commit" -make your first commit
- $git branch -m main (CREATE A NEW MAIN BRANCH TO PUSH CHANGES FROM LOCAL)
- $git remote add origin - **(use HTTPS url not SSH)**
- $git push -u origin main - make the first push and linking remote and local repos.

## Deploy over Netifly

From your GitHub repo, now drag and drop your files into Netifly in the first tab called Site Overview.

Netifly will ask for permission to install software into your GitHub repo and the specific file you want to deploy.

Select your portfolio from your GitHub repo and grant Netifly access.

Click the deploy button at the bottom - ignore all the other sections of the page.

The files are deployed in less than 5 minutes. A random url is generated that you can view your site on.

The random link I was given for this 5 minute deployment for [a repo called spinning snakes is](https://elastic-minsky-12de5c.netlify.app/)

## If at first you don't succeed

This is the most difficult part of the series. Getting to know the Terminal, CLI commands, GitHub and Deployment is a huge amount to learn and get right in the first instance.

Do not be disheartened if you did not succeed.

This is the last hurdle and it takes a whole team in an organisation to deploy websites, set-up version control work flows and clean up code with peer-reviews in the real world.

Just by attempting to set these steps up and familiarising yourself with these tools gives you the destination you are headed for. This series is just to give you a flavour of all the tasks a developer has to perform and you will learn more in a bootcamp or if you choose to teach yourself with all the available online tools and courses in the market.

It takes 3–4 months of learning everything else - the basics of HTML, CSS and JavaScript - even before you get to the stage where you need to deploy a site successfully.

If you got it done after several tries, amazing and good job. It all will get done in due course - stay calm and keep coding!

If you didn't manage to get your site deployed. Persist with the several excellent free tutorials on GitHub that are well worth checking out.

If you want to look at [the source files for the Spinning Snakes Project](https://github.com/SumiSastri/javascript-spinning-snakes) which I have deployed here.

Go to my GitHub repo link and download the zip-files. You can try and see how this project works on CodePen, with Sublime Text and see if you can push these files to your own GitHub repo. Try to deploy your version of the project on Netifly. Check out CSS animations as the snakes spin not because of JavaScript but because of CSS. And above all have fun!

Thanks for your time and for making it to the end of this series :-). If you decide coding is for your all the very best you are in for a wonderful ride. If you think it isn't, at least you have a portfolio site that you can update and deploy like a true pro!
