import 'package:animations/animations.dart';
import 'package:apparence_kit/modules/profile/settings_page.dart';
import 'package:bart/bart.dart';
import 'package:flutter/material.dart';

List<BartMenuRoute> subRoutes() {
  return [
    BartMenuRoute.bottomBar(
      label: "My collection",
      icon: Icons.home,
      path: '/library',
      pageBuilder: (_, __, settings) => const PageFake(Colors.blueAccent),
      transitionDuration: bottomBarTransitionDuration,
      transitionsBuilder: bottomBarTransition,
    ),
    BartMenuRoute.bottomBar(
      label: "Wishlist",
      icon: Icons.favorite,
      path: '/wishlist',
      pageBuilder: (_, __, settings) => const PageFake(Colors.lightBlueAccent),
      transitionDuration: bottomBarTransitionDuration,
      transitionsBuilder: bottomBarTransition,
    ),
    BartMenuRoute.bottomBar(
      label: "Notifications",
      icon: Icons.notifications,
      path: '/notifications',
      pageBuilder: (_, __, settings) => const PageFake(Colors.orangeAccent),
      transitionDuration: bottomBarTransitionDuration,
      transitionsBuilder: bottomBarTransition,
    ),
    BartMenuRoute.bottomBar(
      label: "Profile",
      icon: Icons.person,
      path: '/profile',
      pageBuilder: (_, __, settings) => const SettingsPage(),
      transitionDuration: bottomBarTransitionDuration,
      transitionsBuilder: bottomBarTransition,
    ),
    BartMenuRoute.innerRoute(
      path: '/search',
      pageBuilder: (_, __, ___) => const PageFake(Colors.blueAccent),
    ),
    BartMenuRoute.innerRoute(
      path: '/search/subscribe',
      pageBuilder: (_, __, ___) => const PageFake(Colors.blueAccent),
    ),
  ];
}

/// This is a fake page to show how to use Bart
/// You can replace it with your own pages
class PageFake extends StatelessWidget {
  final Color color;

  const PageFake(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

Widget bottomBarTransition(
  BuildContext c,
  Animation<double> a1,
  Animation<double> a2,
  Widget child,
) =>
    FadeThroughTransition(
      animation: a1,
      secondaryAnimation: a2,
      fillColor: Colors.transparent,
      child: child,
    );

const bottomBarTransitionDuration = Duration(milliseconds: 300);
