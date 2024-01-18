---
layout: default
title: What is Dependabot
parent: Safeguarding your GitHub repo
nav_order: 9
---

# What is Dependabot

Dependabot is a dedicated GitHub tool that improves code security by automatically managing your dependency change logs.

It creates automated pull requests whenever there is new version for all dependencies you created in package.json. You are provided with options to verify that the updated dependency did not break any code.

Every day, it checks your dependency files for outdated requirements and opens individual PRs for any it finds. You review, merge, and get to work on the latest, most secure releases. Dependabot is a tool in the Dependency Monitoring category of a tech stack. Dependabot can fix vulnerable dependencies for you by raising pull requests with security updates.

Keep in mind that it only works for GitHub. There are other tools like renovatebot [https://docs.renovatebot.com/] crowdbotics in the market.

Read more on code security: [https://docs.github.com/en/code-security]

**How does Dependabot check for vulnerabilities?**

Dependabot checks whether it's possible to upgrade the vulnerable dependency to a fixed version without disrupting the dependency graph for the repository. Then Dependabot raises a pull request to update the dependency to the minimum version that includes the patch and links the pull request to the Dependabot alert, or reports an error on the alert.

Read more on: [https://docs.github.com/en/code-security/supply-chain-security/managing-vulnerabilities-in-your-projects-dependencies/about-dependabot-security-updates]
