import 'package:firebase_auth/firebase_auth.dart';

enum FirebaseAuthResultStatus {
  successful,
  emailAlreadyExists,
  wrongPassword,
  invalidEmail,
  userNotFound,
  userDisabled,
  operationNotAllowed,
  tooManyRequests,
  weakPassword,
  undefined,
}

extension FirebaseAuthExceptionExtension on FirebaseAuthException {
  FirebaseAuthResultStatus resultStatus() {
    switch (code) {
      case 'email-already-in-use':
        return FirebaseAuthResultStatus.emailAlreadyExists;
      case 'wrong-password':
        return FirebaseAuthResultStatus.wrongPassword;
      case 'invalid-email':
        return FirebaseAuthResultStatus.invalidEmail;
      case 'user-not-found':
        return FirebaseAuthResultStatus.userNotFound;
      case 'user-disabled':
        return FirebaseAuthResultStatus.userDisabled;
      case 'operation-not-allowed':
        return FirebaseAuthResultStatus.operationNotAllowed;
      case 'too-many-requests':
        return FirebaseAuthResultStatus.tooManyRequests;
      case 'weak-password':
        return FirebaseAuthResultStatus.weakPassword;
      default:
        return FirebaseAuthResultStatus.undefined;
    }
  }
}
