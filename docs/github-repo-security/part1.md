---
layout: default
title: Why you need to safeguard your repo code
parent: Safeguarding your GitHub repo
nav_order: 9
---

# Why you need to safeguard your repo code

As repos are public, finding vulnerabilities and security misconfigurations is easier than in closed‑source projects. Attackers typically have all the information they need to look for security flaws. Developer credentials are especially sensitive. Attackers can use them to take over the project or impersonate the maintainer without being noticed. In popular open‑source projects with significant user base, this might be an excellent opportunity to launch broad attacks.

The most popular way does not require any theft at all. If maintainers reuse passwords across different services, adversaries may find password data leaked in an unrelated data breach. Passwords are not the only type of credential used. Developers often leak access tokens to source code repositories or package managers.

Such leaked tokens can often be found in build scripts and build logs. Once attackers gain valid credentials, they can spoof the developers. They can also pretend to be a trusted developer and abuse this trust to sneak their changes into the source code or ask project maintainers for additional permissions. In extreme cases, attackers may be lucky enough to obtain credentials of project maintainers themselves and completely take over the project.

Attackers may be able to execute their code within the build infrastructure. They may also be able to sneak their malicious code into the project, and this way, get it executed by users of the project. This may allow them to consume their resources, for example, to mine cryptocurrencies.

They may also try to steal information or install backdoors to launch further attacks. Open‑source projects often require sensitive information, such as access tokens and deployment keys. Attackers may try to obtain this information if it is publicly available through files or build logs.

Successful open‑source projects may have a user base of significant size. A security vulnerability may impact many of the users. Security vulnerability can be introduced directly through a bug in the code. They may also be introduced through a vulnerable third‑party dependency. Providing fixes for security vulnerabilities also requires care. If attackers learn about the vulnerability, they may try to abuse it. The problem is especially dangerous if the knowledge about the vulnerability is public, but the fix is not available yet.
