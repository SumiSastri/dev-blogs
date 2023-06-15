---
layout: default
title: How to choose a domain name
parent: DNS - The Domain Name System
nav_order: 3
---


# How to choose a domain name

To choose a domain name, it is useful to understand how the  Domain Name System (DNS) works.

The DNS is a directory of the names of all registered web domains.The DNS matches the URLs (unique-resource-locators) of a web page, the name of the website to the IP (internet protocol) associated with the webpage.

The IP address is a string of numbers, which is hard for users to remember, and the IP address is stored in the URL, also long and hard to remember. So users can assign memorable names to websites they want to own and register them with the DNS system. The DNS is used to point the websites URL to its IP address.

The DNS is set into motion when searches are carried out for web pages by a computer or any other device (client). The search is sent to a server. Device use a browsers to search servers.

The browser sends a request to a server to look up the DNS network.

The network of servers are connected by underground pipes/ cables that send packets of information from the client to the servers to the DNS that can be located anywhere in the world.

Each name for a website or page is stored in an URL (Unique Resource Locator). This search is sent from the client to the browser to the server to look up the unique IP associated with it. This is also termed as a forward DNS look-up.
If you type the IP address and ask for the domain name (URL) this is known as a reverse DNS look-up.

When a user types in a URL, the request (from the client) is sent via the browser through the network of computers to find the hosting service of the DNS.

Everything that is connected to the internet has an IP address. An IP address connects each unique device to the internet - be it a mobile phone/ smart device / website.

Browsers and the browser engines help you search through this directory. Chrome, Edge, Opera, Safari, Yahoo, Mozilla are all performing the same basic function - finding a URL by its name and connecting it to its IP address by searching the DNS for the user.

This address then can be stored in the local memory of your computer or the memory of the browser engine and ultimately it is stored with a web-host.

A host, stores all of this information and rents out space on the servers they pay for as each individual would find it difficult to have a server in their own homes, or even in offices some companies now do not store all of this information on servers on their premises (known as on-prem). Instead they choose to store information on a server that is accessed by the internet or cloud.

If you are building a website, the first pre-requisite is to choose a name for your website and register it with the DNS. To purchase a name, it must not already be owned by somebody else and you have to choose a unique name. To do this you may have to purchase it from a 3rd-party that already subscribes to the DNS system and you can check if the name you have chosen is unique and purchase it.

As this is a lucrative business, names are only sold for a period of time on a subscription basis and you have to pay for to renew your ownership of the name every year, or the length of time you choose to prucahse your web name for.

Often hosting services sell names as well - for example, if you use GoDaddy/ BlueHost/ AWS, the request will reach the GoDaddy servers or the BlueHost servers to find your website, or the web name you are seeking to purchase.

If you change your web host to AWS then the request will go to the Amazon Web Services servers to find your website. There is often a fee to migrate your name to a new host.

[NameCheap](https://www.namecheap.com/dns/what-is-dns-domain-name-system-definition/), sells domain names and has an overview of what the DNS is, to guide users on how to purchase a suitable web-name and how the DNS works.

## How to choose a domain name service provider

A domain name can have different extensions .com/ .org/ etc. Domain names gives content-creators control over the content they want to publish across the internet.

ICANN, [International Corporation for Assigned Names & Numbers](https://lookup.icann.org/), is the intenational directory, that the DNS refers to, for web names to make sure there are no duplication of IP-addresses (the number relating to your domain name) or the actual name itself. ICANN's principal job is to reconcile the name of the site with the IP number and publish it in an internationally accessible directory. This is used both by the DNS and hosting companies.

If you are a content creator you will need to purchase a domain name and there are several resellers of domain names that are linked to ICANN allowing you to buy domain names and connect to the registry maintained by ICANN.

Any domain name service provider allows you to purchase a domain name. How do you chose between them? 

Depending on your needs. If you want a site on a short term basis the cheapest service provider is great. 

If you want to maintain a brand and get additional services doing some research on hosting services combined with domain name purchases is a good investment in time.

Sometimes, you may just want to purchase a domain name and think about the rest of the process - hosting, designing and maintaining your site - after you have purchased the name. Since this takes time, it is worth just purchasing a name and not purchasing hosting at all. Once again, the cheapest service works best till you have a design, architecture and plan for your content.

## What is a sub-domain and how is it different from a domain name?

The domain hierarchy is how each of the elements of a domain work with each other.

These are the IP (internet protocol) address, the top-level domain, the second-level domain and the third-level domain.

**Top-level domain** is the part of the URL after the dot. Therefore dot com/ dot co dot uk/ dot org are TLDs or top-level domains. `.com` for example is a TLD.

ICANN is the international not-for profit body that aims to keep the internet safe, stable, inter-operable and secure. It plays a co-ordination role in domain name registration. It has contracts with registrars of domain names but does not register these domain names. It defines how the name system is defined, expands and is governed with policy inputs.

The registered purchaser of a domain name is registered in the WHOIS protocol. If the look-up fails ICANN is a fall-back option for the registry but this is not its primary role.

**Second Level Domain** is the part of the URL before the dot. The name you choose for your site. `mywebsitename.com`

**Third Level Domain** often known as the sub-domain, it is separated from the second level domain by a dot. If for example, you want to guide users to a shopping experience the subdomain could be `shop.yourwebsitename.com` where shop is the third level domain.

## What is DNS resolution

Each segment of a domain name is queried through a process called DNS resolution. Sites need a hosting service. Hosting is parking your URL with a service provider that connects this URL through its servers to the DNS network.  When you send a query in your browser to search for a domain name, the client or your device/ computer sends a message to the a recursive resolver in the web network.

If it is the first search, the search is recursive. If it is a second search of the same URL the search is saved in the cached memory.

The search is first performed at the Top Level Domain. Once this is found the search is then re-routed to the Second Level Domain. Then the Third Level Domain is retrieved and the string of numbers is stored and routed back from the servers to your computer/ device (client).

Many sites have a server that takes care of this configuration before it reaches your computer directly via your local router (wifi/ lan/ adsl/ cable). The pre-prepared routing happens between two DNS servers before it reaches your computer or device (the client).

Different servers behave differently in terms of speed and security, chosing the right host/ name server is therefore important.

## What is DNS propagation?

Changes made to a web or mobile application are deployed by a tech team to the data-infrastructure that the application uses. This infrastructure can be a mix of service providers like Amazon Web Services, Google Cloud Services, or managed services provided by Netifly, Wordpress, Vercel.

The infrastructure is connected to the web hosting service and all the files used in the web application have to be propagated via the DNS system first before these changes can be seen by the end user. The propagation process takes between 24-48 hours depending on the servers and the hosting services you choose.