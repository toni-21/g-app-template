![ApparenceKit flutter starter kit header](/docs/img/header.png)

<br/>

![Apparence clients](/docs/img/trust.png)

<br/>

[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

# Apparance.io Flutter starter kit (Free version)

🔥 This template is a highly simplified version of [our pro starter kit](https://apparencekit.dev/).

- firebase firestore <br/>
- Riverpod for state management
- Simplified architecture
- Basic github CI 

**Wanna use standard backend?**<br/>
The pro version is for you. 

## Getting Started

## 🔥 Run the demo
You must have flutter properly installed on your computer.
If not, please follow the [official documentation](https://flutter.dev/docs/get-started/install).

## Run on Android
Then launch VSCode and run the 'Development' configuration.<br/>
```(Left pane > Run and Debug > Development > Start Debugging)```

## Run on iOS 
You must first configure your iOS environment. <br/>
Please follow the guide [here](./docs/setup_ios.md).<br/>
Then launch VSCode and run the 'Development' configuration.<br/>
```(Left pane > Run and Debug > Development > Start Debugging)```

**As this project is setup for demo you must follow the [installation guide](./docs/install.md) to setup your own backend and firebase project.**


## Features 

| Features                                       | Included | Pro version | 
| :--------------------------------------------- | :-------:| :----------:| 
| 🧪 Multiple environments (dev,staging,prod...) |    ✅    |     ✅      | 
| 📦 Modular architecture example                |    ✅    |     ✅      | 
| 📲 Repository pattern example                  |    ✅    |     ✅      |  
| ⏳ App initializer                             |    ✅    |     ✅      |  
| 👨‍💻 Authentication state                        |    ✅    |     ✅      |  
| 🔓 Guards example                              |    ✅    |     ✅      |  
| 📭 Email signup page                           |    ✅    |     ✅      |  
| 📱 Easy bottom bar setup (+ adaptive with OS)  |    ✅    |     ✅      |  
| 🚩 Basic Unit tests examples                   |    ✅    |     ✅      | 
| 🖥️ Basic CI setup                              |    ✅    |     ✅      |
| 🎨 Enhanced theme manager                      |    ❌    |     ✅      | 
| 🚀 CLI commands                                |    ❌    |     ✅      | 
| 🔁 Switch between firebase / standard backend (CLI command)  |    ❌    |     ✅      | 
| 🔐 Password recovery page                      |    ❌    |     ✅      |
| 🖥️ Advanced CI setup                           |    ❌    |     ✅      | 
| 🚩 Advanced Unit tests examples                |    ❌    |     ✅      | 
| 💼 Regular dependencies versions check         |    ❌    |     ✅      | 
| 🔔 Handle notifications                        |    ❌    |     ✅      | 
| 💰 In app subscription (optionnal)             |    ❌    |     ✅      | 
| 🤩 Google Ad mobs ready (optionnal)            |    ❌    |     ✅      |
| 😎 Social authentications (CLI command)        |    ❌    |     ✅      |  
| 📂 Storage api + download / upload example     |    ❌    |     ✅      |  
| 📄 Complete documentation                      |    ❌    |     ✅      |  
... and many more


**Need more features?**
[🔥 Check the pro version](https://apparencekit.dev/)

## 📘 Guides 
**Setup guides**
- [How to install](./docs/install.md) 
- Adding social authentications <small>(not available in the free version)</small>
- Subscription module <small>(not available in the free version)</small>

**Development guides**
- App architecture <small>(not available in the free version)</small>
- [Used Plugins and packages](./docs/used_plugins.md)
- Writing a module
- Codes practices <small>(not available in the free version)</small>
- [Routes and navigation](./docs/routing.md) 
- Api and Http requests <small>(not available in the free version)</small>
- Setup notifications <small>(not available in the free version)</small>
- Localisation <small>(not available in the free version)</small>
- Testing: how to write effective tests <small>(not available in the free version)</small>
- Handling errors and monitoring <small>(not available in the free version)</small>

**Deployment guides**
- [Customize splashscreen and App icon](./docs/splashscreen_appicon.md)
- [How to create a flavor on iOS / Android](./docs/flavors.md)
- [Prepare for deployment](./docs/deploy.md)
- [Deploy your app on the Apple Store](./docs/deploy_ios.md)
- [Deploy your app on the Google Play Store](./docs/deploy_android.md)
- Setup Gitlab CI<small> (not available in the free version)</small>
- Setup Github CI<small> (not available in the free version)</small>
- Setup with codemagic CI (Easier and faster than Gitlab / Github) <small>(not available in the free version)</small>

**Going further**
- Show ads with AdMob <small>(not available in the free version)</small>
- Deep links <small>(not available in the free version)</small>


## 👉 Code generation 
As we use code generation in the whole project. 
You must run this command to regenerate all the generated code from @freezed or other like json. 
For more info refer to the freezed package [documentation](https://pub.dev/packages/freezed). 

```bash
dart pub run build_runner build --delete-conflicting-outputs
```

## 📦 Code architecture
As an app grow and can include more and more people, we prefer to make modular architecture as it prevent code conflicts. 
<br>
<br>
Depending on the complexity of your project you can add another layer between object returned by firestore as Entities. So it will look like this. 
```Firestore collection > entities > repository > model```

#### File structure
TODO
- core // shared code
- modules // all modules codes
environments // environments configurations
main.dart // main app entry


-------------


<a href="https://apparence.io">
  <img
    src="./docs/img/using.png"
    width="100%"
  />
</a>

<br>
<br>

<a href="https://apparence.io">
  <img
    src="https://raw.githubusercontent.com/Apparence-io/camera_awesome/master/docs/img/apparence.png"
    width="100%"
  />
</a>