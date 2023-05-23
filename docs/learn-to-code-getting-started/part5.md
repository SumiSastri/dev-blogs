---
layout: default
title: Part 5 - How the internet works
parent: Learn to code - getting started
---

# Part 5 - how the internet works

To take advantage of the content in this section, you need to

- create an account with [Netifly](https://www.netlify.com/)
- download a code editor - [Sublime Text is good for beginners](https://www.sublimetext.com/)
- set up a [GitHub account](https://github.com/)
- have read the parts 1–4 in this series

As we are going to deploy our portfolio site to the web, it is useful to know how the internet works and how your files are read, stored and received by your users and viewers.

The internet, is just a network of computers that talk to each other over a computer network. A network can be made up of 2 or more computers.

The internet connects trillions of computers and mobile devices over the world, using the world-wide-web. The internet itself is a data-layer over the web that shares all of this information.
This information is collected via web-browsers, from websites.

Web-browsers are software-engines that read and interpret the computer code from web or mobile apps and transmits this information via unique-resource-locator(URL) to a server. A server hosts billions of URLs and "serves" them back to any other user who is interested in this information.

All of this information is written in code on 1 computer (client) sent to a server via an IP address - a series of numbers that uniquely identifies a computer - and then the server sends this information back to a user. This process is often called the client-server model.

If you are a buyer and are looking for a product to buy, your laptop is the client, your request for a URL goes via interconnected servers managed by the DNS (Domain Name System) to the seller's computer (another client) and serves back the content hosted on an URL once again through this network of servers back to your laptop or mobile device all in a matter of micro-seconds.

## How HTML, CSS & JavaScript are parsed on the web

When a request comes in to the client - your computer with your HTML, CSS and JavaScript files - via your computer's operating system allows the files on your system to be read by or parsed by the web browser.

The first files that are fetched are HTML and CSS. Then JavaScript, via its connectivity to the Document Object Model, or DOM, is parsed. (Part 4, in this series, explains the DOM-tree and how JavaScript interacts with HTML and CSS.)

What Netifly does is a pre-rendering, pre-reading, or a pre-parsing of these files, before the file is actually transferred to the URL where it is hosted.

Traditional websites need the client-server model to run. Running sites this way needlessly slows things down, provides way too many opportunities for attack, and is expensive to scale.

Unlike the large legacy apps, JAM-stack projects neatly separate the frontend pages and UI from the backend apps and databases. JAM refers to JavaScript, APIs and Markup (HTML & CSS). APIs are application protocol interfaces, or a way of getting data from the back-end to the front-end, without relying on a server.

Part 2, in this series, outlines the benefits of the JAM stack.

Freed from backend servers, websites run faster with automated deployments of the code you have written.

Rather than building content at runtime for each request, content is prebuilt and optimised during a build setup using a site generator and other build tools.

Decoupling the frontend from the backend allows for more modular development.

Read Part 1, 2 in the series if you have missed them to understand the difference between front-end and back-end code bases.

## File Set-up on Sublime Text

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

The Terminal is a Command Line Interface(CLI) that allows you to interact directly with your laptop's operating system.
You can use it to run programmes, manage files and folders and install software.

- With a Mac cmd + space - you will get spotlight search
- Type Terminal in the search bar and hit enter
- You will get your mac's default Terminal

With Windows window icon

- Type Terminal in the search bar and hit enter
- You will get your Windows's default Terminal

Further reading on the CLI
[Unix CLI ](https://www.cs.dartmouth.edu/~campbell/cs50/shellcontinued.html)

Some useful terminal commands (the dollar symbol indicates you must start at terminal leaving no spaces between the first character you type and the terminal file path end)

- $ls - (this will list all the files in your computer drive\_
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

Just by attempting to set these steps up and familiarising yourself with these tools gives you the destination you are headed for.

It takes 3–4 months of learning everything else to deploy a site successfully.

If you got it done after several tries, amazing and good job. It all will get done in due course - stay calm and keep coding!

If you didn't manage to get your site deployed. Persist with the several excellent free tutorials on GitHub that are well worth checking out.

If you want to look at [the source files for the Spinning Snakes Project](https://github.com/SumiSastri/javascript-spinning-snakes) which I have deployed here.

Go to my GitHub repo link and download the zip-files. You can try and see how this project works on CodePen, with Sublime Text and see if you can push these files to your own GitHub repo. Try to deploy your version of the project on Netifly. Check out CSS animations as the snakes spin not because of JavaScript but because of CSS. And above all have fun!

Thanks for your time and for making it to the end of this series :-).
