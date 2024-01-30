---
layout: default
parent: Version Control
nav_order: 8
title: How to setup and use a GitHub repo or repository 
---

# How to setup and use a GitHub repo or repository 

Repositories are created for personal side projects and for commercial organisations to maintain their code base.

- to create a new repository on the command line
  echo "# testing-with-jest" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin — **(use HTTPS url not SSH)**
  git push -u origin main

- to push an existing repository from the command line
  git remote add origin **(use HTTPS url not SSH)**
  git branch -M main
  git push -u origin main

Git workflow [https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow]

#### `.DS_Store` files

`.DS_Store` files are used by Mac OS X to store folder specific metadata information. They are different for every mac, it means that they often cause conflicts in version controlled folders.

#### `node_modules`, `bower_components` & `.sass-cache`

In the same way, we want to never track the contents of our node_modules, bower_components or .sass-cache folder as these are not part of our source code and do not need to be committed.

Open the `.gitignore_global` file in terminal

```
open .gitignore_global
```

And add the following lines:

```
.DS_Store
node_modules
.sass-cache
.env
*.log
```

**Save** and close the file.

