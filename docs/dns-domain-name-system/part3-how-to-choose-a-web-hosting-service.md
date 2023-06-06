---
layout: default
title: Webhosting the tricky parts
parent: DNS - The Domain Name System
nav_order: 5
---

# Web hosting the tricky parts

What no web hosting service provider tells you is that once you have purchased their service you are locked-in. There is no exception that I have found to this as every hosting service provider makes it easy for you to host supporting you all the way through the onboarding process.

Now you want to take your content and host it on another service provider that offers better service and options. You want to scale, add services that your current webhost does not provide. The offboarding process - if there is even one - is a nightmare. Some hosts will give you a list of instructions on how to save your content, back-up a version and then port it. But what if you have databases, image storage, user-data your valuable subscriber base? You will still have to port these and may not get the help you require from the service you are leaving and may get some support from the service provider you are enrolling with. You will also need to cost in opportunity costs - downtime, disruption of services to your customers.

There could be offboarding charges - for example you may have to pay the whole year's hosting charge to the service provider you have left and the service provider you are joining. The migration of data fees. So think carefully of why and what your want your website to do for you. Hosting is an integral part of your scaling your product and services through digital offerings up or down.

There are several webhosts that advertise "free hosting" or "cheap hosting" options. These often are a package deal with a Wordpress, Wix or Square Space sites. These small consolidators are no different from the big players like Amazon, Google and Azure (Microsoft). The webhost provides a service for you to host not to remove your content from their sites.

One of the big reasons is the DNS system is complex.

## The complexity of the DNS data mesh

Domains are not just names for your website. There is a complete structure to the domain name involving a top-level domain (TLD), a name server, DNS propagation through the servers, whilst maintaining privacy of the domain name holders. The TLD is the dot extension - `.com`, `.org` - part of the domain name. It is the first call in the query to look up your domain name on the DNS. It also classifies the domain name with `.gov` reserved for government organisations, and country specific `.eu` reserved for domains in the region. The `.com` names are the most expensive because they are commercially recognised globally.

A webhost is managing all of this for you. While they may charge you for the time you are hosting with them, there are dismantling costs for the host which they have to recoup.

DNS propagation is the process by which information is relayed from the service provider you have bought your web domain from all the way up through a global network to the top-level DNS registry. This takes about 24-48 hours to complete. The DNS allows several resellers to sell domain names. You may therefore buy your domain name from one service provider and very easily host with another.

You register your domain name then with ICANN, [International Corporation for Assigned Names & Numbers](https://lookup.icann.org/). Usually your domain name reseller service will send you an email and request you to register these details. You can make these details private or public. Many domain-name squatters will purchase domain names and resell them for higher prices - words like mortgage, interest-rates for example rank high on SEO, so domain name squatters may purchase these names and never host looking to make a profit on the resale of the domain name.

The domain name can now be mapped to a name server. Once you purchase hosting all you will need to obtain the correct nameservers from your service provider and map the name server (usually notated as `ns1` and `ns2`) to your host. The instructions may vary from service-to-service but they are fairly simple and easy to follow.

For example `ns1.bluehost.com IPnumber` & `ns2.bluehost.com IPnumber` is the pattern used to map the name server from where you purchased your domain name, say for example NameCheap, to BlueHost.

## Comparing web hosting services

The key things to look for when you are choosing a web host are

- Speed
- Downtime and crashlytics if any provided
- Customer reviews
- Customer service
- Whether you want to add subscription services, ecommerce services and other backend services where you need to scale up and the capacity the hosting service provides you matches your requirements
- Security services
- Data zones - global or regional - choose a regional one if your customer base is local
- Web traffic and handling peaks and troughs of traffic on your site seamlessly
- Any data-protection or database services if you need to store customer data

## Chosing a service level

Hosting service providers offer several types of hosting services as this is a difficult choice to make and they want a frictionless entry point to capture customers.

Shared hosting, falls into this category. As it says on the tin, you share your hosting space with several other websites and this is often a package offered by Wordpress/ SquareSpace and Wix. The downsides to this form of service is it is open to security hacks, scaling up or down to traffic requirements is not the best and your site downtime could be high. This is because you are sharing computing power (CPU) and memory (RAM) with other websites. You may also have intrusive ads placed on your site as the service provider will monetise this retail space that you share rather than own.

Managed VPS (Virtual Private Service), the next level up, manages some backup and updates of your site, improved security, configuration and some additional services depending on the service provider.

Cloud Hosting - instead of an onpremise server, the hosting services allow you to host your sites in a remote server, or the cloud. Cloud hostiing can be either shared or a managed VPC (Virtual Private Cloud).

You can scale up from a shared service to a VPS/VPC with the same host. This is often easier than a migration.

From my research time of writing (2022), Hostgater is a good host for Latin American sites, performs less optimally globally. Host Papa great for Canada and Spain, NameCheap and HostGater great to buy names but general hosting services better with other options - GoDaddy, BlueHost offer good customer services. BlueHost has some covert costs to watch. DreamHost and Hostinger are reliable and performant but the customer service outside the US isn't up to the mark once again good to buy a domain name but not great if you are outside the USA.

The bigger service providers like Google, Amazon and Azure need investment in developers an understanding of infrastucture and paying for a small team to support your growth plans.

For developers, GitHub's hosting is great for side projects - my choice for this blogsite.
