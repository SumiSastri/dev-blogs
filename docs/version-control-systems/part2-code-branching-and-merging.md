

1. The early development phase where features are written, tested and merged into a master file -> this stage is often called development

2. The master file of this section of work then goes into integration or staging where end-to-end testing and other more rigourous forms of testing result in bugs or feature fixes. These are returned to the development phase to be fixed and merged back into to master, tested again in the integration phase.

3. From integration the master branch of integration is then merged into a production phase. Here more robust testing of security/ api-calls and other risks are managed and where bugs are found returned to integration or development to ensure a fully tested and secure feature is released.

This process is a slow refinement of the code where the top of the funnel the code is at its rawest state and and the end of the process where it is at its most refined state.

Git
Pros

1. Fast
2. Flexible
3. Safe
4. Smart
5. Distributed version control

Cons
1. No access control -anyone can change files no ability to lock file - everyone has access so nobody has control
2. Too heavy - git history and the bloat (need to shallow clone)
2. Not good for binary files
3. Not user friendly (hard to learn but easy to use)