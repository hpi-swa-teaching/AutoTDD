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
  get.
  
Metacello new
  baseline: 'AutoTDD';
  repository: 'github://HPI-SWA-Teaching/AutoTDD:master/packages';
  onConflict: [:ex | ex allow];
  load
```
2. *Optional:* Put the [AutoTDD](https://github.com/HPI-SWA-Teaching/AutoTDD/tree/master/resources) folder into your `Resources` folder.
3. Now you can open the *Test Auto Runner* via *Apps*.

##Documentation
[Documentation](https://github.com/HPI-SWA-Teaching/AutoTDD/wiki/Documentation)

[HTTPS Requests to Travis](https://github.com/HPI-SWA-Teaching/AutoTDD/wiki/Communicating-with-Travis)
