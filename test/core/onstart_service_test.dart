import 'package:apparence_kit/core/initializer/onstart_service.dart';
import 'package:apparence_kit/core/initializer/onstart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

final mockedOnStartServiceProvider = Provider<MockOnStartService>((ref) {
  return MockOnStartService();
});

class MockOnStartService extends OnStartService {
  @override
  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Initializer(
        onReady: const Text('ready'),
        onLoading: const Text('loading'),
        services: [mockedOnStartServiceProvider],
      ),
    );
  }
}

void main() {
  testWidgets(
    'app start -> should be on loading state',
    (tester) async {
      // -
      await tester.pumpWidget(const ProviderScope(child: MyApp()));
      expect(find.text('loading'), findsOneWidget);
      await tester.pump(const Duration(seconds: 1));
    },
  );

  testWidgets(
    'app start -> should be on ready state once all services are ready',
    (tester) async {
      // -
      await tester.pumpWidget(const ProviderScope(child: MyApp()));
      // expect(find.text('loading'), findsOneWidget);
      await tester.pump(const Duration(seconds: 1));
      expect(find.text('ready'), findsOneWidget);
    },
  );
}
