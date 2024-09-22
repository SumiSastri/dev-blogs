---
layout: default
parent: GitHub Repo Management
nav_order: 10
title: How to change a local Git branch name in five easy steps
---

# How to change a local Git branch name in five easy steps

Changing a branch name in Git sounds easy but there are some gotchas. Here's an easy way to get it right.

Git is a tool that tracks changes to source code, and it's very basic. That's what it does. It tracks changes to any file, but it's mostly used for source code files. 

[In Part 2 the article on Git and Git heads](https://sumisastri.github.io/dev-blogs/github-repo-management/part2-creating-updating-merging-branches/) provides some context on how git as a version control system works under the hood.

The challenge is once a file is created, it is created permanently.

Let's look at this scenario.

You've checked of your master branch and created a file `git checkout -b "My-bile-name"` and you hit enter without really reading what you have written, or fat fingers and hit the enter button too fast.

Now you haven't really noticed this and you have continued to write some code that you really need in the branch. And you don't want to lose the code you have written.

We've all been there… so what do you do to change the file name to `My-file-name`. Remember, the challenge is that `My bile name` has been created and will remain in the repository permanently. If you do not delete this branch the code from both branches collide.

It is not as simple as just changing a file name and the code you have written in one file gets transferred to the file with the new file name.

You have to also solve the challenge of having a lurking file that is tracking changes to your code in a separate origin head to delete.

Here are 5 easy steps to follow to change your branch name, transfer the code to the new branch and delete the old branch

To cut to the chase
1. Checkout of the branch with the incorrect name `git checkout any-other-branch`
2. Change branch name - `git branch –m old-name new-name `
3. Check in to new branch `git checkout new-name`
4. Push changes to the new origin head `git push -u origin new-name`
5. Safely delete old branch `git push -d origin old-name`

For a little more detail on the steps following an example and seeing how this works.

Step 1:
If you are in the branch `My-bile-name`, checkout of the branch into another branch `git checkout any-other-branch`.

Step 2:
Change the name of the branch `git branch –m old-name new-name`. To follow the example above `git branch -m My-bile-name My-file-name`. The `m` flag denotes move.

Step 3:
Now you can check into your new branch `git checkout new-name`. To follow the example `git checkout My-file-name`

Step 4:
You need to make sure that the code in the old branch is now pushed to the new origin head so you run the command `git push -u origin new-name`. Again to follow the example `git push -u origin My-file-name`. This command maps the code from your old branch `My-bile-name` to the new branch `My-file-name`.
You should see a success message [new branch] new-name-> new-name branch 'new-name' set up to track 'origin/new-name`, or as in the example[new branch] My-file-name -> My-file-name branch 'My-file-name' set up to track 'origin/My-file-name`.

Step 5:
Check the list of branches `git branch -a` you will see your old branch and to avoid code collision you need to delete this branch. You can also go to GitHub, if that is your version control system and create your pull request. You will see both branches here as well. Or if you use a GUI to check version control you can also check your GUI for the branches that are live.

As you are checked into the branch `My-file-name` you can now safely delete the old origin head of the branch `My-bile-name` running the command `git push -d origin old-name` or as in the example `git push -d origin My-bile-name`.

You should get a confirmation message in terminal - [deleted] old-branch

The local and remote now will have only one branch with all the commits in the new branch. The old branch has been safely deleted after new branch created.

__Additional answers and resources__
A general google search also provides a lot of answers - but I personally found the answers confusing as the steps are there but why you are executing the steps in a particular order was not.

- [Git documentation](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/renaming-a-branch) always the best option to go to source!
- There are good examples on [Stack Overflow](https://stackoverflow.com/questions/6591213/how-can-i-rename-a-local-git-branch) as well on this link if you want to see other ways to solve - the challenge you are facing on the question How do I rename a local git branch?
- If you find you follow video-tutorials better I recommend this [YouTube](https://www.youtube.com/watch?v=oaIrEwzBXuY&t=87s) really thorough and easy to understand with a few ways to rename a local git branch. 
- And for complete beginners this [tutorial from WebKraken](https://www.youtube.com/watch?v=cEfoB8Hl2gY)is even better!
