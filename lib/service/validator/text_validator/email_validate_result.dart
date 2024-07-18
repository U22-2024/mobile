import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_validate_result.freezed.dart';

@freezed
class EmailValidateResult with _$EmailValidateResult {
  factory EmailValidateResult({
    required bool isDuplicate,
    required bool isValidFormat,
    required bool isEmpty,
  }) = _EmailValidateResult;

  factory EmailValidateResult.init() => EmailValidateResult(
        isDuplicate: false,
        isValidFormat: false,
        isEmpty: false,
      );

  static bool isValid(EmailValidateResult result) {
    return result.isValidFormat && !result.isDuplicate && !result.isEmpty;
  }

  static String? message(EmailValidateResult result) {
    if (result.isEmpty) {
      return "メールアドレスを入力してください";
    }
    if (result.isDuplicate) {
      return "このメールアドレスは既に登録されています";
    }
    if (!result.isValidFormat) {
      return "メールアドレスの形式が正しくありません";
    }
    return null;
  }
}
