import 'package:flutter/material.dart';
import 'package:mobile/common/reducer.dart';
import 'package:mobile/screen/welcome/part/store.dart';
import 'package:mobile/service/validator/text_validator/email_validate_result.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final validateResult =
        StateModel.selectOf<EmailPasswordFormState, EmailValidateResult>(
            context,
            select: (state) => state.emailValidateResult);
    final controller =
        StateModel.selectOf<EmailPasswordFormState, TextEditingController>(
            context,
            select: (state) => state.emailController);

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "メールアドレス",
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        fillColor: Theme.of(context).hoverColor,
        filled: true,
        errorStyle: const TextStyle(height: 0),
        suffixIcon: EmailValidateResult.isValid(validateResult)
            ? null
            : Tooltip(
                message: EmailValidateResult.message(validateResult),
                child: Icon(
                  Icons.error,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
      ),
      onChanged: (value) {
        Dispatcher.of<EmailPasswordFormAction>(context)
            ?.dispatch(EmailChangedAction());
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (EmailValidateResult.isValid(validateResult)) {
          return null;
        }

        return "";
      },
    );
  }
}
