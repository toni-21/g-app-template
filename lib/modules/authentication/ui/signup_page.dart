import 'package:apparence_kit/core/data/repositories/authentication_repository.dart';
import 'package:apparence_kit/core/widgets/page_background.dart';
import 'package:apparence_kit/core/widgets/toast.dart';
import 'package:apparence_kit/modules/authentication/providers/models/email.dart';
import 'package:apparence_kit/modules/authentication/providers/models/password.dart';
import 'package:apparence_kit/modules/authentication/providers/signup_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupPage extends ConsumerWidget {
  static final _formKey = GlobalKey<FormState>();
  final bool canDismiss;

  const SignupPage({super.key, this.canDismiss = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStateProvider);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SizedBox(
        child: WillPopScope(
          onWillPop: () async {
            if (canDismiss) {
              Navigator.of(context, rootNavigator: true).pop(false);
              return false;
            }
            return true;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Background(
              // bgOverlayImagePath: "assets/images/bd_sample.png",
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: ListView(
                    children: [
                      const SizedBox(height: 44),
                      Text(
                        'Signup now',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        key: const Key('email_input'),
                        onChanged: (value) => ref
                            .read(signupStateProvider.notifier)
                            .setEmail(value),
                        decoration: const InputDecoration(
                          hintText: 'bruce@wayne.com',
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          try {
                            state.email.validate();
                          } on EmailException catch (e) {
                            return e.message;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        key: const Key('password_input'),
                        onChanged: (newValue) => ref
                            .read(signupStateProvider.notifier)
                            .setPassword(newValue),
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        validator: (value) {
                          try {
                            state.password.validate();
                          } on PasswordException catch (e) {
                            return e.message;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        key: const Key('send_button'),
                        onPressed: () async {
                          ref
                              .read(signupStateProvider.notifier)
                              .signup()
                              .then(
                                (value) => Navigator.of(context)
                                    .pushReplacementNamed('home'),
                              )
                              .catchError(
                            (err) {
                              showErrorToast(
                                context: context,
                                title: 'Error',
                                text: (err as SignupException).message,
                              );
                              return err;
                            },
                            test: (err) => err is SignupException,
                          ).catchError(
                            (err) {
                              showErrorToast(
                                context: context,
                                title: 'Error',
                                text: 'Fill a valid email and password',
                              );
                              return err;
                            },
                          );
                        },
                        child: state.when(
                          (_, __) => const Text('Create my account'),
                          sending: (_, __) =>
                              const CircularProgressIndicator.adaptive(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          // TODO: implement login page
                          Navigator.of(context).pushReplacementNamed('signin');
                        },
                        child: const Text(
                          "I already have an account",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
