Not to be used in team situation where you may need to stash local changes then pull/merge remote branch

Check what you have done

[git remote -v] checks what is on branch and committed

Some other remote commands

[git remote update] you may not have accurately matched local to remote

[git remote prune origin] removes a non-existent branch

[git pull origin remote-branch] in case local branch not set to track remote

[git fetch origin] [git merge origin master] if origin branch deleted by mistake

You may also have by mistake created 2 branches in conflict with each other

[git branch —unset-upstream]





- deleting branches (see Medium article)
  [git fetch origin] [git merge origin master] if origin branch deleted by mistake [git branch —unset-upstream]



Add/Change/ Delete - the imperative is best practice when adding a line to your commit message
Adding tickets and other links in a longer commit gives the change context and helps management and maintainence of the code by multiple developers.

To check the difference between one and another commit the command `git diff` with the names of the 2 files to compare by their identifying identifier numbers.

To look at the exact version of each commit you can use the command `git checkout ` with the identifying number of the commit - you can then see the exact code in that commit

__Multiple versions of the code base__

Git also helps collaboration with multiple versions of the code diverging and being updated as team members work on different aspects of the code base.

A main version keeps track of all changes from all contributors from all branches(formerly known as the master version). A branch version keeps track of the individual changes in the branch is rolled up and merged into the main version.

The main version is constantly updated by branch merges into the main version and the branch is updated will any changes from main with a `git pull` command

As another branch is added if there are conflicting versions of the code the version conflicts must be fixed before they are merged into the master of main version of the branch

`git checkout <branchname>` you will get to the branch
To merge it back into the main branch you go into the branch `git checkout main`
Merge the branch `git merge <branchname>` into the main version

This is the simple example but in a large organisation you can have multiple repos with multiple main branches that need to be integrated not at the development stage level but when all these branches are integrated and tested together to see each peice of the jigsaw works as a whole.
