![AutoTDD_Banner](https://user-images.githubusercontent.com/58258541/126001012-dac234d9-e242-4ac0-86d1-0b227f237321.png)

---

<p align="center">
  <a href="https://github.com/hpi-swa-teaching/AutoTDD/actions">
    <img src="https://github.com/hpi-swa-teaching/AutoTDD/workflows/CI/badge.svg?branch=dev" />
  </a>
  <a href="https://coveralls.io/github/hpi-swa-teaching/AutoTDD?branch=dev">
    <img src="https://coveralls.io/repos/github/hpi-swa-teaching/AutoTDD/badge.svg?branch=dev" />
  </a>
</p>

## 💡 About

The Test Auto Runner (AutoTDD) is an automated testing tool for continuously monitoring the status of your project's tests. AutoTDD enables you to automatically execute tests upon altering your projects's methods. When a test fails, you will get instant feedback on what went wrong.

![A screenshot of AutoTDD](https://i.imgur.com/EuCCRDX.png)

## 💾 Installation
  
1. Make sure you have [<img src="https://squeak.de/static/img/favicon.png" width="16" height="16"> Metacello-Work](https://github.com/Metacello/metacello) installed.
2. Make sure you have [💿 OSProcess](http://wiki.squeak.org/squeak/708) installed.
3. Load the project with:

```smalltalk
Metacello new
  baseline: 'AutoTDD';
  repository: 'github://hpi-swa-teaching/AutoTDD:master/packages';
  onConflict: [:ex | ex allow];
  load
```

You should now be able to open AutoTDD by clicking on <kbd>Test Auto Runner</kbd> via the <kbd>Apps</kbd> menu.

### Upgrading from v2 / v3

If you are upgrading from AutoTDD **v2** or **v3** please make sure to stop **all** currently running tests and close all AutoTDD-related windows.

## 🔊 Sound Customizations

If the `AutoTDD` folder is present in your `Resources` folder, you can use the following commands to reload AutoTDD's sounds into your image:

```smalltalk
ATDDSoundPlayer new generateSoundMethods
```

## ☝️ FAQ

### What permissions are needed for GitHub Actions Tokens?

> TODO: Answer

### What kind of tests is AutoTDD suited for?

> TODO: Answer

### How can I customize the test-runner?

> TODO: Answer (move Sound customization here and mention theming)

## Documentation

> A more technical documentation can either be found in the class comments or here: [AutoTDD Wiki](https://github.com/hpi-swa-teaching/AutoTDD/wiki).
