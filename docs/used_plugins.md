# Plugins

Here is a list of the most important plugins used in this project.
This list is not exhaustive. You can find the full list in the pubspec.yaml file.

I encourage you to limit the number of plugins you use in your project.<br/>
The more plugins you use the more conflits you will have.

All the plugins used in this project are well maintained and used by a lot of people.<br/>
We personally used them in production and were happy with them.

- [Riverpod: state management](https://pub.dev/packages/riverpod)
Riverpod is the most advanced state management solution for flutter. 
- [Bart: bottom bar routing](https://pub.dev/packages/bart)
Creating a bottom bar navigation is a pain. Bart is a great solution to handle bottom bar with a routing navigation in your app.
- [Flutter animate](https://pub.dev/packages/flutter_animate)
Flutter animates improves the default flutter animation system. It allows you to create complex animations with ease. (check the Subscription page for an example)
- [dio: http requests](https://pub.dev/packages/dio)
Dio is a great http client for flutter. It allows you to create a custom http client with interceptors, etc... It also has a lot of interesting extensions.
- [intl](https://pub.dev/packages/intl)
Intl is the official flutter package to handle localisation. It allows you to create localised strings, dates, etc...
- [firebase_messaging](https://pub.dev/packages/firebase_messaging)
Firebase messaging is the official flutter package to handle notifications. It allows you to send and receive push notifications. Push notifications are not always visible. You can receive a notification without any visual feedback. You can also send data with your notification.
- [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications)
Flutter local notifications is a great package to handle local notifications. It allows you to schedule notifications, create custom notifications, etc...
It's the best solution to handle local notifications.
- [firebase_core](https://pub.dev/packages/firebase_core)
Firebase core is the official flutter package to handle firebase. It allows you to initialize firebase in your app. As we use firebase for notifications, we need to initialize it.
- [json_anotation](https://pub.dev/packages/json_annotation)
Json annotation is a great package to generate json serialization and deserialisation code. It allows you to generate json serialization code with ease.
- [freezed](https://pub.dev/packages/freezed)
Freezed is a great package to generate immutable classes. It allows you to generate immutable classes with ease. It also generates a lot of useful methods like copyWith, etc...
- [google_fonts](https://pub.dev/packages/google_fonts)
Google fonts lets you use any fonts available on the google fonts website.
- [build_runner](https://pub.dev/packages/build_runner)
Flutter and dart uses a lot of code generation. Build runner is the official tool to do this.
(It is used by freezed, json_annotation, etc...)

You can find the full list of plugins in the pubspec.yaml file.