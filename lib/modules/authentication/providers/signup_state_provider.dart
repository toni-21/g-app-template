import 'package:apparence_kit/core/data/repositories/authentication_repository.dart';
import 'package:apparence_kit/modules/authentication/providers/models/email.dart';
import 'package:apparence_kit/modules/authentication/providers/models/password.dart';
import 'package:apparence_kit/modules/authentication/providers/models/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signupStateProvider =
    StateNotifierProvider.autoDispose<SignupStateNotifier, SignupState>(
  (ref) => SignupStateNotifier(
    authRepository: ref.watch(authRepositoryProvider.notifier),
  ),
);

class SignupStateNotifier extends StateNotifier<SignupState> {
  final AuthenticationRepository _authRepository;

  SignupStateNotifier({
    required AuthenticationRepository authRepository,
  })  : _authRepository = authRepository,
        super(SignupState(email: Email(""), password: Password("")));

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

  Future<void> signup() async {
    if (state is SignupStateSending) {
      return;
    }
    try {
      state.email.validate();
      state.password.validate();
      state = SignupState.sending(email: state.email, password: state.password);
      await _authRepository.signup(state.email.value, state.password.value);
      // lets fake a delay to prevent spamming the signup button
      await Future.delayed(const Duration(milliseconds: 1500));
    } catch (e) {
      debugPrint("Error while signing up: $e");
      state = SignupState(email: state.email, password: state.password);
      rethrow;
    }
  }
}
