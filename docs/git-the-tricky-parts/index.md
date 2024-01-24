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



**Useful git commands working in a branch**

[$git branch -vv] gives you branch version
[$git branch -d branch-name] delete a branch check out of remote
[$git remote prune origin] removes a non-existent branch
[$git branch —unset-upstream] removes an upstream not linked to branch
[$git pull origin remotebranch] in case local branch not set to track remote
[$git checkout origin branch name]
[$git fetch]
[$git fetch origin]
[$git merge origin master] if origin branch deleted
[git pull origin remotebranch] in case local branch not set to track remote

- deleting branches (see Medium article)
  [git fetch origin] [git merge origin master] if origin branch deleted by mistake [git branch —unset-upstream]