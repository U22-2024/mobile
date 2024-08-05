import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository.g.dart';

@Riverpod(keepAlive: true)
Stream<User?> authStateChange(AuthStateChangeRef ref) {
  final auth = FirebaseAuth.instance;
  return auth.authStateChanges();
}
