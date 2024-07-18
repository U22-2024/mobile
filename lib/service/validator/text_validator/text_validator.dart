import 'package:email_validator/email_validator.dart';
import 'package:mobile/service/validator/text_validator/email_validate_result.dart';
import 'package:mobile/service/validator/text_validator/password_validate_result.dart';

class TextValidator {
  static EmailValidateResult email(String? value, bool isDuplicate) {
    if (value == null || value.isEmpty) {
      return EmailValidateResult(
        isDuplicate: isDuplicate,
        isValidFormat: false,
        isEmpty: true,
      );
    }

    final isValidFormat = EmailValidator.validate(value);
    return EmailValidateResult(
      isDuplicate: isDuplicate,
      isValidFormat: isValidFormat,
      isEmpty: false,
    );
  }

  static PasswordValidateResult password(String? password, String? rePassword) {
    if (password == null || password.isEmpty) {
      return PasswordValidateResult.init();
    }

    final validLength = password.length >= 8 && password.length <= 64;

    const pattern = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d.?/!-]{8,64}$";
    final regExp = RegExp(pattern);
    final validCharacter = regExp.hasMatch(password);

    final invalidPasswords = ["password", "Password"];
    final validSafe =
        validLength && validCharacter && !invalidPasswords.contains(password);

    final validReconfirm = password == rePassword;

    return PasswordValidateResult(
        validLength: validLength,
        validCharacter: validCharacter,
        validSafe: validSafe,
        validReconfirm: validReconfirm);
  }
}
