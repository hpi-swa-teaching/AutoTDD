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

The Test Auto Runner (AutoTDD) is an automated testing tool which helps you continuously monitor the status of your project by enabling you to automatically run tests on changes to your project. When a test fails, you will get instant feedback on what went wrong. AutoTDD also supports integration with CI tools such as **GitHub Actions** and **Travis CI**.

![A screenshot of AutoTDD](https://user-images.githubusercontent.com/38653851/126144139-4dffdea3-d33c-4f1c-a29a-f77c796bd258.png)

## 💾 Installation

### Via Metacello (recommended)

1. Make sure you have [<img src="https://squeak.de/static/img/favicon.png" width="16" height="16"> Metacello-Work](https://github.com/Metacello/metacello) installed.
2. In a new workspace load the project into your image by running:

```smalltalk
Metacello new
  baseline: 'AutoTDD';
  repository: 'github://hpi-swa-teaching/AutoTDD:master/packages';
  onConflict: [:ex | ex allow];
  load
```

You should now be able to open AutoTDD by clicking on <kbd>Test Auto Runner</kbd> via the <kbd>Apps</kbd> menu.

### Via direct SAR-Installation

1. Download the latest `AutoTDD.sar` file from the project's [Releases](https://github.com/hpi-swa-teaching/AutoTDD/releases).
2. Drag and drop `AutoTDD.sar` into your image and select <kbd>install SAR</kbd>.

![Sar Popup](https://user-images.githubusercontent.com/38653851/126059197-f00de748-cbf6-466a-910d-bd5f8a4831bd.png)

You should now be able to open AutoTDD by clicking on <kbd>Test Auto Runner</kbd> via the <kbd>Apps</kbd> menu.

### 📦 Upgrading from v2 / v3

If you are upgrading from AutoTDD **v2** or **v3** please make sure to stop **all** currently running tests and close all AutoTDD-related windows before proceeding with the installation.

## ☝️ FAQ

### What permissions are needed for GitHub Actions Tokens?

> GitHub Actions tokens require **repo** and **workflow** permissions.

### What kind of tests is AutoTDD suited for?

> AutoTDD runs user-specified tests as soon as any relevant classes / methods undergo changes. As such, your tests will run quite frequently. Due to this, it is not advised to use AutoTDD for obtrusive or long-winded tests. This especially includes GUI tests where windows are opened / closed frequently. 

### How can I customize the test-runner?

> AutoTDD supports customization for sounds as well as themes. To change what sounds AutoTDD uses, swap out the respective files in the `Resources/AutoTDD/sounds` directory and reload the sound player with:
> ```smalltalk
> ATDDSoundPlayer new generateSoundMethods
> ```
> AutoTDD also supports various color schemes depending on the currently selected theme in your image. To change the look and feel of the GUI, select a new theme from `Extras → Themes & Colors`


## Documentation

> A more detailed and technical documentation can either be found in the class comments under the [AutoTDD Wiki](https://github.com/hpi-swa-teaching/AutoTDD/wiki).
