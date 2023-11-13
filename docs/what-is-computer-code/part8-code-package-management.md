---
layout: default
title: What is a code package management?
parent: What is computer code
nav_order: 5
---
# What is code package-management?

In Part 2 we have seen code is written in packages and these packages need to be managed.

What does this really mean?

In the day-to-day life of a developer, this could mean looking at external package updates and ensuring you upgrade each package to the latest version major and minor.

For example, Webpack is now in version 5. As we have seen in Part 4, this means the software developes who are writing the webpack package are updating the package with new features. These features can cause breaking changes and may not be backwards compatible with previous versions.

Code in the packages a developer writes will have to be rewritten to the new syntax and norms of the new version of webpack.

Take another example, AWS-CDK had a major rewrite and v2 now is the norm, AWS offers no support for v1 and code you write dependent on AWS-CDK v1 will break and can no longer be shipped to end users.

This constant updating of packages with new features takes a significant amount of time for developers but is a core part of writing and maintaining code bases.