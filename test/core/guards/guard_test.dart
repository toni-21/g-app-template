import 'package:apparence_kit/core/guards/guard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<bool>? condition;

  Route<dynamic> testRoutes(RouteSettings settings) {
    switch (settings.name) {
      case 'page1':
        return MaterialPageRoute(
          builder: (context) => Guard(
            canActivate: condition!,
            fallbackRoute: 'page2',
            child: const FakePage(msg: 'page1'),
          ),
        );
      case 'page2':
        return MaterialPageRoute(
          builder: (context) => const FakePage(msg: 'page2'),
        );
      default:
        throw 'error page not found';
    }
  }

  testWidgets('guard condition returns true => pass through OK',
      (WidgetTester tester) async {
    condition = Future.value(true);

    final app = MaterialApp(initialRoute: 'page1', onGenerateRoute: testRoutes);
    await tester.pumpWidget(app);
    // ignore: avoid_redundant_argument_values
    await tester.pumpAndSettle(const Duration(milliseconds: 100));

    expect(find.text('page1'), findsOneWidget);
  });

  testWidgets('guard condition returns false => fallback to error url',
      (WidgetTester tester) async {
    condition = Future.value(false);

    final app = MaterialApp(initialRoute: 'page1', onGenerateRoute: testRoutes);
    await tester.pumpWidget(app);
    // ignore: avoid_redundant_argument_values
    await tester.pumpAndSettle(const Duration(milliseconds: 100));

    expect(find.text('page2'), findsOneWidget);
  });
}

class FakePage extends StatelessWidget {
  final String msg;

  const FakePage({
    super.key,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(msg),
    );
  }
}
