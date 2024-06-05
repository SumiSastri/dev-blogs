<!-- ---
layout: default
title: Firebase release and monitor tools
parent: GCP Firebase
nav_order: 9
--- -->

# Firebase release and monitor tools

Some of the release and monitor tools have added functionality from the build and engage tools - Remote Config - for example is used across all three stages of the development process.

Release and monitor is about deploying your app and monitoring its performance in a production and post-production environment.


## Firebase emulator

The Firebase emulator allows you to check features on your local machine before your push changes to the Google Cloud Services.

## Cloud messaging

Push notifications can be sent to web and mobile apps. It can be integrated with Remote Config and therefore you can segement audiences and test messages to different audiences based on segmenting your customer base according to the test you want to run.

You can also send data to web and mobile app users with customised notifications based on rules set out in a function that delivers the message.

You can send notifications to specific types of devices - messages only to Android Samsung Galaxy users for example and you can customised notifications with a feature called Notification Composer.

Messages can also be analysed based on test results or delivery, open rates etc.

## Machine learning

You can add machine learning (ML) but this feature is only available for mobile not web apps. These features which can run on devices include

- text and image recognition
- object detection
- custom models which can be tested with A/B or multi-variate testing using Tensorflow Lite
- prebuilt application programming interfaces (APIs)

As they can run on devices, ML is fast and provides quick feedback to servers. They also run offliine and sync with the device when the device is online.