import 'package:flutter/material.dart';

class Guard extends StatelessWidget {
  final Future<bool> canActivate;
  final Widget child;
  final String fallbackRoute;

  const Guard({
    super.key,
    required this.canActivate,
    required this.child,
    required this.fallbackRoute,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: canActivate,
      builder: (_, result) {
        if (!result.hasData || result.hasError) {
          return Container();
        }
        final bool canActivate = result.data!;
        if (canActivate) {
          return child;
        }
        redirect(context);
        return Container();
      },
    );
  }

  void redirect(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.pushReplacementNamed(context, fallbackRoute);
    });
  }
}
