import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

/// アプリ内で使用するユーザー情報
@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();

  const factory AppUser({
    required String uid,
    required String email,
    required String displayName,
    required String? iconUrl,
  }) = _AppUser;

  factory AppUser.fromAuthUser({
    required User authUser,
  }) {
    final email = authUser.email;
    if (email == null) {
      throw Exception('User information is missing');
    }

    final displayName = authUser.displayName?.isEmpty ?? true
        ? email.split('@').first
        : authUser.displayName!;

    return AppUser(
      uid: authUser.uid,
      email: email,
      displayName: displayName,
      iconUrl: authUser.photoURL,
    );
  }
}
