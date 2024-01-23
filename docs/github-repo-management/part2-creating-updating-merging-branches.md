## Version control workflows

Working on files

Changes made - changes untracked if the changes not saved
Changes saved and staged - changes tracked
Staged files saved into a commit - tracked changes saved
Committed files with a push - tracked and saved changes transfered to the repository

**Create a branch**
Branching off from the main branch created or cloned enables collaborative and parrallel coding for teams

- [$git pull] (get the lastest version of the branch)
- [$git checkout -b new-branch] (creates a new branch)
- [$git status] (checks the branch and working tree)
- make sure you are in `new-branch` and working tree clean
- spin up your front end and make sure unit tests are running

NAMING CONVENTION FOR BRANCHES:
Ticket-Number-feature-name-of-feature
eg: 123-feature-add-modal

feature/
release/
hotfix/
bugfix/
test/

**Working and committing from a branch**

- write/ save & test code
- $git add . (or add individual files safer)
- $git commit -m'commit message'

NAMING CONVENTION FOR COMMIT MESSAGES:
Chunk and commit frequently with good updates to track changes use short action verbs for your commit messages
Ticket-number-verb-noun
eg: '123-feture adds submit button'

- chunk commits and push a batch of commits. Push only when a good section of work is completed as it alerts the whole team

- $git push - set upstream with initial commit
- [$git checkout main-branch] (checks out of new branch into the main branch)
- $git status you should be in `main branch`
- $git pull (gets most update version of the `main branch`)
- $git checkout new-branch
- $git status you should be in the `new-branch`
- $git merge main-branch (merges the `main-branch` into the `new-branch`
- if someone else also works on your branch and you need an updated version run [$git-pull] in the branch you are working on there is no need to merge, you will get the latest version of the branch

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


  