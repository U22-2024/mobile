import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_validate_result.freezed.dart';

@freezed
abstract class PasswordValidateResult implements _$PasswordValidateResult {
  const PasswordValidateResult._();

  factory PasswordValidateResult({
    required bool validLength,
    required bool validCharacter,
    required bool validSafe,
    required bool validReconfirm,
    required bool correctPassword,
  }) = _PasswordValidateResult;

  factory PasswordValidateResult.init() => PasswordValidateResult(
        validLength: false,
        validCharacter: false,
        validSafe: false,
        validReconfirm: false,
        correctPassword: true, // 初期状態では正しいパスワードとして扱う
      );

  bool isValid() {
    return validLength &&
        validCharacter &&
        validSafe &&
        validReconfirm &&
        correctPassword;
  }

  String? message() {
    if (!validLength) {
      return "パスワードは8 ~ 64文字で入力してください";
    }
    if (!validCharacter) {
      return "パスワードは英子文字・英大文字・数字をそれぞれ一つ以上含む必要があります";
    }
    if (!validSafe) {
      return "パスワードは安全なものを入力してください";
    }
    if (!validReconfirm) {
      return "パスワードが一致しません";
    }
    if (!correctPassword) {
      return "パスワードが間違っています";
    }
    return null;
  }

  static const lengthMsg = "8 ~ 64文字";
  static const characterMsg = "英子文字・英大文字・数字をそれぞれ一つ以上含む";
  static const safeMsg = "安全なパスワード";
  static const reconfirmMsg = "パスワードが一致";
}
