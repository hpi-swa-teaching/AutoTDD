AutoTDD with Travis-CI Support
===================
[![Build Status](https://travis-ci.org/HPI-SWA-Teaching/AutoTDD.svg)](https://travis-ci.org/HPI-SWA-Teaching/AutoTDD)

## Installation

1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed.
2. Load the project with:
```smalltalk
Metacello new
  baseline: 'AutoTDD';
  repository: 'github://HPI-SWA-Teaching/AutoTDD:master/packages';
  onConflict: [:ex | ex allow];
  load
```
Now you can open the **Test Auto Runner** via *Apps*.

## Customizations
If the [AutoTDD](https://github.com/HPI-SWA-Teaching/AutoTDD/tree/master/resources) folder is present in your `Resources` folder, you can use the following commands to reload AutoTDD's images and sounds into your image:
```smalltalk
ATDDImageProvider new generateImageMethods.
ATDDSoundPlayer new generateSoundMethods
```

##Documentation
[Documentation](https://github.com/HPI-SWA-Teaching/AutoTDD/wiki/Documentation)

[HTTPS Requests to Travis](https://github.com/HPI-SWA-Teaching/AutoTDD/wiki/Communicating-with-Travis)
