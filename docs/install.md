
# ✅ Install Firebase 

**As this project is setup for demo you must follow this to setup your own backend and firebase project.**

We need firebase for the push notifications. <br/>
- Google force us to create a project for each Android application
- Firebase allows us to send push notifications to iOS and Android devices

You must first create a firebase project [here](https://console.firebase.google.com/)

#### Install firebase cli

On Mac, you can install it with 
```bash
brew install firebase-cli
```

Or with npm 
```bash
npm install -g firebase-tools
```

Check the [official documentation](https://firebase.google.com/docs/cli) for other OS.

#### Login to firebase
```bash
firebase login
```

#### Flutterfire cli
Flutter fire cli is a tool to generate firebase configuration files with flutter. 

Install it with
```bash
dart pub global activate flutterfire_cli
```

Configure your project (dev environment here)
```bash
# flutterfire configure --project=YOUR_PROJECT_NAME --out lib/firebase_options_[environment].dart 
# Ex: 
flutterfire configure --project=apparencekit-pro --out lib/firebase_options_dev.dart 
```
This will output a configuration file into your lib folder.<br/> 
Create as many environments as you need. 

#### Remove firebase generated files
I recommend you to remove any firebase generated files from Android / iOS folders.<br/>
Flutter recently added a new way to configure firebase, relying on dart code. <br/>
- remove the google-services.json file from the android/app folder
- remove the GoogleService-Info.plist file from the ios/Runner folder

#### Setup firebase
```dart
import 'package:apparence_kit/firebase_options_dev.dart' as firebase_dev;
...
void main() async {
    ...
    await env.when(
        dev: (_) => Firebase.initializeApp(
            options: firebase_dev.DefaultFirebaseOptions.currentPlatform,
        ),
        ...
    );
}
```

## 🎯 Environments
Environments are linked to a firebase project. 
Create one factory for each in the *lib/environnements.dart* file.

```dart
...
const factory Environment.dev({required String name}) = DevEnvironment;
const factory Environment.production({required String name}) = ProdEnvironment;
...
```

You can setup flavors for a custom package name for every environments.<br/>
Ex: 
- com.example.myapp.dev (for dev)
- com.example.myapp.stagin (for staging)
- com.example.myapp (for production)
This will prevent from publishing a dev environment to your production. <br/>
Also you can run both staging and production on a single device (great for testing).<br/>
[How to create a flavor on iOS / Android](./flavors.md). 

## Setup your backend

**The free version of ApparenceKit has a simplified architecture and allow only using Firebase.** 

If you want to use you own backend you must use the pro version. 

[Check the pro version](https://apparencekit.dev/#pricing)

### Setup your own backend url

> 🚨 This is not available in the free version

For testing purpose we provide a fake backend. <br/>
It answers to every request with a 200 status code and a fake json response. <br/>

You can setup your backend url using a Dart environment variable. <br/>
```bash
flutter run \
--dart-define=BACKEND_URL=https://us-central1-apparencekit-pro.cloudfunctions.net/app \
--dart-define=ENV=dev
```

Using VSCode you can configure a launch config for each of your environments like this
(put this in your project .vscode/launch.json file)
```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Dev",
            "request": "launch",
            "type": "dart",
            "args": [
                "--dart-define=BACKEND_URL=https://us-central1-apparencekit-pro.cloudfunctions.net/app",
                "--dart-define=ENV=dev"
            ]
        },
        {
            "name": "Staging",
            "request": "launch",
            "type": "dart",
            "args": [
                "--dart-define=BACKEND_URL=https://us-central1-apparencekit-pro.cloudfunctions.net/app",
                "--dart-define=ENV=staging"
            ]
        },
        {
            "name": "Prod",
            "request": "launch",
            "type": "dart",
            "args": [
                "--dart-define=BACKEND_URL=https://us-central1-apparencekit-pro.cloudfunctions.net/app",
                "--dart-define=ENV=prod"
            ]
        }
    ]
}
```

Here we are, you can now play with your app. 