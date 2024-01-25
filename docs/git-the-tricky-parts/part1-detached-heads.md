What is a detached head in git?

A blob may be detached from a head - that is when you get a detached head. It can be consciously created so that you can work in a detached head.
The use of detaching a blob from the head is to pretty much remove a part of the data to experiment with it - if the experiment proves to have no value the detached head can be discarded. If the the experiment is useful, then the blob can be reattached to the branch head.
However a detached head might occur by accident. If you get an error message you need to attach the blob to a branch.
Here are 3 easy steps to fix this
Step 1:
First check out of the branch that is in headless state `git checkout <headless-state-branch>`. This will save the detached head to this branch.
Step 2:
Attach the headless blob to a branch which is tracking an origin head correctly `git checkout <branch-name-to-attach-headless-blob>` this is any branch of your choice, including main (master).
Step 3:
In this branch merge `git merge <headless-state-branch>` the headless branch now tracks the branch you have switched to, i.e. `<branch-name-to-attach-headless-blob>`.
If you do not want the code in the headless state branch instead of merging you delete the blob by `git delete <headless-state-branch>` this is a destructive command and is not recoverable.
You may want to read the chatter on StackOverflow which I personally found confusing although it made me do some root cause analysis to find out how git tracks changes.
Understanding the Merkle tree, how a commit is a blob and how a blob is attached to an origin head made it easier to understand some of the challenges with git heads.
More reading on detached heads
[Circle CI] (https://circleci.com/blog/git-detached-head-state/#:~:text=What%20does%20detached%20HEAD%20mean,commit%20or%20the%20remote%20repository.)
[Cloud Bees](https://www.cloudbees.com/blog/git-detached-head)

What is the difference between git reset hard, soft and mixed?
You may want to reset the head of your list of commits to a particular SHA. This can happen if you have committed code and think that some of the commits have added no value to the code base. You want to rewind to a particular point in the commit history where the code was working and more useful to continue from this point that the point you are at.
Here is some fake commit history to work with to illustrate the point.
commit 123ab456
commit 223ab446
commit 223de446
In this example at SHA `commit 223de446` you want to rewind and go back to `commit 123ab456` and you do not know whether to reset or revert…what you need to know is that there are three types of resets and a revert may be the safer option.
`git reset - mixed <SHA>` default behaviour and is same as `git reset <SHA>` if you do not specify a flag, the default behaviour when your run a `git status` the files are in working directory - the place where they would be if you ran a `git add <filename>` when you are working on code
`git reset - soft <SHA>` does not remove either tracked or untracked files, you can deal with these files manually either discarding them or keeping them in the staging directory. This is the same place after you have added the files and have the files ready for a `git commit` - the SHA is removed from the files but the files are not removed from the branch
`git reset - hard <SHA>` removes all tracked files from the branch and you will not find these files either in the working directory or staging area. Untracked files will remain in the working directory.

Resets can be a bother and it may be therefore wiser to choose a revert.
What is the difference between reset and revert in git and when to use them?
If you run `git revert <SHA>` no files are deleted unlike the reset command. Revert is often the better choice as a new SHA is created migrating all the files from the commit that you want to revert to.
In the example using the fake commit data from the if you run the command `git revert commit 123ab456` all the files in this commit will be created in a new SHA - remember the SHA is a function that creates meta data around the files that they contain.
All the blob data that you commit to a revert will be contained in the revert. The SHA function runs the new commit has the old files and a new SHA.
commit 123ab456
commit 223ab446
commit 223de446
commit 22356de44689 - - now is reverted to the information in commit 123ab456
The files (or blobs) `commit 223ab446` and `commit 223de446` will be ignored `commit 22356de44689` is created with your files from `commit 123ab456` . This blob `commit 22356de44689` continues to track your branch origin head and you can work on your files as if you have discarded the blobs `commit 223ab446` and `commit 223de446` without having to delete them.
If you run a `git diff 123ab456 22356de44689` between the old and new commit blobs you will see the changes you have made and you can push them to the branch origin head.
While this works like an amend, it does not amend the git history and is better than the `git - -amend` command. It is also better than the `git reset` command as you do not have to deal with lurking files in your working directory or staging directory or even think about whether you should be running a hard, soft or mixed reset.
What does git commit - amend do and why is git reset is the better option?
Before you push a commit, the commits are queued and batched and you can still make changes using `git commit - -amend`. For example you notice that you have written the wrong commit message when you run a log
af406b7 (HEAD -> Feature-add-new-branch) Update docs 6
0a12f1c (origin/Feature-add-new-branch) Update docs 4
You now want this commit message to read Update docs 5. When you run the `git commit - -amend-m "Update docs 5"`.
fd9b085 (HEAD -> Feature-add-new-branch) Update docs 5
0a12f1c (origin/Feature-add-new-branch) Update docs 4
You can see that this has now been amended successfully by running a `git log - -oneline` again and checking if the amend has worked. You can also use the `- -amend <filename>` flag to add a file that you may have missed out in the commit.
The amend, however changes git history - you will note the SHA - or the algorithm for the hash - is rerun and you have two different SHAs for the two separate commits.
Using amend when you are code-sharing with a large team should be used advisedly. It is ok for side projects where you are the only user of the repo making changes because it does change the history.
When you push your code to your branch origin you have created a file or blob that now tracks the branch's origin head until it is merged with the main branch. Once it is merged into the main branch, it now tracks the origin head of the main branch.
How to consciously create a detached head state?
And now I leave the best for last.
A detached head - when you get into a detached head state accidentally sounds awful and medieval. A head lopped off hanging bloody on spikes on the top of castle or fort gates comes to mind.
Actually, a detached head is not so diabolical. When it comes to git heads and a detached head can work like a code sandbox. You can use if if and when you want to refactor code.
Using `git reflog` you can check into a branch and move it to a headless state. `reflog` or reference log is a list of the logs and each commit as it is represented in its distance away from the origin head. This is serialised in numbers starting from 0, in short it is the log of when you last referenced the logs.
For example if you want to experiment in the files from the commit in `HEAD{1}` you can copy the SHA of the commit and checkout into the commit. When you run `git checkout af406b7` a fake SHA representing `HEAD{1}` you immediately get a notification that you are in the detached head state.
Photo by Mohammad Rahmani on UnsplashThe notification gives you a list of these advantages - You can look around, make experimental changes and commit them, and you can discard any commits you make in this state without impacting any branches by switching back to a branch - in effect, it works like a code sandbox.
If you do want to retain the experimental work you can create a new branch `git switch -c <new-branch-name>` - this branch will remain in the headless state unless you set the remote origin to track these changes. As we have seen earlier you can add and commit but when you push you can run the command `git push - set-upstream origin <your branch name>:<your branch name>` with this detached head to attach it to a unique origin head. Once again, you only need to do this once to track all commits in this previously headless branch. In this example what I have done is `git push - set-upstream origin backup-update-6:backup-update-6`
If you do not create a branch and track changes in this detached head state, git will garbage collect and in 30 days the changes will be permanently removed.
How to manage git heads easy if you know how
Photo Credit: Priscilla Du Preez on UnsplashAs you can see Torvalds is actually right, it is quite an easy to understand content tracking system if you know how the git head is set.
In summary
The head of the whole project you are tracking in a repo is set once in the main branch.
Each data blob or commit tracks the head that the branch is tracking via a SHA algorithm that collates all the data and tracks the deltas with a hashed number.
The main branch is exactly like any branch.
All new branches created are merged into the master branch.
Each new branch has its own unique head to track changes in the sub-branch.
Unless upstream origin head is set once, either manually or through a `git config` automatically, you have a detached head.
Detached heads are like sandboxes and can be manually re-attached to the origin.
