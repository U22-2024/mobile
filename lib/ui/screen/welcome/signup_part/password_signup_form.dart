import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/common/reducer.dart';
import 'package:mobile/repository/user/user_repository.dart';
import 'package:mobile/service/router/router_provider.dart';

import 'email_input_field.dart';
import 'password_input_field.dart';
import 'store.dart';

class PasswordSignUpForm extends HookConsumerWidget {
  const PasswordSignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EmailPasswordFormStore store = useReducer(
      reducer,
      initialState: EmailPasswordFormState.init(),
      initialAction: ResetAction(),
    );

    return StoreInjector(store: store, child: _Form());
  }
}

class _Form extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = StateModel.of<EmailPasswordFormState>(context);
    final isLoading = state.signUpResult?.isLoading == true;
    final hasError = !isLoading && state.signUpResult?.hasError == true;

    Future<void> signup() async {
      if (state.formKey.currentState?.validate() != true) {
        return;
      }

      final dispatcher = Dispatcher.of<EmailPasswordFormAction>(context);
      if (dispatcher == null) {
        return;
      }

      dispatcher.dispatch(SignUpStartAction());
      try {
        final userRepository = ref.read(userRepositoryProvider);
        await userRepository.createAndSignIn(
            state.emailController.text, state.passwordController.text);
        dispatcher.dispatch(SignUpSuccessAction());

        await userRepository.signInWithEmailAndPassword(
            state.emailController.text, state.passwordController.text);
        if (!context.mounted) return;
        const HomeRoute().go(context);
      } on FirebaseAuthException catch (e) {
        dispatcher.dispatch(SignUpFailureAction(e));
      }
    }

    return Form(
      key: state.formKey,
      child: Column(
        children: [
          const EmailInputField(),
          const SizedBox(height: 16),
          const PasswordInputField(),
          const SizedBox(height: 16),
          if (hasError) ...[
            Text(
              "登録できませんでした",
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 16),
          ],
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: isLoading || !EmailPasswordFormState.isValid(state)
                  ? null
                  : signup,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                overlayColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: isLoading
                  ? CircularProgressIndicator(
                      color: (EmailPasswordFormState.isValid(state)
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.inversePrimary)
                          .withOpacity(0.5),
                    )
                  : Text(
                      "登録",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: EmailPasswordFormState.isValid(state)
                                ? Theme.of(context).colorScheme.onPrimary
                                : Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.color
                                    ?.withOpacity(0.5),
                          ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
