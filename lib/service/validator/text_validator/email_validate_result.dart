import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_validate_result.freezed.dart';

@freezed
abstract class EmailValidateResult implements _$EmailValidateResult {
  const EmailValidateResult._();

  factory EmailValidateResult({
    required bool isDuplicate,
    required bool isValidFormat,
    required bool isEmpty,
    required bool emailNotFound,
  }) = _EmailValidateResult;

  factory EmailValidateResult.init() => EmailValidateResult(
        isDuplicate: false,
        isValidFormat: false,
        isEmpty: false,
        emailNotFound: false, // 初期状態ではメールアドレスは存在するものとして扱う
      );

  bool isValid() {
    return isValidFormat && !isDuplicate && !isEmpty && !emailNotFound;
  }

  String? message() {
    if (isEmpty) {
      return "メールアドレスを入力してください";
    }
    if (emailNotFound) {
      return "このメールアドレスは登録されていません";
    }
    if (isDuplicate) {
      return "このメールアドレスは既に登録されています";
    }
    if (!isValidFormat) {
      return "メールアドレスの形式が正しくありません";
    }
    return null;
  }
}
