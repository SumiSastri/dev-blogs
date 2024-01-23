#### Merge conflicts

With many contributors writing to the same codebase simultatneously merge conflicts can and will occur. Most merges will be conflict free but for merges that need conflict resolvement the following tips can be used.

- All changes post-merge conflict must be reviewed. This is because merge conflicts are another code change that should be additionally reviewed.

- For non-trivial merges work with the commitor to understand what was changed and how best to resolve the conflict on a case by case basis.

**Handling merge conflicts**

$git merge --abort [Since git version 1.7.4]
$git reset --merge [prior git versions]
$git merge —continue
$git fetch —all
$git merge --no-ff -branchname (merge a branch with no fast forwards)

(Stack-overflow- debugging)[https://stackoverflow.com/questions/11646107/you-have-not-concluded-your-merge-merge-head-exists]

Discarding changes [git stash] [git stash apply] [git stash pop]

Some other remote commands:

$git remote update -- you may not have accurately matched local to remote
$git remote prune origin -- removes a non-existent branch
$git pull origin remote-branch -- in case local branch not set to track upstream branch
$git fetch origin
$git merge origin master -- if origin branch deleted by mistake
$git remote remove -- remove remote branch from your local repo
$git reset HEAD^
$git reset --hard -- reset the branch to the last commit
$git branch —unset-upstream -- You may also have by mistake created 2 branches in conflict with each other
$git push --force origin master -- When you are working on a project on your own, it pushes your local changes to a cloned repo
$git remote -v -- checks what is on branch and committed

Stack-overflow- debugging:
https://stackoverflow.com/questions/4114095/how-do-i-revert-a-git-repository-to-a-previous-commit/4114122#4114122

Merge conflicts - more reading
https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow
https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts
https://www.atlassian.com/git/tutorials/using-branches/merge-strategy
https://www.atlassian.com/git/tutorials/comparing-workflows
https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow
https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow

https://support.beanstalkapp.com/article/1004-how-do-i-undo-things-in-git
https://docs.gitlab.com/ee/topics/git/numerous_undo_possibilities_in_git/