AutoTDD with Travis-CI Support
===================
[![Build Status](https://travis-ci.org/hpi-swa-teaching/AutoTDD.svg)](https://travis-ci.org/hpi-swa-teaching/AutoTDD) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/AutoTDD/badge.svg?branch=dev)](https://coveralls.io/github/hpi-swa-teaching/AutoTDD?branch=dev)

## About
AutoTDD is an automated testing tool for continuously monitoring the test state of your project. You tests will be automatically executed when a method in your project changes. When a test fails, you will get instant feedback about what went wrong. It also displays current Travis build results.

![A screenshot of AutoTDD](https://spee.ch/6/atdd.png)
## Installation
1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed.
2. Load the project with:
```smalltalk
Metacello new
  baseline: 'AutoTDD';
  repository: 'github://hpi-swa-teaching/AutoTDD:master/packages';
  onConflict: [:ex | ex allow];
  load
```
Now you can open the **Test Auto Runner** via *Apps*.

### Upgrading from v2
If you are upgrading from v2 of AutoTDD, please make sure to close **all** traffic lights and windows **and** that no tests are running anymore, otherwise your image will probably crash.

## Sound Customizations
If the [AutoTDD](https://github.com/hpi-swa-teaching/AutoTDD/tree/master/resources) folder is present in your `Resources` folder, you can use the following commands to reload AutoTDD's sounds into your image:
```smalltalk
ATDDSoundPlayer new generateSoundMethods
```

## Documentation
A more technical documentation can either be found in the class comments or here:
[Documentation](https://github.com/hpi-swa-teaching/AutoTDD/wiki)
