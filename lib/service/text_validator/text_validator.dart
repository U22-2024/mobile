import 'package:email_validator/email_validator.dart';
import 'package:flutter/foundation.dart';

class TextValidator {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return "メールアドレスを入力してください";
    }
    if (!EmailValidator.validate(value)) {
      return "メールアドレスの形式が正しくありません";
    }
    return null;
  }

  static PasswordValidateResult password(String? password, String? rePassword) {
    if (password == null || password.isEmpty) {
      return const PasswordValidateResult();
    }

    final validLength = password.length >= 8 && password.length <= 64;

    const pattern = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,64}$";
    final regExp = RegExp(pattern);
    final validCharacter = regExp.hasMatch(password);

    final validReconfirm = password == rePassword;

    return PasswordValidateResult(
        validLength: validLength,
        validCharacter: validCharacter,
        validSafe: true,
        validReconfirm: validReconfirm);
  }
}

@immutable
class PasswordValidateResult {
  const PasswordValidateResult({
    this.validLength = false,
    this.validCharacter = false,
    this.validSafe = false,
    this.validReconfirm = false,
  });

  final bool validLength;
  final bool validCharacter;
  final bool validSafe;
  final bool validReconfirm;

  static const lengthMsg = "8 ~ 64文字";
  static const characterMsg = "英子文字・英大文字・数字をそれぞれ一つ以上含む";
  static const safeMsg = "安全なパスワード";
  static const reconfirmMsg = "パスワードが一致";

  bool isValid() => validLength && validCharacter && validSafe && validReconfirm;

  @override
  bool operator ==(Object other) {
    return other is PasswordValidateResult &&
        validLength == other.validLength &&
        validCharacter == other.validCharacter &&
        validSafe == other.validSafe &&
        validReconfirm == other.validReconfirm;
  }

  @override
  int get hashCode {
    return validLength.hashCode ^
        validCharacter.hashCode ^
        validSafe.hashCode ^
        validReconfirm.hashCode;
  }
}
