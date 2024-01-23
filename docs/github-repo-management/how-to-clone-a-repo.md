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