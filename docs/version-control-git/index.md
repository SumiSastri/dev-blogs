Docs toc https://git-scm.com/docs

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
