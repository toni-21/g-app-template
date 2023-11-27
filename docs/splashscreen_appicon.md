# Customize splashscreen and App icon

## Splashscreen

We use the plugin [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) to generate the splashscreen.

> 👌 That plugin makes it easy to generate the splashscreen for iOS and Android without having to do it manually.

To customize the splashscreen for iOS and Android, you need to change the file `assets/images/splashscreen.png` with your own image.

open the file `pubspec.yaml`<br>
See the following code:

```yaml
flutter_native_splash:
  color: "#FFFFFF"
  fullscreen: true
  ios: true
  android: true
  image: assets/images/splashscreen.png
  android_12:
    background_color: "#FFFFFF"
    foreground_color: "#FFFFFF"
```

This is the configuration of the splashscreen. You can change the color of the splashscreen by changing the value of `color` and `background_color` and `foreground_color` for android 12.

#### Generate the splashscreen

To generate the splashscreen, you need to run the following command:

```bash
dart run flutter_native_splash:create
```

**Don't forget to run this command after each change of the splashscreen.**

## App icon

We use the plugin [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) to generate the app icon.
> 👌 That plugin makes it easy to generate the app icon for iOS and Android without having to do it manually. (which is really annoying)

To customize the app icon for iOS and Android, you need to change the file `assets/images/app_icon.png` with your own image.

open the file `pubspec.yaml`<br>
See the following code:

```yaml
flutter_icons:
  android: true
  ios: true
  image_path: "assets/images/app_icon.png"
```

This is the configuration of the app icon. You can change the value of `image_path` to change the app icon.

#### Generate the app icon

To generate the app icon, you need to run the following command:

```bash
dart run flutter_launcher_icons
```