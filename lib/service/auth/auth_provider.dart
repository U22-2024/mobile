import 'package:firebase_auth/firebase_auth.dart';
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
  final googleUser = await GoogleSignIn().signIn();
  final googleAuth = await googleUser?.authentication;
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  await auth.signInWithCredential(credential);
}
