// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_validate_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailValidateResult {
  bool get isDuplicate => throw _privateConstructorUsedError;
  bool get isValidFormat => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;
  bool get emailNotFound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailValidateResultCopyWith<EmailValidateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailValidateResultCopyWith<$Res> {
  factory $EmailValidateResultCopyWith(
          EmailValidateResult value, $Res Function(EmailValidateResult) then) =
      _$EmailValidateResultCopyWithImpl<$Res, EmailValidateResult>;
  @useResult
  $Res call(
      {bool isDuplicate, bool isValidFormat, bool isEmpty, bool emailNotFound});
}

/// @nodoc
class _$EmailValidateResultCopyWithImpl<$Res, $Val extends EmailValidateResult>
    implements $EmailValidateResultCopyWith<$Res> {
  _$EmailValidateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDuplicate = null,
    Object? isValidFormat = null,
    Object? isEmpty = null,
    Object? emailNotFound = null,
  }) {
    return _then(_value.copyWith(
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidFormat: null == isValidFormat
          ? _value.isValidFormat
          : isValidFormat // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotFound: null == emailNotFound
          ? _value.emailNotFound
          : emailNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailValidateResultImplCopyWith<$Res>
    implements $EmailValidateResultCopyWith<$Res> {
  factory _$$EmailValidateResultImplCopyWith(_$EmailValidateResultImpl value,
          $Res Function(_$EmailValidateResultImpl) then) =
      __$$EmailValidateResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDuplicate, bool isValidFormat, bool isEmpty, bool emailNotFound});
}

/// @nodoc
class __$$EmailValidateResultImplCopyWithImpl<$Res>
    extends _$EmailValidateResultCopyWithImpl<$Res, _$EmailValidateResultImpl>
    implements _$$EmailValidateResultImplCopyWith<$Res> {
  __$$EmailValidateResultImplCopyWithImpl(_$EmailValidateResultImpl _value,
      $Res Function(_$EmailValidateResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDuplicate = null,
    Object? isValidFormat = null,
    Object? isEmpty = null,
    Object? emailNotFound = null,
  }) {
    return _then(_$EmailValidateResultImpl(
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidFormat: null == isValidFormat
          ? _value.isValidFormat
          : isValidFormat // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotFound: null == emailNotFound
          ? _value.emailNotFound
          : emailNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmailValidateResultImpl extends _EmailValidateResult {
  _$EmailValidateResultImpl(
      {required this.isDuplicate,
      required this.isValidFormat,
      required this.isEmpty,
      required this.emailNotFound})
      : super._();

  @override
  final bool isDuplicate;
  @override
  final bool isValidFormat;
  @override
  final bool isEmpty;
  @override
  final bool emailNotFound;

  @override
  String toString() {
    return 'EmailValidateResult(isDuplicate: $isDuplicate, isValidFormat: $isValidFormat, isEmpty: $isEmpty, emailNotFound: $emailNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailValidateResultImpl &&
            (identical(other.isDuplicate, isDuplicate) ||
                other.isDuplicate == isDuplicate) &&
            (identical(other.isValidFormat, isValidFormat) ||
                other.isValidFormat == isValidFormat) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty) &&
            (identical(other.emailNotFound, emailNotFound) ||
                other.emailNotFound == emailNotFound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isDuplicate, isValidFormat, isEmpty, emailNotFound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailValidateResultImplCopyWith<_$EmailValidateResultImpl> get copyWith =>
      __$$EmailValidateResultImplCopyWithImpl<_$EmailValidateResultImpl>(
          this, _$identity);
}

abstract class _EmailValidateResult extends EmailValidateResult {
  factory _EmailValidateResult(
      {required final bool isDuplicate,
      required final bool isValidFormat,
      required final bool isEmpty,
      required final bool emailNotFound}) = _$EmailValidateResultImpl;
  _EmailValidateResult._() : super._();

  @override
  bool get isDuplicate;
  @override
  bool get isValidFormat;
  @override
  bool get isEmpty;
  @override
  bool get emailNotFound;
  @override
  @JsonKey(ignore: true)
  _$$EmailValidateResultImplCopyWith<_$EmailValidateResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
