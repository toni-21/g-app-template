import 'package:apparence_kit/core/bottom_menu/bottom_router.dart';
import 'package:bart/bart.dart' as bart;
import 'package:flutter/material.dart';

/// This bottom menu is powered by Bart packages
/// https://pub.dev/packages/bart
/// It allows you to create a bottom menu with a router and handle
/// all tabs navigation separately.
/// See the bottom_router.dart file to add tabs or subpages to show on tabs
class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return bart.BartScaffold(
      routesBuilder: subRoutes,
      bottomBar: bart.BartBottomBar.adaptive(),
      initialRoute: "/library",
    );
  }
}
