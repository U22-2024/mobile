import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_validate_result.freezed.dart';

@freezed
class PasswordValidateResult with _$PasswordValidateResult {
  factory PasswordValidateResult({
    required bool validLength,
    required bool validCharacter,
    required bool validSafe,
    required bool validReconfirm,
  }) = _PasswordValidateResult;

  factory PasswordValidateResult.init() => PasswordValidateResult(
    validLength: false,
    validCharacter: false,
    validSafe: false,
    validReconfirm: false,
  );

  static bool isValid(PasswordValidateResult result) {
    return result.validLength &&
        result.validCharacter &&
        result.validSafe &&
        result.validReconfirm;
  }

  static const lengthMsg = "8 ~ 64文字";
  static const characterMsg = "英子文字・英大文字・数字をそれぞれ一つ以上含む";
  static const safeMsg = "安全なパスワード";
  static const reconfirmMsg = "パスワードが一致";
}
