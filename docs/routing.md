# Routes and navigation

Flutter provides a simple way to navigate between screens. <br/>
You can use the `Navigator` class to push and pop routes to the screen stack. <br/>

I encourage to use named routes to navigate between screens. <br/>

In this app structure we have two layers of navigation. <br/>
- top navigation 
- bottom navigation (used by the bottom navigation bar)

## Top navigation

The top navigation is defined in the `lib/router.dart` file. <br/>

You can push a route using the `Navigator.pushNamed('my_route')` method. <br/>
👉 The route must be defined in the `lib/router.dart` file like this

```dart
MaterialPageRoute(
    settings: const RouteSettings(name: 'my_route'),
    builder: (_) => const MyPage(),
),
```

**Note: if a bottom navigation is visible please check the bottom navigation section below.**

**Note2: We will migrate to GoRouter soon.**


## Bottom navigation

The bottom navigation is defined in the `lib/core/bottom_menu/bottom_router.dart` file. <br/>
This use the package [Bart](https://pub.dev/packages/bart) that we made to handle bottom navigation according to Apple and Google recommandations. <br/>

When you are in a page that is part of the bottom navigation.
You can push a route withing the same tab using regular `Navigator.pushNamed('my_route')` method. <br/>
👉 The route must be defined in the `lib/core/bottom_menu/bottom_router.dart` file like this

```dart
BartMenuRoute.innerRoute(
    path: 'my_route',
    pageBuilder: (_, __, ___) => const MyPage(),
),
```

If you want to push a page above the navigation bar (like a modal) you can use 

```dart
Navigator.of(context, rootNavigator: true).pushNamed('my_route');
```

👉 The route must be defined in the `lib/router.dart` file like this

You can also
- animate the bottom navigation bar
- animate hide and show a top bar
- 

For more info about Bart please refer to the [documentation](https://pub.dev/packages/bart).

## Page transitions

The page transition has been set to native recommandations. <br/>
You can change it in the `lib/theme.dart` file for each OS. <br/>

```dart
pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
```

You can also change it for each route

For example if you want to use a fade transition for a specific route you can do
```dart
MaterialPageRoute(
    settings: const RouteSettings(name: 'my_route'),
    builder: (_) => const MyPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
            opacity: animation,
            child: child,
        );
    },
),
```

## Protecting a route

You can protect a route using a guard. <br/>

A guard is a class that use the `Guard widget` interface. <br/> 

For example you can use the `AuthenticatedGuard` to protect a route. <br/>
in `lib/router.dart``

```dart
...
case 'home':
    return MaterialPageRoute(
    builder: (_) => const AuthenticatedGuard(
        fallbackRoute: 'signup',
        child: BottomMenu(),
    ),
    settings: settings,
);
```

### Creating a guard

You can follow the `lib/core/guards/authenticated_guard.dart` file to create a new guard. <br/>

```dart
class AuthenticatedGuard extends ConsumerWidget {
  final Widget child;
  final String fallbackRoute;

  const AuthenticatedGuard({
    super.key,
    required this.child,
    required this.fallbackRoute,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(userStateNotifierProvider);
    return Guard(
      canActivate: authState.user.maybeMap(
        authenticated: (_) async => true,
        orElse: () async => false,
      ),
      fallbackRoute: fallbackRoute,
      child: child,
    );
  }
}
```