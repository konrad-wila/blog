---
title: "How to get started with AWS Wickr"
date: 2025-03-30T19:24:13-04:00
draft: false
tags:
  - AWS
  - wickr
---

https://wickrinc.github.io/wickrio-docs/

Amazon aquired Wickr the encypted messaging platform and has stripped out the free signal like version and is now selling encrypted messaging to AWS customers. Wickr is Amazon's most neglected service with the docs still living in a github page seperate from the rest of AWS docs four years after their merger. 

The service sucks and there are better services out there for messaging, unless you are a regulated business like a bank, casino or the miltary. Amazon likes to tout the military application of the aquistion the most. Probably an aqusition made after Amazon lost the JEDI cloud contract to Azure back in 2020 as a knee jerk reaction and then forgotten about and neglected.

Essesntialy the product comes in two variants wickr cloud and wickr enterprise. The cloud subscription is the one Amazon want's to push you towards the most. However you can also get a enterprise licence after negotiating a licence with AWS which allows you to download a docker image and run wickr locally.

Wickr has chatbots which use a seperate docker container image to run which is networked to the main wickr instance.

How to set up a Docker container with bot runner image
https://repost.aws/knowledge-center/wickr-ec2-webhook-bot

find all (public) AWS ECR images
https://gallery.ecr.aws/search?searchTerm=wickr

There is a template for Github Hubot integration if you want to write bots in coffescript. The example code is not avaliable on Github among all the other example scripts, however if you download the docker image and run the add command you can download the Hubot example bot that way.

You can interface directly with wickr over HTTP REST API as well if you want to do your own bot from basics.

The best way of making a wickr bot is using node.js and using this example code as a starting point. 

https://github.com/WickrInc/wickrio-example-app/

Then edit example-app.js to add your own custom commands/integrations from there.