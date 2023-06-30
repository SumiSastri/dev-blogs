<!-- ---
layout: default
title: Monoliths, microservices to serverless
parent: Data infrastructures
nav_order: 4
--- -->
# Monoliths, microservices to serverless

A monolith is a single program that runs the whole application. The program is responsible for maintaining authentication and authorisation (auth), access to Application Programming Interfaces (APIs), UI (User Interface) and even messaging systems like emails, notifications and alarms.

A microservice has distributed services for different components of the application. This modularises the application and your auth services could be run by one program, while UI run by another. If you have several APIs, each API could have a separate program to run the API calls. This separation of concerns could make the app more performant.

Microservices require dedicated teams, infrastructure management by infrastructure engineers.

Serverless is microservices without infrastructure management and the use of functional programming to set-up and provision servers and infrastructure.

## Monoliths vs monorepos

- Currently researching