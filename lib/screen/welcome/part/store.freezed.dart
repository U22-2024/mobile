// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailPasswordFormState {
// form
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get rePasswordController =>
      throw _privateConstructorUsedError; // password form
  bool get visiblePassword => throw _privateConstructorUsedError;
  bool get visibleRePassword =>
      throw _privateConstructorUsedError; // validation
  EmailValidateResult get emailValidateResult =>
      throw _privateConstructorUsedError;
  PasswordValidateResult get passwordValidateResult =>
      throw _privateConstructorUsedError; // api
  AsyncValue<dynamic>? get pendingSubmit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailPasswordFormStateCopyWith<EmailPasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPasswordFormStateCopyWith<$Res> {
  factory $EmailPasswordFormStateCopyWith(EmailPasswordFormState value,
          $Res Function(EmailPasswordFormState) then) =
      _$EmailPasswordFormStateCopyWithImpl<$Res, EmailPasswordFormState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController rePasswordController,
      bool visiblePassword,
      bool visibleRePassword,
      EmailValidateResult emailValidateResult,
      PasswordValidateResult passwordValidateResult,
      AsyncValue<dynamic>? pendingSubmit});

  $EmailValidateResultCopyWith<$Res> get emailValidateResult;
  $PasswordValidateResultCopyWith<$Res> get passwordValidateResult;
}

