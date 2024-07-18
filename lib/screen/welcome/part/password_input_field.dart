import 'package:flutter/material.dart';
import 'package:mobile/common/reducer.dart';
import 'package:mobile/screen/welcome/part/store.dart';
import 'package:mobile/service/validator/text_validator/password_validate_result.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final (passwordController, rePasswordController) = StateModel.selectOf<
        EmailPasswordFormState, (TextEditingController, TextEditingController)>(
      context,
      select: (state) => (state.passwordController, state.rePasswordController),
    );

    return Column(
      children: [
        _PasswordForm(
          isRePassword: false,
          controller: passwordController,
        ),
        _PasswordForm(
          isRePassword: true,
          controller: rePasswordController,
        ),
        const SizedBox(height: 16),
        _PasswordValidateText(),
      ],
    );
  }
}

class _PasswordForm extends StatelessWidget {
  const _PasswordForm({
    required this.isRePassword,
    required this.controller,
  });

  final bool isRePassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final visiblePassword = StateModel.selectOf<EmailPasswordFormState, bool>(
        context, select: (state) {
      return isRePassword ? state.visibleRePassword : state.visiblePassword;
    });
    final validateResult =
        StateModel.selectOf<EmailPasswordFormState, PasswordValidateResult>(
      context,
      select: (state) => state.passwordValidateResult,
    );

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: isRePassword ? "パスワードの確認" : "パスワード",
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        fillColor: Theme.of(context).hoverColor,
        filled: true,
        errorStyle: const TextStyle(height: 0),
        suffixIcon: IconButton(
          icon: Icon(visiblePassword ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            final dispatcher = Dispatcher.of<EmailPasswordFormAction>(context);
            dispatcher?.dispatch(
              isRePassword
                  ? PasswordVisibleAction(visibleRePassword: !visiblePassword)
                  : PasswordVisibleAction(visiblePassword: !visiblePassword),
            );
          },
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !visiblePassword,
      onChanged: (value) {
        Dispatcher.of<EmailPasswordFormAction>(context)
            ?.dispatch(PasswordChangedAction());
      },
      validator: (value) {
        if (PasswordValidateResult.isValid(validateResult)) {
          return null;
        }

        return "";
      },
    );
  }
}

class _PasswordValidateText extends StatelessWidget {
  Widget _passwordValidateText(BuildContext context, String msg, bool isValid) {
    final iconColor = isValid
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.primary.withOpacity(0.4);
    final textTheme = Theme.of(context).textTheme.bodySmall;

    return Container(
      padding: const EdgeInsets.only(left: 8, bottom: 8),
      child: Row(
        children: [
          Icon(Icons.info, size: 16, color: iconColor),
          const SizedBox(width: 16),
          Text(
            msg,
            style: isValid
                ? textTheme
                : textTheme?.copyWith(color: textTheme.color?.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final validateResult =
        StateModel.selectOf<EmailPasswordFormState, PasswordValidateResult>(
      context,
      select: (state) => state.passwordValidateResult,
    );

    return Column(children: [
      _passwordValidateText(
        context,
        PasswordValidateResult.lengthMsg,
        validateResult.validLength,
      ),
      _passwordValidateText(
        context,
        PasswordValidateResult.characterMsg,
        validateResult.validCharacter,
      ),
      _passwordValidateText(
        context,
        PasswordValidateResult.safeMsg,
        validateResult.validSafe,
      ),
      _passwordValidateText(
        context,
        PasswordValidateResult.reconfirmMsg,
        validateResult.validReconfirm,
      ),
    ]);
  }
}
