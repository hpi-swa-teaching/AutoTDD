AutoTDD with Travis-CI Support
===================
[![Build Status](https://travis-ci.org/hpi-swa-teaching/AutoTDD.svg)](https://travis-ci.org/hpi-swa-teaching/AutoTDD)

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

## Customizations
If the [AutoTDD](https://github.com/hpi-swa-teaching/AutoTDD/tree/master/resources) folder is present in your `Resources` folder, you can use the following commands to reload AutoTDD's images and sounds into your image:
```smalltalk
ATDDImageProvider new generateImageMethods.
ATDDSoundPlayer new generateSoundMethods
```

## Documentation
[Documentation](https://github.com/hpi-swa-teaching/AutoTDD/wiki/Documentation)

[HTTPS Requests to Travis](https://github.com/hpi-swa-teaching/AutoTDD/wiki/Communicating-with-Travis)
