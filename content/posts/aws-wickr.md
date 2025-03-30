---
title: "How to get started with AWS Wickr"
date: 2025-03-30
draft: false
tags:
  - AWS
  - wickr
---

## Introduction

[Wickr Documentation](https://wickrinc.github.io/wickrio-docs/)

Amazon acquired Wickr, the encrypted messaging platform, and has stripped out the free Signal-like version, now selling encrypted messaging to AWS customers. Wickr is Amazon's most neglected service, with the docs still living on a GitHub page separate from the rest of AWS docs four years after their merger.

The service is subpar, and there are better alternatives for messaging unless you are a regulated business like a bank, casino, or the military. Amazon likes to tout the military application of the acquisition the most. This was probably a knee-jerk acquisition after Amazon lost the JEDI cloud contract to Azure back in 2020, and it has since been forgotten and neglected.

## Wickr Variants

Essentially, the product comes in two variants: **Wickr Cloud** and **Wickr Enterprise**. The cloud subscription is the one Amazon wants to push you toward the most. However, you can also get an enterprise license after negotiating with AWS, which allows you to download a Docker image and run Wickr locally.

## Wickr Chatbots

Wickr has chatbots that use a separate Docker container image to run, which is networked to the main Wickr instance.

### Setting Up a Docker Container with Bot Runner

Follow this guide to set up a Docker container with the bot runner image:  
[How to set up a Docker container with bot runner image](https://repost.aws/knowledge-center/wickr-ec2-webhook-bot)

### Finding AWS ECR Images

You can find all public AWS ECR images here:  
[Public AWS ECR Images](https://gallery.ecr.aws/search?searchTerm=wickr)

## Hubot Integration

There is a template for GitHub Hubot integration if you want to write bots in CoffeeScript. The example code is not available on GitHub among all the other example scripts. However, if you download the Docker image and run the `add` command, you can download the Hubot example bot that way.

## REST API Integration

You can interface directly with Wickr over the HTTP REST API if you want to build your bot from scratch.

## Best Way to Build a Wickr Bot

The best way to make a Wickr bot is by using Node.js. Start with this example code:  
[Wickr Example App](https://github.com/WickrInc/wickrio-example-app/)

Then edit `example-app.js` to add your own custom commands and integrations.