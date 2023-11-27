import 'package:apparence_kit/core/data/repositories/authentication_repository.dart';
import 'package:apparence_kit/modules/authentication/providers/models/email.dart';
import 'package:apparence_kit/modules/authentication/providers/models/password.dart';
import 'package:apparence_kit/modules/authentication/providers/models/signin_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signinStateProvider =
    StateNotifierProvider.autoDispose<SigninStateNotifier, SigninState>(
  (ref) => SigninStateNotifier(
    authRepository: ref.watch(authRepositoryProvider.notifier),
  ),
);

class SigninStateNotifier extends StateNotifier<SigninState> {
  final AuthenticationRepository _authRepository;

  SigninStateNotifier({
    required AuthenticationRepository authRepository,
  })  : _authRepository = authRepository,
        super(SigninState(email: Email(""), password: Password("")));

  void setEmail(String? value) {
    final email = Email(value ?? '');
    if (email == state.email) {
      return;
    }
    state = state.copyWith(email: email);
  }

  void setPassword(String? pwd) {
    final password = Password(pwd ?? '');
    if (password == state.password) {
      return;
    }
    state = state.copyWith(password: password);
  }

  Future<void> signin() async {
    if (state is SigninStateSending) {
      return;
    }
    try {
      state.email.validate();
      state.password.validate();
      state = SigninState.sending(email: state.email, password: state.password);
      await _authRepository.signin(state.email.value, state.password.value);
      // lets fake a delay to prevent spamming the signup button
      await Future.delayed(const Duration(milliseconds: 1500));
    } catch (e) {
      debugPrint("Error while signin in: $e");
      state = SigninState(email: state.email, password: state.password);
      rethrow;
    }
  }
}