/// @nodoc
class _$EmailPasswordFormStateCopyWithImpl<$Res,
        $Val extends EmailPasswordFormState>
    implements $EmailPasswordFormStateCopyWith<$Res> {
  _$EmailPasswordFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? rePasswordController = null,
    Object? visiblePassword = null,
    Object? visibleRePassword = null,
    Object? emailValidateResult = null,
    Object? passwordValidateResult = null,
    Object? pendingSubmit = freezed,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      rePasswordController: null == rePasswordController
          ? _value.rePasswordController
          : rePasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      visiblePassword: null == visiblePassword
          ? _value.visiblePassword
          : visiblePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      visibleRePassword: null == visibleRePassword
          ? _value.visibleRePassword
          : visibleRePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      emailValidateResult: null == emailValidateResult
          ? _value.emailValidateResult
          : emailValidateResult // ignore: cast_nullable_to_non_nullable
              as EmailValidateResult,
      passwordValidateResult: null == passwordValidateResult
          ? _value.passwordValidateResult
          : passwordValidateResult // ignore: cast_nullable_to_non_nullable
              as PasswordValidateResult,
      pendingSubmit: freezed == pendingSubmit
          ? _value.pendingSubmit
          : pendingSubmit // ignore: cast_nullable_to_non_nullable
              as AsyncValue<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailValidateResultCopyWith<$Res> get emailValidateResult {
    return $EmailValidateResultCopyWith<$Res>(_value.emailValidateResult,
        (value) {
      return _then(_value.copyWith(emailValidateResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordValidateResultCopyWith<$Res> get passwordValidateResult {
    return $PasswordValidateResultCopyWith<$Res>(_value.passwordValidateResult,
        (value) {
      return _then(_value.copyWith(passwordValidateResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmailPasswordFormStateImplCopyWith<$Res>
    implements $EmailPasswordFormStateCopyWith<$Res> {
  factory _$$EmailPasswordFormStateImplCopyWith(
          _$EmailPasswordFormStateImpl value,
          $Res Function(_$EmailPasswordFormStateImpl) then) =
      __$$EmailPasswordFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController rePasswordController,
      bool visiblePassword,
      bool visibleRePassword,
      EmailValidateResult emailValidateResult,
      PasswordValidateResult passwordValidateResult,
      AsyncValue<dynamic>? pendingSubmit});

  @override
  $EmailValidateResultCopyWith<$Res> get emailValidateResult;
  @override
  $PasswordValidateResultCopyWith<$Res> get passwordValidateResult;
}

/// @nodoc
class __$$EmailPasswordFormStateImplCopyWithImpl<$Res>
    extends _$EmailPasswordFormStateCopyWithImpl<$Res,
        _$EmailPasswordFormStateImpl>
    implements _$$EmailPasswordFormStateImplCopyWith<$Res> {
  __$$EmailPasswordFormStateImplCopyWithImpl(
      _$EmailPasswordFormStateImpl _value,
      $Res Function(_$EmailPasswordFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? rePasswordController = null,
    Object? visiblePassword = null,
    Object? visibleRePassword = null,
    Object? emailValidateResult = null,
    Object? passwordValidateResult = null,
    Object? pendingSubmit = freezed,
  }) {
    return _then(_$EmailPasswordFormStateImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      rePasswordController: null == rePasswordController
          ? _value.rePasswordController
          : rePasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      visiblePassword: null == visiblePassword
          ? _value.visiblePassword
          : visiblePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      visibleRePassword: null == visibleRePassword
          ? _value.visibleRePassword
          : visibleRePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      emailValidateResult: null == emailValidateResult
          ? _value.emailValidateResult
          : emailValidateResult // ignore: cast_nullable_to_non_nullable
              as EmailValidateResult,
      passwordValidateResult: null == passwordValidateResult
          ? _value.passwordValidateResult
          : passwordValidateResult // ignore: cast_nullable_to_non_nullable
              as PasswordValidateResult,
      pendingSubmit: freezed == pendingSubmit
          ? _value.pendingSubmit
          : pendingSubmit // ignore: cast_nullable_to_non_nullable
              as AsyncValue<dynamic>?,
    ));
  }
}

/// @nodoc

class _$EmailPasswordFormStateImpl implements _EmailPasswordFormState {
  const _$EmailPasswordFormStateImpl(
      {required this.formKey,
      required this.emailController,
      required this.passwordController,
      required this.rePasswordController,
      this.visiblePassword = false,
      this.visibleRePassword = false,
      required this.emailValidateResult,
      required this.passwordValidateResult,
      required this.pendingSubmit});

// form
  @override
  final GlobalKey<FormState> formKey;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController rePasswordController;
// password form
  @override
  @JsonKey()
  final bool visiblePassword;
  @override
  @JsonKey()
  final bool visibleRePassword;
// validation
  @override
  final EmailValidateResult emailValidateResult;
  @override
  final PasswordValidateResult passwordValidateResult;
// api
  @override
  final AsyncValue<dynamic>? pendingSubmit;

  @override
  String toString() {
    return 'EmailPasswordFormState(formKey: $formKey, emailController: $emailController, passwordController: $passwordController, rePasswordController: $rePasswordController, visiblePassword: $visiblePassword, visibleRePassword: $visibleRePassword, emailValidateResult: $emailValidateResult, passwordValidateResult: $passwordValidateResult, pendingSubmit: $pendingSubmit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailPasswordFormStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.rePasswordController, rePasswordController) ||
                other.rePasswordController == rePasswordController) &&
            (identical(other.visiblePassword, visiblePassword) ||
                other.visiblePassword == visiblePassword) &&
            (identical(other.visibleRePassword, visibleRePassword) ||
                other.visibleRePassword == visibleRePassword) &&
            (identical(other.emailValidateResult, emailValidateResult) ||
                other.emailValidateResult == emailValidateResult) &&
            (identical(other.passwordValidateResult, passwordValidateResult) ||
                other.passwordValidateResult == passwordValidateResult) &&
            (identical(other.pendingSubmit, pendingSubmit) ||
                other.pendingSubmit == pendingSubmit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formKey,
      emailController,
      passwordController,
      rePasswordController,
      visiblePassword,
      visibleRePassword,
      emailValidateResult,
      passwordValidateResult,
      pendingSubmit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailPasswordFormStateImplCopyWith<_$EmailPasswordFormStateImpl>
      get copyWith => __$$EmailPasswordFormStateImplCopyWithImpl<
          _$EmailPasswordFormStateImpl>(this, _$identity);
}

abstract class _EmailPasswordFormState implements EmailPasswordFormState {
  const factory _EmailPasswordFormState(
          {required final GlobalKey<FormState> formKey,
          required final TextEditingController emailController,
          required final TextEditingController passwordController,
          required final TextEditingController rePasswordController,
          final bool visiblePassword,
          final bool visibleRePassword,
          required final EmailValidateResult emailValidateResult,
          required final PasswordValidateResult passwordValidateResult,
          required final AsyncValue<dynamic>? pendingSubmit}) =
      _$EmailPasswordFormStateImpl;

  @override // form
  GlobalKey<FormState> get formKey;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get rePasswordController;
  @override // password form
  bool get visiblePassword;
  @override
  bool get visibleRePassword;
  @override // validation
  EmailValidateResult get emailValidateResult;
  @override
  PasswordValidateResult get passwordValidateResult;
  @override // api
  AsyncValue<dynamic>? get pendingSubmit;
  @override
  @JsonKey(ignore: true)
  _$$EmailPasswordFormStateImplCopyWith<_$EmailPasswordFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
