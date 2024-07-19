import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) {
  return FirebaseAuth.instance;
}

@Riverpod(keepAlive: true)
Stream<User?> authStateChanges(AuthStateChangesRef ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return auth.authStateChanges();
}

@riverpod
Future<void> createUserWithEmailAndPassword(
  CreateUserWithEmailAndPasswordRef ref,
  String email,
  String password,
) async {
  final auth = ref.read(firebaseAuthProvider);

  await auth.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}

@riverpod
Future<void> signInWithEmailAndPassword(
  SignInWithEmailAndPasswordRef ref,
  String email,
  String password,
) async {
  final auth = ref.read(firebaseAuthProvider);

  await auth.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
}

@riverpod
Future<void> signInWithGoogle(SignInWithGoogleRef ref) async {
  final auth = ref.read(firebaseAuthProvider);
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
    case TargetPlatform.iOS:
      final googleSignIn = GoogleSignIn();
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return;
      }
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await auth.signInWithCredential(credential);
      break;
    default:
      throw UnsupportedError("Unsupported platform");
  }
}
