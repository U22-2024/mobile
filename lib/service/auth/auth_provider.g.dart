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
String _$createUserWithEmailAndPasswordHash() =>
    r'243b563e66fe5be0135185bf9d227f65f55e71f6';

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

/// See also [createUserWithEmailAndPassword].
@ProviderFor(createUserWithEmailAndPassword)
const createUserWithEmailAndPasswordProvider =
    CreateUserWithEmailAndPasswordFamily();

/// See also [createUserWithEmailAndPassword].
class CreateUserWithEmailAndPasswordFamily extends Family<AsyncValue<void>> {
  /// See also [createUserWithEmailAndPassword].
  const CreateUserWithEmailAndPasswordFamily();

  /// See also [createUserWithEmailAndPassword].
  CreateUserWithEmailAndPasswordProvider call(
    String email,
    String password,
  ) {
    return CreateUserWithEmailAndPasswordProvider(
      email,
      password,
    );
  }

  @override
  CreateUserWithEmailAndPasswordProvider getProviderOverride(
    covariant CreateUserWithEmailAndPasswordProvider provider,
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
  String? get name => r'createUserWithEmailAndPasswordProvider';
}

/// See also [createUserWithEmailAndPassword].
class CreateUserWithEmailAndPasswordProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [createUserWithEmailAndPassword].
  CreateUserWithEmailAndPasswordProvider(
    String email,
    String password,
  ) : this._internal(
          (ref) => createUserWithEmailAndPassword(
            ref as CreateUserWithEmailAndPasswordRef,
            email,
            password,
          ),
          from: createUserWithEmailAndPasswordProvider,
          name: r'createUserWithEmailAndPasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createUserWithEmailAndPasswordHash,
          dependencies: CreateUserWithEmailAndPasswordFamily._dependencies,
          allTransitiveDependencies:
              CreateUserWithEmailAndPasswordFamily._allTransitiveDependencies,
          email: email,
          password: password,
        );

  CreateUserWithEmailAndPasswordProvider._internal(
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
    FutureOr<void> Function(CreateUserWithEmailAndPasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateUserWithEmailAndPasswordProvider._internal(
        (ref) => create(ref as CreateUserWithEmailAndPasswordRef),
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
    return _CreateUserWithEmailAndPasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateUserWithEmailAndPasswordProvider &&
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

mixin CreateUserWithEmailAndPasswordRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `password` of this provider.
  String get password;
}

class _CreateUserWithEmailAndPasswordProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with CreateUserWithEmailAndPasswordRef {
  _CreateUserWithEmailAndPasswordProviderElement(super.provider);

  @override
  String get email => (origin as CreateUserWithEmailAndPasswordProvider).email;
  @override
  String get password =>
      (origin as CreateUserWithEmailAndPasswordProvider).password;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
