---
layout: default
title: Keeping your branch updated
parent: branch-management
grand_parent: version-control
---

# Keeping your branch updated

In a branch every change must be added and committed.

## Git Commit Guidelines

To collaborate better as a team git has guidelines on the way we format commit messages. This leads to **more
readable messages** that are easy to follow when looking through the **project history**.

This guideline is inspired by https://chris.beams.io/posts/git-commit/ which is worth reading.

### Commit Independence

Each commit should work independently, and all tests should succeed. This means that tests should be updated alongside the logic where possible such that the logic and tests remain in sync.

Each commit should have a single clear goal on what it changes and why. Avoid changing multiple unrelated things within a commit and pull request.

If you commit header has an "and" within it then this is a good indicator that you may have more than one change in a single commit. By doing this it makes the commit harder to understand as many things are being changed at once. We aim for single goal commits to reduce confusion and improve code maintainability.

### Commit Message Format

Each commit message consists of a **header**, a **body** and a **footer**.

```
<header>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

The **header** is mandatory.

Any line of the commit message cannot be longer than 100 characters (excluding links). This allows the message to be easier
to read on GitHub as well as in various git tools.

When writing commits ensure you can write multi-line commits. This is done by using `git commit`. Using `git commit -m <MESSAGE>` is not advised as it doesn't offer multi-line commit messages that follow our format.

### Revert

If the commit reverts a previous commit, it should begin with `Revert: `, followed by the header
of the reverted commit.
In the body it should say: `This reverts commit <hash>.`, where the hash is the SHA of the commit
being reverted.

### Header

The header contains succinct description of the change:

- start with a verb, "Add", "Remove", "Bump", "Update", "Correct", "Refactor" e.t.c.
- use the imperative, present tense: "change" not "changed" nor "changes"
  - This is chosen to align with git conventions such as "Bump" and "Merge" that follow this tense. This helps consistency and improves readability in the list of commits.
- capitalize first letter
- no dot (.) at the end

### Body

Just as in the **subject**, use the imperative, present tense: "change" not "changed" nor "changes".
The body should include the motivation for the change and contrast this with previous behavior.

Importantly the body must contain the "What" and "Why" of the change rather than just the "How".  
Explain why the change was made and what impact this has on the codebase, data-flow or users.
For more complex implementations adding the "How" to aid the user is acceptable (in these cases
adding comments to the code is preferred).

### Footer

The footer should contain any external references. This must always include a JIRA issue link of
the format:

`JIRA <link>`

Any additional links can be added here such as previous PR requests.

### Example Commits

```
Remove X-Powered-By: PHP header

This was done such to remove information
that may aid attackers. It was highlighted
in a security report and advised to be
removed.

JIRA https://jira.cancerresearchuk.org/browse/AM-1595
```

```
Move parseHTML to single access point

This change adds renderCustomText as the
single point for the rendering of custom HTML
or Markdown text into react components.

In order to deprecate parseHTML we will need
to write the alternative markdown parser. However
there will be a period of time where HTML and
Markdown is used in the database. In order to handle
this interim step we must continue to parse HTML
as done before.

We wish to remove the rendering of HTML as it is a
potential security flaw and future activity owners are
not expected to write HTML. This method will be extended
to render markdown such that we can use a rich text
editor in the admin console for this. Simplifying the
knowledge admin users require for custom text fields.

JIRA https://jira.cancerresearchuk.org/browse/AM-1604
```
