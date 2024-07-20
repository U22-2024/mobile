import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/service/validator/text_validator/email_validate_result.dart';
import 'package:mobile/service/validator/text_validator/password_validate_result.dart';
import 'package:mobile/service/validator/text_validator/text_validator.dart';

part 'store.freezed.dart';

@freezed
class EmailPasswordFormState with _$EmailPasswordFormState {
  const factory EmailPasswordFormState({
    // form
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController rePasswordController,

    // password form
    @Default(false) bool visiblePassword,
    @Default(false) bool visibleRePassword,

    // validation
    required EmailValidateResult emailValidateResult,
    required PasswordValidateResult passwordValidateResult,

    // api
    AsyncValue<void>? signUpResult,
  }) = _EmailPasswordFormState;

  factory EmailPasswordFormState.init() => EmailPasswordFormState(
        formKey: GlobalKey<FormState>(),
        emailController: useTextEditingController(),
        passwordController: useTextEditingController(),
        rePasswordController: useTextEditingController(),
        emailValidateResult: EmailValidateResult.init(),
        passwordValidateResult: PasswordValidateResult.init(),
      );

  static bool isDuplicateEmail(EmailPasswordFormState state) {
    if (state.signUpResult?.hasError == true) {
      final error = state.signUpResult?.error;
      if (error is FirebaseAuthException) {
        return error.code == "email-already-in-use";
      }
    }

    return false;
  }

  static bool isValid(EmailPasswordFormState state) {
    return EmailValidateResult.isValid(state.emailValidateResult) &&
        PasswordValidateResult.isValid(state.passwordValidateResult);
  }
}

//#region Actions
sealed class EmailPasswordFormAction {
  const EmailPasswordFormAction();
}

class EmailChangedAction extends EmailPasswordFormAction {
  EmailChangedAction();
}

class PasswordChangedAction extends EmailPasswordFormAction {
  PasswordChangedAction();
}

class SignUpStartAction extends EmailPasswordFormAction {
  SignUpStartAction();
}

class SignUpSuccessAction extends EmailPasswordFormAction {
  SignUpSuccessAction();
}

class SignUpFailureAction extends EmailPasswordFormAction {
  SignUpFailureAction(this.exception);

  final FirebaseAuthException exception;
}

class PasswordVisibleAction extends EmailPasswordFormAction {
  PasswordVisibleAction({
    this.visiblePassword,
    this.visibleRePassword,
  });

  final bool? visiblePassword;
  final bool? visibleRePassword;
}

class ResetAction extends EmailPasswordFormAction {
  ResetAction();
}
//#endregion

typedef EmailPasswordFormStore
    = Store<EmailPasswordFormState, EmailPasswordFormAction>;

EmailPasswordFormState reducer(
  EmailPasswordFormState state,
  EmailPasswordFormAction action,
) =>
    switch ((state, action)) {
      (_, EmailChangedAction()) => state.copyWith(
          emailValidateResult: TextValidator.email(
            state.emailController.text,
            false,
          ),
        ),
      (_, PasswordChangedAction()) => state.copyWith(
          passwordValidateResult: TextValidator.password(
            state.passwordController.text,
            state.rePasswordController.text,
          ),
        ),
      (_, SignUpStartAction()) => state.copyWith(
          signUpResult: const AsyncValue.loading(),
        ),
      (_, SignUpSuccessAction()) => state.copyWith(
          signUpResult: const AsyncValue.data(null),
        ),
      (_, SignUpFailureAction(:final exception)) => state.copyWith(
          emailValidateResult: state.emailValidateResult.copyWith(
            isDuplicate: exception.code == "email-already-in-use",
          ),
          signUpResult: AsyncValue.error(
              exception, exception.stackTrace ?? StackTrace.current),
        ),
      (
        _,
        PasswordVisibleAction(
          :final visiblePassword,
          :final visibleRePassword,
        ),
      ) =>
        state.copyWith(
          visiblePassword: visiblePassword ?? state.visiblePassword,
          visibleRePassword: visibleRePassword ?? state.visibleRePassword,
        ),
      (_, ResetAction()) => state.copyWith(
          emailValidateResult: EmailValidateResult.init(),
          passwordValidateResult: PasswordValidateResult.init(),
          signUpResult: null,
        )
    };
