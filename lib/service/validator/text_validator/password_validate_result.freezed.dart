// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_validate_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordValidateResult {
  bool get validLength => throw _privateConstructorUsedError;
  bool get validCharacter => throw _privateConstructorUsedError;
  bool get validSafe => throw _privateConstructorUsedError;
  bool get validReconfirm => throw _privateConstructorUsedError;
  bool get correctPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordValidateResultCopyWith<PasswordValidateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordValidateResultCopyWith<$Res> {
  factory $PasswordValidateResultCopyWith(PasswordValidateResult value,
          $Res Function(PasswordValidateResult) then) =
      _$PasswordValidateResultCopyWithImpl<$Res, PasswordValidateResult>;
  @useResult
  $Res call(
      {bool validLength,
      bool validCharacter,
      bool validSafe,
      bool validReconfirm,
      bool correctPassword});
}

/// @nodoc
class _$PasswordValidateResultCopyWithImpl<$Res,
        $Val extends PasswordValidateResult>
    implements $PasswordValidateResultCopyWith<$Res> {
  _$PasswordValidateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validLength = null,
    Object? validCharacter = null,
    Object? validSafe = null,
    Object? validReconfirm = null,
    Object? correctPassword = null,
  }) {
    return _then(_value.copyWith(
      validLength: null == validLength
          ? _value.validLength
          : validLength // ignore: cast_nullable_to_non_nullable
              as bool,
      validCharacter: null == validCharacter
          ? _value.validCharacter
          : validCharacter // ignore: cast_nullable_to_non_nullable
              as bool,
      validSafe: null == validSafe
          ? _value.validSafe
          : validSafe // ignore: cast_nullable_to_non_nullable
              as bool,
      validReconfirm: null == validReconfirm
          ? _value.validReconfirm
          : validReconfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      correctPassword: null == correctPassword
          ? _value.correctPassword
          : correctPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordValidateResultImplCopyWith<$Res>
    implements $PasswordValidateResultCopyWith<$Res> {
  factory _$$PasswordValidateResultImplCopyWith(
          _$PasswordValidateResultImpl value,
          $Res Function(_$PasswordValidateResultImpl) then) =
      __$$PasswordValidateResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool validLength,
      bool validCharacter,
      bool validSafe,
      bool validReconfirm,
      bool correctPassword});
}

/// @nodoc
class __$$PasswordValidateResultImplCopyWithImpl<$Res>
    extends _$PasswordValidateResultCopyWithImpl<$Res,
        _$PasswordValidateResultImpl>
    implements _$$PasswordValidateResultImplCopyWith<$Res> {
  __$$PasswordValidateResultImplCopyWithImpl(
      _$PasswordValidateResultImpl _value,
      $Res Function(_$PasswordValidateResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validLength = null,
    Object? validCharacter = null,
    Object? validSafe = null,
    Object? validReconfirm = null,
    Object? correctPassword = null,
  }) {
    return _then(_$PasswordValidateResultImpl(
      validLength: null == validLength
          ? _value.validLength
          : validLength // ignore: cast_nullable_to_non_nullable
              as bool,
      validCharacter: null == validCharacter
          ? _value.validCharacter
          : validCharacter // ignore: cast_nullable_to_non_nullable
              as bool,
      validSafe: null == validSafe
          ? _value.validSafe
          : validSafe // ignore: cast_nullable_to_non_nullable
              as bool,
      validReconfirm: null == validReconfirm
          ? _value.validReconfirm
          : validReconfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      correctPassword: null == correctPassword
          ? _value.correctPassword
          : correctPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordValidateResultImpl extends _PasswordValidateResult {
  _$PasswordValidateResultImpl(
      {required this.validLength,
      required this.validCharacter,
      required this.validSafe,
      required this.validReconfirm,
      required this.correctPassword})
      : super._();

  @override
  final bool validLength;
  @override
  final bool validCharacter;
  @override
  final bool validSafe;
  @override
  final bool validReconfirm;
  @override
  final bool correctPassword;

  @override
  String toString() {
    return 'PasswordValidateResult(validLength: $validLength, validCharacter: $validCharacter, validSafe: $validSafe, validReconfirm: $validReconfirm, correctPassword: $correctPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordValidateResultImpl &&
            (identical(other.validLength, validLength) ||
                other.validLength == validLength) &&
            (identical(other.validCharacter, validCharacter) ||
                other.validCharacter == validCharacter) &&
            (identical(other.validSafe, validSafe) ||
                other.validSafe == validSafe) &&
            (identical(other.validReconfirm, validReconfirm) ||
                other.validReconfirm == validReconfirm) &&
            (identical(other.correctPassword, correctPassword) ||
                other.correctPassword == correctPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validLength, validCharacter,
      validSafe, validReconfirm, correctPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordValidateResultImplCopyWith<_$PasswordValidateResultImpl>
      get copyWith => __$$PasswordValidateResultImplCopyWithImpl<
          _$PasswordValidateResultImpl>(this, _$identity);
}

abstract class _PasswordValidateResult extends PasswordValidateResult {
  factory _PasswordValidateResult(
      {required final bool validLength,
      required final bool validCharacter,
      required final bool validSafe,
      required final bool validReconfirm,
      required final bool correctPassword}) = _$PasswordValidateResultImpl;
  _PasswordValidateResult._() : super._();

  @override
  bool get validLength;
  @override
  bool get validCharacter;
  @override
  bool get validSafe;
  @override
  bool get validReconfirm;
  @override
  bool get correctPassword;
  @override
  @JsonKey(ignore: true)
  _$$PasswordValidateResultImplCopyWith<_$PasswordValidateResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
