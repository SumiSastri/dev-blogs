Rebasing:
From current branch:
$ git checkout -b diverging-branch
$ git rebase master
$ git checkout master
$ git pull
Go back to current branch and merge master

git checkout -b diverging-branch
git branch -d master
git pull
git checkout master

Fast forwards
Stack overflow: https://stackoverflow.com/questions/16288176/your-branch-is-ahead-of-origin-master-by-3-commits

- Look at the log
  git log --pretty=format:"%cn - %cd %h %s %t"  
  git log --graph --oneline --decorate --all

- Look at diff
  git diff master origin/master

$git revert - commit #
(run "git revert --continue" to continue)
(use "git revert --skip" to skip this patch)
(use "git revert --abort" to cancel the revert operation)

$git reset - - head -hard (resets it to one commit previous)
git reset --hard origin/master (resets to master)

- Look at diff again to check it has worked
  git diff master origin/master

It might be a question of rebasing - pulling changes and rebasing to the right node of divergence
git pull --rebase

Git:
git remote add origin https://github.com/SumiSastri/react-api-mash-up.git
git branch -M main
git push -u origin main

Quit in terminal commands

Control q

Control c

Vim – control +shift + ;

GH - Create a repo in the app

Copy ssh key

Create a local file

Initialise with git [git init]

Link remote and local

[git remote add origin “” ssh link]

Make your first commit

[git commit -m”initial commit”]

Make the first push by linking remote and local

[git push -u origin master]
git push --set-upstream origin main

If you have not linked the files remove the git initialisation

[rm –rf .git]