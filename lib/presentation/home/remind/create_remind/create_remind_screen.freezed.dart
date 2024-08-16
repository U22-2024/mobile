// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_remind_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$State {
  String get title => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;

  /// Create a copy of _State
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res, _State>;
  @useResult
  $Res call({String title, String memo, String groupId});
}

/// @nodoc
class __$StateCopyWithImpl<$Res, $Val extends _State>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _State
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memo = null,
    Object? groupId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateImplCopyWith<$Res> implements _$StateCopyWith<$Res> {
  factory _$$_StateImplCopyWith(
          _$_StateImpl value, $Res Function(_$_StateImpl) then) =
      __$$_StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String memo, String groupId});
}

/// @nodoc
class __$$_StateImplCopyWithImpl<$Res>
    extends __$StateCopyWithImpl<$Res, _$_StateImpl>
    implements _$$_StateImplCopyWith<$Res> {
  __$$_StateImplCopyWithImpl(
      _$_StateImpl _value, $Res Function(_$_StateImpl) _then)
      : super(_value, _then);

  /// Create a copy of _State
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memo = null,
    Object? groupId = null,
  }) {
    return _then(_$_StateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StateImpl implements __State {
  _$_StateImpl(
      {required this.title, required this.memo, required this.groupId});

  @override
  final String title;
  @override
  final String memo;
  @override
  final String groupId;

  @override
  String toString() {
    return '_State(title: $title, memo: $memo, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, memo, groupId);

  /// Create a copy of _State
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateImplCopyWith<_$_StateImpl> get copyWith =>
      __$$_StateImplCopyWithImpl<_$_StateImpl>(this, _$identity);
}

abstract class __State implements _State {
  factory __State(
      {required final String title,
      required final String memo,
      required final String groupId}) = _$_StateImpl;

  @override
  String get title;
  @override
  String get memo;
  @override
  String get groupId;

  /// Create a copy of _State
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_StateImplCopyWith<_$_StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
