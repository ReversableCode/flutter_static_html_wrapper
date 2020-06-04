# Flutter Static Html Wrapper

![GitHub forks](https://img.shields.io/github/forks/ReversableCode/flutter_static_html_wrapper?style=social)
![GitHub stars](https://img.shields.io/github/stars/ReversableCode/flutter_static_html_wrapper?style=social)
![Version](https://img.shields.io/badge/version-1.0.0-blue.svg?style=social)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=social)](#)

A Flutter project to run html games / websites on mobile.
This project runs a local server to serve static html / javascript to WebView

# Setup

## Commands

### Setup project

```sh
flutter create --org <package-name-prefix> --project-name <project-name> .
```

Note: Replace `<package-name-prefix>` and `<project-name>` as follows

```sh
flutter create --org com.example --project-name app .
```

This command will generate the necessary files and Android/Ios project with PackageName/BundleID `com.example.app`

### Run application

```sh
flutter emulators --launch <emulator_name>
flutter run
```

### Build

```sh
flutter build apk
```

# Plugins

- [webview_flutter](https://pub.dev/packages/webview_flutter)
- [local_assets_server](https://pub.dev/packages/local_assets_server)

## Author

👤 **Abdessamad El Bahri**

* Github: [@ReversableCode](https://github.com/ReversableCode)
