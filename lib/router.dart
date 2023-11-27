import 'package:apparence_kit/core/bottom_menu/bottom_menu.dart';
import 'package:apparence_kit/core/guards/authenticated_guard.dart';
import 'package:apparence_kit/core/widgets/page_not_found.dart';
import 'package:apparence_kit/modules/authentication/ui/signin_page.dart';
import 'package:apparence_kit/modules/authentication/ui/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Route<dynamic> routes(RouteSettings settings) {
  Logger().i('👉 Routing to ${settings.name}');
  switch (settings.name) {
    case 'home':
      return MaterialPageRoute(
        builder: (_) => const AuthenticatedGuard(
          fallbackRoute: 'signin',
          child: BottomMenu(),
        ),
        settings: settings,
      );
    case 'signup':
      return MaterialPageRoute(
        builder: (_) => const SignupPage(),
        settings: settings,
      );
    case 'signin':
      return MaterialPageRoute(
        builder: (_) => const SigninPage(),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const PageNotFound(),
        settings: settings,
      );
  }
}
