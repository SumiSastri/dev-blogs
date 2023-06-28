---
layout: default
title: Short history of the shift from mainframe servers to serverless
parent: Data infrastructures
nav_order: 4
---

# Short history of the shift from mainframe servers to serverless

Similar any infrastructure service, a data infrastructure, it is the digital foundation that allows allows data to be consumed,shared, stored and distributed.

Like all infrastructures, data infrastructures are made up of several moving parts - hardware, software, networking, services, government policies - to make them function smoothly across geographies and a variety of devices. In an organisation, a data infrastructure provides the enterprise to manage, use, and secure its data.

To meet this goal, an organization must have a robust data infrastructure strategy in place to maintain data flows, protect data quality, minimize redundant data, and prevent crucial data from being isolated into silos.

Data infrastructures have become very complicated even for small to medium size organisations because of the rapid explosion of data distribution and consumption of - what is often referred to as "big data".

[Hewlett Packard Enterprise](https://www.hpe.com/uk/en/what-is/data-infrastructure.html) has a sales message which is a short summary of how data-infrastructures work and what services they provide.

[Business Week](https://www.businesstechweekly.com/operational-efficiency/data-management/big-data-infrastructure/) takes a braoder view and has an associated big-data link in this article.

This a short evolution of data-infrastructures:-

_1950s-1970s - era of mainframes:_ Installation, maintenance, cost - writing software to work with the hardware/ co-location or co-loc experimented with

_1977 - era of personal computing:_ Distribution of compute power - on premise servers (same issues lower costs)

_2005 - start of operating system (OS) virtualisation & containerisation:_

- distributed virtual software
- servers running multiple operating systems
- user of hypervisors (virtual machines monitors-VMM or virtualisers)
- hypervisors run one or more virtual (guest) machines as a host
- no need to write software to work with hardware (servers) as hypervisor provides guest operating system (OS) with a virtual operating platform MacOS, WindowsOS and Linux run off one x86 (virtual) machine
- rent out server space no need for on-prem servers
- beginning of IaaS (infrastructure as a service)
- hypervisors type 1 (developed in 1960s) - bare metal run directly on host to control hardware and manage guest OS (used in main frames) Type-2 hypervisors abstract guest operating systems from the host operating system
- Type-2 hypervisors abstract guest operating systems from the host operating system.
- now you could run gaming software/ email software and a database on the same server even if the OS was different

_2006 - paradigm shift to cloud computing:_

- progressive move into containerisation or operating system virtualisation
- not just a host renting out space for different OS but each container also offering compute options for the OS in question
- companies start clustering VMs and offering compute space from data centres they operate and manage 'in the cloud' using the internet to connect to local machines and offer host space
- platform as a service (PaaS) - wordpress and other such types of products emerge and thrive
- a further shift to the democratisation of compute power as personal computing takes off and mobile OS start becoming a distrupting force

_2014 - serverless uptake higher with end users:_

- function as a service (FaaS) normalised with enterprise level projects
- hybrid systems - on-prem & cloud still in existence
- no complete move to cloud though progression from on-prem to cloud rapid

## What are IaaS, PaaS, SaaS and DaaS

Data can be stored in all sorts of ways - external hard-drives is the simplest form of data-backup. You can also have locally hosted data on your computer - in files and drives. The challenge is scaling and security.

This is when on-premise servers were initially used, when organisations wanted to expand services out of a city/ region/ country/ continent - data storage and back-up needs grew.

On premise requirements grow - you have many offices, many locations and you need to make sure your staff and customers can acccess their data and latency - the delivery of data to a device - is not an issue.  Security, compliance and maintenance is expensive - large up-front capital expense if you have to add server upon server to solve the challenge.

IaaS-PaaS-SaaS-DaaS can be seen as a spectrum. And on this spectrum on one end, we have absolute control. But on the other end, we have minimum maintenance and a degree of automation.

The acronyms are a description of the type of cloud compute services offered

IaaS - Infrastructure as a Service eg: Google Cloud Platform
PaaS - Platform as a Service eg: Wordpress servers
SaaS - Software as a Service eg: Mailchimp and chatbots
DaaS - Data as a Service eg: CRM systems - salesforce

IaaS -  This is where you can run servers in the cloud as virtual servers. You do not need to own your on-premise server but you can rent space on a cloud server. It is similar to how you would run servers in your own data center, meaning that you have full access to those servers. You can change the operating system, configure data-bases, set alarms and monitor performance. This gives you complete control over configuration.

PaaS -  You are given a platform service that is configured but you can also customise it. You can create your own backend with plugins and keep backups of data and keep an eye on security with plugins.

SaaS - You don't have to worry about configuring servers. The software does this for you and you use the software as a service.

DaaS - Your data is managed by a customer relationship management system. You do not have to worry about configuring servers. Your service provider does this for you.

## So what is  FaaS?

Today it is possible to write function code that doesn't require you to manage a server infrastructure. The ability to write Functions as a Service (FaaS) means you write code that manages the server infrastructure you are paying for. Serverless simply means the server is in the cloud and you rent space while the server owner maintains the servers.

Code is written on managed machines and not directly on the server. With AWS lamddas or Google Cloud Functions, functions written inside containers that live in the virtual machine of the server service provider. 

The code gets executed and the interface between the code and the server is the section of server that is managed and operated by the server service provider. AWS-Azure-Google, IBM being the largest service providers of cloud computing services. There are niche providers like Cloud Flare, openFaas, iron.io

Code as infrastructure is driven by events that control the server's performance. Server management therefore only runs on events that trigger it.eg: Application Programming Interface (API) requests/ file uploads/ data inputs into a database, IoT and streaming of video/ audio.

This programatic way of managing servers allows businesses and developers to focus on code written to make their apps better and not to manage servers.

## Event driven code examples

1. Use case: User wants to upload and save a  file - for example a `.pdf` file -  to a database.  The file is stored in the database as it needs to be retrieved and displayed in another part of the application. Code is first written to upload the file to the relevant database with the payload details. The file is uploaded and stored on the server - the event is the request to upload the file which triggers the code run.

2. Use case: File retrieval - When a user wants to retrieve the `.pdf` file code is written with the payload and instructions to retrieve this file from the database that is hosted on the server. The file can be retrieved regularly - so a scheduled retrieve (cron-job) may be required to be written with a pre-configured (config). Maybe it is retrieved by an API end-point - in which case the endpoint goes into the code. The event that triggers any of these actions - which is written into the code - is the desire to download the file and display it in another part of the application.

Similar use cases:

- Processing streaming data
- Interacting with API gateways to make easy and scalable APIs (as you can see with this repo to make an API and then host it with Heroku is one way of making an API available publically)
- Photo file processing
- Processing data from `.csv` files

Drawback is the throttling required - several requests can block the servers efficiency to deliver uploads and downloads of these files so some service providers offer 10-15 minutes or limits to the file size/ number of requests to manage the challenge.

## Examples of code as infrastructure

AWS Lambdas/ Azure Functions/ Google Cloud Functions/ IBM Cloud Fuinctions - polyglot of code support in their VM (virtual machine - as different from on-premise or on-prem) containers - eg: functions can be written in JavaSript, Java, Ruby, Pyhton, Go, PHP, C#

Depending on your cloud service provider you will need developers with the skills to write the code that manages this infrastructure. Most popular languages for serverless - NodeJS and Python.

## Benefits of FaaS

- deployment workflow unified between infrastructure and code
- removes manual/ human error from manual processes
- easy to set up and scale
- spin up and destroy environments (save costs)
- easy to build a PoC see how it works and destroy it if not fit for purpose
- environments stay in sync - no environment drift and if there is drift detection tools available


## What about BaaS

Backend as a service allows users to configure the backend from the front-end UI (User Interface). One such example is Google Firebase.
