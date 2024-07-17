import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../service/text_validator/text_validator.dart';

class PasswordInputField extends HookConsumerWidget {
  const PasswordInputField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  InputDecoration _getDecoration(
    BuildContext context,
    String labelText,
    ValueNotifier<bool> visiblePassword,
  ) {
    return InputDecoration(
      labelText: labelText,
      border: const OutlineInputBorder(borderSide: BorderSide.none),
      fillColor: Theme.of(context).hoverColor,
      filled: true,
      errorStyle: const TextStyle(height: 0),
      suffixIcon: IconButton(
        icon: Icon(
          visiblePassword.value ? Icons.visibility_off : Icons.visibility,
        ),
        onPressed: () {
          visiblePassword.value = !visiblePassword.value;
        },
      ),
    );
  }

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
  Widget build(BuildContext context, WidgetRef ref) {
    final validationError =
        useState<PasswordValidateResult>(const PasswordValidateResult());
    final hidePassword = useState<bool>(true);
    final rePasswordController = useTextEditingController();

    return Column(
      children: [
        TextFormField(
          controller: controller,
          decoration: _getDecoration(context, "パスワード", hidePassword),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.visiblePassword,
          obscureText: hidePassword.value,
          validator: (value) {
            validationError.value = TextValidator.password(
              value,
              rePasswordController.text,
            );
            if (!validationError.value.isValid()) {
              return "";
            }
            return null;
          },
        ),
        TextFormField(
          controller: rePasswordController,
          decoration: _getDecoration(context, "パスワードの確認", hidePassword),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.visiblePassword,
          obscureText: hidePassword.value,
          validator: (value) {
            if (!validationError.value.isValid()) {
              return "";
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        _passwordValidateText(
          context,
          PasswordValidateResult.lengthMsg,
          validationError.value.validLength,
        ),
        _passwordValidateText(
          context,
          PasswordValidateResult.characterMsg,
          validationError.value.validCharacter,
        ),
        _passwordValidateText(
          context,
          PasswordValidateResult.safeMsg,
          validationError.value.validSafe,
        ),
        _passwordValidateText(
          context,
          PasswordValidateResult.reconfirmMsg,
          validationError.value.validReconfirm,
        ),
      ],
    );
  }
}
