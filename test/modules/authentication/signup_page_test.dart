import 'package:apparence_kit/core/data/repositories/authentication_repository.dart';
import 'package:apparence_kit/modules/authentication/providers/signup_state_provider.dart';
import 'package:apparence_kit/modules/authentication/ui/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../firebase_test_utils.dart';
import '../../test_utils.dart';
import 'signup_page_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthenticationRepository>(),
])
void main() {
  final authRepositoryMock = MockAuthenticationRepository();

  Future<void> beforeTest(WidgetTester tester) async {
    await initFirebaseForTest();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          signupStateProvider.overrideWith(
            (ref) => SignupStateNotifier(authRepository: authRepositoryMock),
          ),
        ],
        child: MaterialApp(
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case '/':
                return MaterialPageRoute(
                  builder: (_) => const PageFake(Colors.blueAccent),
                  settings: settings,
                );
              case '/signup':
                return MaterialPageRoute(
                  builder: (_) => const SignupPage(),
                  settings: settings,
                );
              default:
                throw Exception('Unknown route: ${settings.name}');
            }
          },
          initialRoute: '/signup',
        ),
      ),
    );
    // don't forget to reset mocks before each test
    reset(authRepositoryMock);
  }

  final validInputs = ValueVariant<SignupTestEntry>({
    const SignupTestEntry("test@example.com", "password"),
    const SignupTestEntry("test@gmail.com", "passwordddd@1254"),
    const SignupTestEntry("12d1@ouch.is", "AdndjFFFGG"),
  });

  final invalidInputs = ValueVariant<SignupTestEntry>({
    const SignupTestEntry("test.com", "password"),
    const SignupTestEntry("test@gmail", "password1254"),
    const SignupTestEntry("12d1@ouch.is", "a"),
  });

  testWidgets(
    'fill valid email, password and submit => should create user',
    (tester) async {
      await beforeTest(tester);
      when(authRepositoryMock.signup(validInputs.currentValue!.email,
              validInputs.currentValue!.password))
          .thenAnswer((_) async {});

      // Find the email and password input fields
      final emailInputFinder = find.byKey(const Key('email_input'));
      final passwordInputFinder = find.byKey(const Key('password_input'));

      // Enter text into the email and password input fields
      await tester.enterText(emailInputFinder, validInputs.currentValue!.email);
      await tester.enterText(
        passwordInputFinder,
        validInputs.currentValue!.password,
      );

      // Find and tap the send button
      final sendButtonFinder = find.byKey(const Key('send_button'));
      await tester.tap(sendButtonFinder);

      // Wait for the state to update and our fake delay to finish
      await tester.pump(const Duration(milliseconds: 1500));

      // Verify that the user was created
      verify(authRepositoryMock.signup(
        validInputs.currentValue!.email,
        validInputs.currentValue!.password,
      ));
    },
    variant: validInputs,
  );

  testWidgets(
    'fill invalid email or password and submit => should not try to create user',
    (tester) async {
      await beforeTest(tester);
      when(authRepositoryMock.signup(invalidInputs.currentValue!.email,
              invalidInputs.currentValue!.password))
          .thenAnswer((_) async {});

      // Find the email and password input fields
      final emailInputFinder = find.byKey(const Key('email_input'));
      final passwordInputFinder = find.byKey(const Key('password_input'));

      // Enter text into the email and password input fields
      await tester.enterText(
          emailInputFinder, invalidInputs.currentValue!.email);
      await tester.enterText(
          passwordInputFinder, invalidInputs.currentValue!.password);

      // Find and tap the send button
      final sendButtonFinder = find.byKey(const Key('send_button'));
      await tester.tap(sendButtonFinder);

      // Wait for the state to update
      await tester.pump(const Duration(milliseconds: 1500));
      await tester.pump(const Duration(milliseconds: 1500));
      await tester.pump(const Duration(milliseconds: 1500));

      // Verify that the user was created
      verifyNever(authRepositoryMock.signup(
        invalidInputs.currentValue!.email,
        invalidInputs.currentValue!.password,
      ));
    },
    variant: invalidInputs,
  );
}

class SignupTestEntry {
  final String email;
  final String password;

  const SignupTestEntry(this.email, this.password);

  @override
  String toString() {
    return '{email: $email, password: $password}';
  }
}
