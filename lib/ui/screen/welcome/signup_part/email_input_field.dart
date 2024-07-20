import 'package:flutter/material.dart';
import 'package:mobile/common/reducer.dart';
import 'package:mobile/ui/components/custom_input_field/custom_input_field.dart';
import 'package:mobile/service/validator/text_validator/email_validate_result.dart';

import 'store.dart';

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

    return CustomInputField(
      controller: controller,
      validateMessage: validateResult.message(),
      label: "メールアドレス",
      onChanged: (value) {
        Dispatcher.of<EmailPasswordFormAction>(context)
            ?.dispatch(EmailChangedAction());
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
}
