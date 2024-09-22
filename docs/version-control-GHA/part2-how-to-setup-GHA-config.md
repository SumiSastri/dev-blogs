---
layout: default
title: How to set up Github Actions config files
parent: Github Actions
nav_order: 11
---

# How to set up Github Actions config files

GHA requires a `yml.config` file to configure local actions to a cloud-based platform. These config files need to be in the root directory and placed in a folder which is a `.github` folder to be parsed (read).

In the subfolder of workflows you can determine as many config files as you require. 

For example, `.github/workflows/config1.yml` outlines the first set of rules to configure. To add multiple configs for different jobs, all you need to do is to append another file in the same folder for these additional config rules -  `.github/workflows/config2.yml` - and add the required configs.

You can also add a template for how the PR should look in a markdown or `.md` file, in a `pr_template.md` file as well as a similar template to report issues.

## The `config.yml` file

GHA requires a `config.yml` to connect local configurations to the GHA cloud.

## What is YAML?

Yml, or YAML (an acronym for Y Aint Markup Language), is a human-friendly data serialisation language that is language agnostic. It’s a strict superset of JavaScript Object Notation or JSON, with completely different syntax.

YAML is lighter and more flexible than JSON and is considered great for config files. JSON is more inflexible and therefore is considered better for data interchanges.

### Fields in the `config.yml` file

The `config.yml` file has the following fields

-`name` - Name for this config - eg: PR Checks
- `on` - Where the GitHub action takes place as in the example in the code below.
```
on:
  pull_request:
    branches:
    - name of branch
```
- `jobs` - Lists jobs to be run during the process (work flow), in this example, the PR checks

A job is a set of steps in a workflow that is executed on the same runner. 

Each step is either a shell script that will be executed, or an action that will be run. 

Steps are executed in order and are dependent on each other. 

Since each step is executed on the same runner, you can share data from one step to another. 

For example, you can have a step that builds your application followed by a step that tests the application that was built. In the example below are a jobs config

```
jobs:
test:
name:  job name (eg: Check formatting with Prettier)
runs-on: system (eg: ubuntu-ltest)

<!-- steps: (list of steps, uses, with and run commands) -->

steps: - name: Checkout
uses: actions/checkout@v3 - uses: actions/setup-node@v2
with:
node-version: "16" - name: name of commands that will run (eg: Ensure Prettier Formatting Passes)

<!-- run: these are the commands that will run the code checks -->

run: |
npm ci
npm run prettier-check
```
