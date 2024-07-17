// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebaseAuthHash() => r'46c40b7c5cf8ab936c0daa96a6af106bd2ae5d51';

/// See also [firebaseAuth].
@ProviderFor(firebaseAuth)
final firebaseAuthProvider = Provider<FirebaseAuth>.internal(
  firebaseAuth,
  name: r'firebaseAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$firebaseAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseAuthRef = ProviderRef<FirebaseAuth>;
String _$authStateChangesHash() => r'9dbb9d7d7d5588dec9ae0bd1dcfb7241ad1c22ec';

/// See also [authStateChanges].
@ProviderFor(authStateChanges)
final authStateChangesProvider = StreamProvider<User?>.internal(
  authStateChanges,
  name: r'authStateChangesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authStateChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthStateChangesRef = StreamProviderRef<User?>;
String _$signInWithEmailAndPasswordHash() =>
    r'3d270d456618d07ccda3bc8c169aa3adf3659edd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [signInWithEmailAndPassword].
@ProviderFor(signInWithEmailAndPassword)
const signInWithEmailAndPasswordProvider = SignInWithEmailAndPasswordFamily();

/// See also [signInWithEmailAndPassword].
class SignInWithEmailAndPasswordFamily extends Family<AsyncValue<void>> {
  /// See also [signInWithEmailAndPassword].
  const SignInWithEmailAndPasswordFamily();

  /// See also [signInWithEmailAndPassword].
  SignInWithEmailAndPasswordProvider call(
    String email,
    String password,
  ) {
    return SignInWithEmailAndPasswordProvider(
      email,
      password,
    );
  }

  @override
  SignInWithEmailAndPasswordProvider getProviderOverride(
    covariant SignInWithEmailAndPasswordProvider provider,
  ) {
    return call(
      provider.email,
      provider.password,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'signInWithEmailAndPasswordProvider';
}

/// See also [signInWithEmailAndPassword].
class SignInWithEmailAndPasswordProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [signInWithEmailAndPassword].
  SignInWithEmailAndPasswordProvider(
    String email,
    String password,
  ) : this._internal(
          (ref) => signInWithEmailAndPassword(
            ref as SignInWithEmailAndPasswordRef,
            email,
            password,
          ),
          from: signInWithEmailAndPasswordProvider,
          name: r'signInWithEmailAndPasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signInWithEmailAndPasswordHash,
          dependencies: SignInWithEmailAndPasswordFamily._dependencies,
          allTransitiveDependencies:
              SignInWithEmailAndPasswordFamily._allTransitiveDependencies,
          email: email,
          password: password,
        );

  SignInWithEmailAndPasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
    required this.password,
  }) : super.internal();

  final String email;
  final String password;

  @override
  Override overrideWith(
    FutureOr<void> Function(SignInWithEmailAndPasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SignInWithEmailAndPasswordProvider._internal(
        (ref) => create(ref as SignInWithEmailAndPasswordRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SignInWithEmailAndPasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignInWithEmailAndPasswordProvider &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SignInWithEmailAndPasswordRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `password` of this provider.
  String get password;
}

class _SignInWithEmailAndPasswordProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with SignInWithEmailAndPasswordRef {
  _SignInWithEmailAndPasswordProviderElement(super.provider);

  @override
  String get email => (origin as SignInWithEmailAndPasswordProvider).email;
  @override
  String get password =>
      (origin as SignInWithEmailAndPasswordProvider).password;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
