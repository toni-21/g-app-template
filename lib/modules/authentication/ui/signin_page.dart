import 'package:apparence_kit/core/widgets/toast.dart';
import 'package:apparence_kit/modules/authentication/providers/models/email.dart';
import 'package:apparence_kit/modules/authentication/providers/models/password.dart';
import 'package:apparence_kit/modules/authentication/providers/signin_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _formKey = GlobalKey<FormState>();

class SigninPage extends ConsumerWidget {
  final bool canDismiss;

  const SigninPage({super.key, this.canDismiss = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signinStateProvider);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          autovalidateMode: AutovalidateMode.disabled,
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: ListView(
              children: [
                const SizedBox(height: 44),
                Text(
                  'Welcome back',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 32),
                TextFormField(
                  key: const Key('email_input'),
                  onChanged: (value) =>
                      ref.read(signinStateProvider.notifier).setEmail(value),
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
                      .read(signinStateProvider.notifier)
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
                  onPressed: () {
                    if (!isFormValid) {
                      return;
                    }
                    _formKey.currentState!.save();
                    ref
                        .read(signinStateProvider.notifier)
                        .signin()
                        .then(
                          (value) => Navigator.of(context)
                              .pushReplacementNamed('home'),
                        )
                        .catchError(
                      (err) {
                        showErrorToast(
                          context: context,
                          title: 'Error',
                          text: 'Fill a valid email and password',
                        );
                        return null;
                      },
                    );
                  },
                  child: state.when(
                    (_, __) => const Text('Login'),
                    sending: (_, __) =>
                        const CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('signup');
                  },
                  child: const Text(
                    "Don't have an account? Signup now",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool get isFormValid => _formKey.currentState!.validate();
}
