import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository.g.dart';

@riverpod
Stream<User?> authStateChange(AuthStateChangeRef ref) {
  final auth = FirebaseAuth.instance;
  return auth.authStateChanges();
}

@riverpod
Stream<User?> userChanges(UserChangesRef ref) {
  final auth = FirebaseAuth.instance;
  return auth.userChanges();
}
