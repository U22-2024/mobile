import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/service/text_validator/text_validator.dart';

class EmailInputField extends HookConsumerWidget {
  const EmailInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final validationError = useState<String?>(null);

    return TextFormField(
      decoration: InputDecoration(
        labelText: "メールアドレス",
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        fillColor: Theme.of(context).hoverColor,
        filled: true,
        errorStyle: const TextStyle(height: 0),
        suffixIcon: validationError.value == null
            ? null
            : Tooltip(
                message: validationError.value!,
                child: Icon(
                  Icons.error,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        validationError.value = TextValidator.email(value);
        if (validationError.value != null) {
          return "";
        }
        return null;
      },
    );
  }
}
