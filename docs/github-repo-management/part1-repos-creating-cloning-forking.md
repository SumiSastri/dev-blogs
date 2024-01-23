**Create a local file for your personal projects**

$rm –rf .git - remove the recursively the git initialisation if the files have not been linked properly - start again from $git init

NEW PROCESS SINCE OCT 2020
$cd my-local-repo - (make sure you are in the repo created)
$git init (initialize with git)
$git add README.md/ $mkdir README.md (make a readme file)
$git commit -m”message with your commit” (make your first commit)
$git branch -m main (CREATE A NEW MAIN BRANCH TO PUSH CHANGES FROM LOCAL)
$git remote add origin — (**(use HTTPS url not SSH)**)
$git push -u origin main - (make the first push and linking remote and local repos)

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

or

[git remote remove]

Or

[git reset - - hard]

When you are working on a project on your own, it pushes your local changes to a cloned repo

[git push --force origin master

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


**Cloning Repos from an organisation**

- Install GH and check with tech leads on company privacy policies, etc. on use of the repo
- Login to GH and go to the repo
- Go to clone button and clone the https version not ssh version
- Copy the ssh key in the clone tab
- Go to your terminal on your local machine
- mkdir development to store all you cloned repos
- cd into development folder $git clone name-of-file-to-clone
- install dependencies and run build commands as outlined in the repo's documentation (README's)

**Cloning Repos your repo to local**

- Login to GH and go to the repo
- Copy the ssh key in the clone tab
- Make a file with the same name in you local environment
- Add git to local file [git init]
- Once initialised with git map the repo you want to clone [git clone + sshkey]
- Install dependencies again [npm -I] /[yarn install]
- Check all dependencies you need for the project are installed
- If packages are out of date you may need to run `npm update` [yarn build]
- Check FE `npm run start`/ [yarn start]/ or check `package.json` for start scripts
- Link clone to origin - git add . / git commit -m’initial-files-cloned’/ git push
- Add a `.gitignore` so that uneccessary files are not added

Yarn documentation
https://yarnpkg.com/en/docs/cli/run