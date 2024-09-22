---
layout: default
title: Dependency management
parent: Safeguarding your GitHub repo
nav_order: 9
---

# Dependency management

Process to keep dependencies up to date

1. Auditing: Run a dependency audit (longlist) - consider use of Consider SCAs (Software Composition Analysis) - automation tools that give organizations visibility into their open source usage - rather than a manual inventory.
2. Classifying: Classify dependencies (by dev phase/ repos/ type)
3. Prioritizing: Agree on a hierarchy of dependencies by importance

Assessing the impact of a security vulnerability on an organization is
complex work. In order to address the most immediate threats, organizations need to
take a holistic approach by analyzing a number of parameters, including not only threat
severity, but also business impact and the availability of a fix.

4. Strategizing: Formulate a policy consider security/ performance improvements/ quality assurance/ licence compliance and how dependencies will be selected/ added/ updated/ removed-replaced. Focus the policy on identifying, resolving, and patching dependencies in your application’s codebase.
5. Actioning: Keep a checklist and rota of people who will update the dependencies
6. Regularizing- Norming: Decide frequency of updates by importance -> Evaluate importance on a time-effort -> result scale

7. Automating: Application Security Testing (AST) tools that detect vulnerabilities automatically - The shift left practice moves software testing to earlier in the process and automates it.

**_ASTs types_**

AST scanning tools detect vulnerabilities and can be broken down into four main categories:

Static Application Security Testing (SAST), sometimes called white-box testing, scans source
code from the inside out while components are at rest. SAST analyzes application source
code, byte code, and binaries for coding and design flaws that suggest possible security
vulnerabilities.

Dynamic Application Security Testing (DAST), sometimes called black-box testing, scans for
security vulnerabilities and architectural weaknesses by simulating external attacks on an
application while the application is running.

Interactive Application Security Testing (IAST) scans an application’s source code post-build
in a dynamic environment through the instrumentation of code. Testing occurs in real time
while the application is running, usually in a QA or test environment.

Software Composition Analysis (SCA) tools perform automated scans of an application’s
code base to identify all open source components, their license compliance data, and
security vulnerabilities. In addition to providing visibility into open source use, SCA tools also
prioritize open source vulnerabilities and automatically remediate security threats.

8. Use criteria for selection of ASTs - a short list

- Coverage
- Low false positivites
- Exploitability
- Code visibility
- Remediation advice
- Broad platform support
- Integration to projects SDLC (software development life cycle)

8. Reviewing: Keep the process live and up-to-date - shift security right, continually scanning open source in applications that are in production. This ensures that you’re covered throughout the SDLC
   even as new vulnerabilities are discovered in older projects.

_Recommendations List_

_Do's_

1. Do Learn about the new version of dependency that you might include and gradually update it from version to version. Check the National Vulnerability Database (NVD) or simply listed on the project’s issue tracker to find out what vulnerabilities have been detected in the packages.

2. Consider dependency pinning

3. Consider frequent and often fixes (an hour a week) -on a as little as possible/ as much as necissary basis

4. Consider if it ain't broke don't fix it - potentially dangerous as software can age without being broken.

5. Consider if it hurts fix it - potentially dangerous as it might already be too late and could be a complex Gordian knot of interdependencies to untangle

6. Consider automation of the process with CI-CD (continous integration-continous deployment) Application security scanning tools (ASTs).

- [Review GitHub docs/ advice and pick out key options that work for the team ](https://github.blog/2020-06-01-keep-all-your-packages-up-to-date-with-dependabot/)

-[Circle CI + GitHub Actions](https://www.linkedin.com/pulse/how-keep-your-npm-dependencies-up-to-date-without-wasting-gorej)

- [Gaps in automation can be addressed with fastify](https://github.com/fastify/github-action-merge-dependabot)

- [Fossa](https://fossa.com/)

- [CodeClimate](https://codeclimate.com/)

- [Freshli](https://github.com/corgibytes/freshli-lib)

- [Libyear](https://libyear.com/)

7. Have a dependency policy/ strategy that is reviewed at least 1ce a year

8. Manage inertia (it ain't broke don't fix it) and fear of updating dependencies (breaking builds)

9. Check other tools that are compatible with Dependabot to reduce time

10. Select relevant tools that will reduce time/ effort without compromising security

11. An advanced SCA tool offers features and capabilities to support development and security teams in their efforts to address security without sacrificing speed, including the following:

- Software Composition Analysis
- Robust license and security policies
- Priority scoring
- Remediation automation
- Automated dependency updates based on crowd intelligence that won’t break the build
- Developer tools that include native integrations with repositories,IDEs, and browsers
- Automated workflows and policies
- Coverage for a wide range of threats and attacks
- Multiple coding languague support

_Don'ts_

1. Try not to use dependencies for all small utilities if first-party code can handle them just as well.

2. Actively seek to avoid dependency hell and have a strategy on dependencies and what will wont to prevent falling into such a trap in the first place

3. Rely only on one tool in one phase of the development process for security testing. Check runtime protection tools like a web application firewall (WAF), bot management, and
   runtime application self-protection (RASP).

### Further readig

- [Crowdbiotics blog](https://www.crowdbotics.com/blog/how-to-ensure-that-your-dependencies-are-up-to-date)

- [Better programming blog](https://betterprogramming.pub/how-to-keep-your-app-dependencies-up-to-date-833fc45dae4?gi=24c22c1e3f18)

- [Renovatebot - dependency pinning](https://docs.renovatebot.com/dependency-pinning/)

- [Near form blog](https://www.nearform.com/blog/automatic-dependency-bump/)

- [Netcetera blog](https://www.netcetera.com/home/stories/expertise/20170406-software-updates-inside-it.html)

- [White source white paper](https://www.whitesourcesoftware.com/wp-content/media/2021/07/The-Complete-Guide-to-Open-Source-Security-2021-1.pdf)

- [Taming Dependabot blog](https://www.codurance.com/publications/2019/02/24/taming-dependabot)

- [Dependabot automation - Nearform blog]https://www.nearform.com/blog/github-dependabot-automation/
