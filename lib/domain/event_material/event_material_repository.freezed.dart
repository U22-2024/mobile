// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_material_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PredictSourceState {
  String? get destination => throw _privateConstructorUsedError;
  $core.MoveType? get moveType => throw _privateConstructorUsedError;
  $core.DateTime? get startAt => throw _privateConstructorUsedError;
  $core.DateTime? get endAt => throw _privateConstructorUsedError;

  /// Create a copy of PredictSourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PredictSourceStateCopyWith<PredictSourceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictSourceStateCopyWith<$Res> {
  factory $PredictSourceStateCopyWith(
          PredictSourceState value, $Res Function(PredictSourceState) then) =
      _$PredictSourceStateCopyWithImpl<$Res, PredictSourceState>;
  @useResult
  $Res call(
      {String? destination,
      $core.MoveType? moveType,
      $core.DateTime? startAt,
      $core.DateTime? endAt});
}

/// @nodoc
class _$PredictSourceStateCopyWithImpl<$Res, $Val extends PredictSourceState>
    implements $PredictSourceStateCopyWith<$Res> {
  _$PredictSourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PredictSourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = freezed,
    Object? moveType = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(_value.copyWith(
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      moveType: freezed == moveType
          ? _value.moveType
          : moveType // ignore: cast_nullable_to_non_nullable
              as $core.MoveType?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as $core.DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as $core.DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredictSourceStateImplCopyWith<$Res>
    implements $PredictSourceStateCopyWith<$Res> {
  factory _$$PredictSourceStateImplCopyWith(_$PredictSourceStateImpl value,
          $Res Function(_$PredictSourceStateImpl) then) =
      __$$PredictSourceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? destination,
      $core.MoveType? moveType,
      $core.DateTime? startAt,
      $core.DateTime? endAt});
}

/// @nodoc
class __$$PredictSourceStateImplCopyWithImpl<$Res>
    extends _$PredictSourceStateCopyWithImpl<$Res, _$PredictSourceStateImpl>
    implements _$$PredictSourceStateImplCopyWith<$Res> {
  __$$PredictSourceStateImplCopyWithImpl(_$PredictSourceStateImpl _value,
      $Res Function(_$PredictSourceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PredictSourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = freezed,
    Object? moveType = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(_$PredictSourceStateImpl(
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      moveType: freezed == moveType
          ? _value.moveType
          : moveType // ignore: cast_nullable_to_non_nullable
              as $core.MoveType?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as $core.DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as $core.DateTime?,
    ));
  }
}

/// @nodoc

class _$PredictSourceStateImpl extends _PredictSourceState {
  const _$PredictSourceStateImpl(
      {this.destination, this.moveType, this.startAt, this.endAt})
      : super._();

  @override
  final String? destination;
  @override
  final $core.MoveType? moveType;
  @override
  final $core.DateTime? startAt;
  @override
  final $core.DateTime? endAt;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictSourceStateImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.moveType, moveType) ||
                other.moveType == moveType) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, destination, moveType, startAt, endAt);

  /// Create a copy of PredictSourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictSourceStateImplCopyWith<_$PredictSourceStateImpl> get copyWith =>
      __$$PredictSourceStateImplCopyWithImpl<_$PredictSourceStateImpl>(
          this, _$identity);
}

abstract class _PredictSourceState extends PredictSourceState {
  const factory _PredictSourceState(
      {final String? destination,
      final $core.MoveType? moveType,
      final $core.DateTime? startAt,
      final $core.DateTime? endAt}) = _$PredictSourceStateImpl;
  const _PredictSourceState._() : super._();

  @override
  String? get destination;
  @override
  $core.MoveType? get moveType;
  @override
  $core.DateTime? get startAt;
  @override
  $core.DateTime? get endAt;

  /// Create a copy of PredictSourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PredictSourceStateImplCopyWith<_$PredictSourceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientEventMaterialState {
  $core.Pos? get fromPos => throw _privateConstructorUsedError;
  $core.Pos? get destPos => throw _privateConstructorUsedError;

  /// Create a copy of ClientEventMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientEventMaterialStateCopyWith<ClientEventMaterialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventMaterialStateCopyWith<$Res> {
  factory $ClientEventMaterialStateCopyWith(ClientEventMaterialState value,
          $Res Function(ClientEventMaterialState) then) =
      _$ClientEventMaterialStateCopyWithImpl<$Res, ClientEventMaterialState>;
  @useResult
  $Res call({$core.Pos? fromPos, $core.Pos? destPos});
}

/// @nodoc
class _$ClientEventMaterialStateCopyWithImpl<$Res,
        $Val extends ClientEventMaterialState>
    implements $ClientEventMaterialStateCopyWith<$Res> {
  _$ClientEventMaterialStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientEventMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromPos = freezed,
    Object? destPos = freezed,
  }) {
    return _then(_value.copyWith(
      fromPos: freezed == fromPos
          ? _value.fromPos
          : fromPos // ignore: cast_nullable_to_non_nullable
              as $core.Pos?,
      destPos: freezed == destPos
          ? _value.destPos
          : destPos // ignore: cast_nullable_to_non_nullable
              as $core.Pos?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientEventMaterialStateImplCopyWith<$Res>
    implements $ClientEventMaterialStateCopyWith<$Res> {
  factory _$$ClientEventMaterialStateImplCopyWith(
          _$ClientEventMaterialStateImpl value,
          $Res Function(_$ClientEventMaterialStateImpl) then) =
      __$$ClientEventMaterialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({$core.Pos? fromPos, $core.Pos? destPos});
}

/// @nodoc
class __$$ClientEventMaterialStateImplCopyWithImpl<$Res>
    extends _$ClientEventMaterialStateCopyWithImpl<$Res,
        _$ClientEventMaterialStateImpl>
    implements _$$ClientEventMaterialStateImplCopyWith<$Res> {
  __$$ClientEventMaterialStateImplCopyWithImpl(
      _$ClientEventMaterialStateImpl _value,
      $Res Function(_$ClientEventMaterialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientEventMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromPos = freezed,
    Object? destPos = freezed,
  }) {
    return _then(_$ClientEventMaterialStateImpl(
      fromPos: freezed == fromPos
          ? _value.fromPos
          : fromPos // ignore: cast_nullable_to_non_nullable
              as $core.Pos?,
      destPos: freezed == destPos
          ? _value.destPos
          : destPos // ignore: cast_nullable_to_non_nullable
              as $core.Pos?,
    ));
  }
}

/// @nodoc

class _$ClientEventMaterialStateImpl extends _ClientEventMaterialState {
  const _$ClientEventMaterialStateImpl({this.fromPos, this.destPos})
      : super._();

  @override
  final $core.Pos? fromPos;
  @override
  final $core.Pos? destPos;

  @override
  String toString() {
    return 'ClientEventMaterialState(fromPos: $fromPos, destPos: $destPos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEventMaterialStateImpl &&
            (identical(other.fromPos, fromPos) || other.fromPos == fromPos) &&
            (identical(other.destPos, destPos) || other.destPos == destPos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromPos, destPos);

  /// Create a copy of ClientEventMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEventMaterialStateImplCopyWith<_$ClientEventMaterialStateImpl>
      get copyWith => __$$ClientEventMaterialStateImplCopyWithImpl<
          _$ClientEventMaterialStateImpl>(this, _$identity);
}

abstract class _ClientEventMaterialState extends ClientEventMaterialState {
  const factory _ClientEventMaterialState(
      {final $core.Pos? fromPos,
      final $core.Pos? destPos}) = _$ClientEventMaterialStateImpl;
  const _ClientEventMaterialState._() : super._();

  @override
  $core.Pos? get fromPos;
  @override
  $core.Pos? get destPos;

  /// Create a copy of ClientEventMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientEventMaterialStateImplCopyWith<_$ClientEventMaterialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AiOnlyPredictState {
  bool? get isOut => throw _privateConstructorUsedError;
  String? get remind => throw _privateConstructorUsedError;

  /// Create a copy of AiOnlyPredictState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AiOnlyPredictStateCopyWith<AiOnlyPredictState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiOnlyPredictStateCopyWith<$Res> {
  factory $AiOnlyPredictStateCopyWith(
          AiOnlyPredictState value, $Res Function(AiOnlyPredictState) then) =
      _$AiOnlyPredictStateCopyWithImpl<$Res, AiOnlyPredictState>;
  @useResult
  $Res call({bool? isOut, String? remind});
}

/// @nodoc
class _$AiOnlyPredictStateCopyWithImpl<$Res, $Val extends AiOnlyPredictState>
    implements $AiOnlyPredictStateCopyWith<$Res> {
  _$AiOnlyPredictStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AiOnlyPredictState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOut = freezed,
    Object? remind = freezed,
  }) {
    return _then(_value.copyWith(
      isOut: freezed == isOut
          ? _value.isOut
          : isOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      remind: freezed == remind
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiOnlyPredictStateImplCopyWith<$Res>
    implements $AiOnlyPredictStateCopyWith<$Res> {
  factory _$$AiOnlyPredictStateImplCopyWith(_$AiOnlyPredictStateImpl value,
          $Res Function(_$AiOnlyPredictStateImpl) then) =
      __$$AiOnlyPredictStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isOut, String? remind});
}

/// @nodoc
class __$$AiOnlyPredictStateImplCopyWithImpl<$Res>
    extends _$AiOnlyPredictStateCopyWithImpl<$Res, _$AiOnlyPredictStateImpl>
    implements _$$AiOnlyPredictStateImplCopyWith<$Res> {
  __$$AiOnlyPredictStateImplCopyWithImpl(_$AiOnlyPredictStateImpl _value,
      $Res Function(_$AiOnlyPredictStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AiOnlyPredictState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOut = freezed,
    Object? remind = freezed,
  }) {
    return _then(_$AiOnlyPredictStateImpl(
      isOut: freezed == isOut
          ? _value.isOut
          : isOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      remind: freezed == remind
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AiOnlyPredictStateImpl extends _AiOnlyPredictState {
  const _$AiOnlyPredictStateImpl({this.isOut, this.remind}) : super._();

  @override
  final bool? isOut;
  @override
  final String? remind;

  @override
  String toString() {
    return 'AiOnlyPredictState(isOut: $isOut, remind: $remind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiOnlyPredictStateImpl &&
            (identical(other.isOut, isOut) || other.isOut == isOut) &&
            (identical(other.remind, remind) || other.remind == remind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOut, remind);

  /// Create a copy of AiOnlyPredictState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AiOnlyPredictStateImplCopyWith<_$AiOnlyPredictStateImpl> get copyWith =>
      __$$AiOnlyPredictStateImplCopyWithImpl<_$AiOnlyPredictStateImpl>(
          this, _$identity);
}

abstract class _AiOnlyPredictState extends AiOnlyPredictState {
  const factory _AiOnlyPredictState({final bool? isOut, final String? remind}) =
      _$AiOnlyPredictStateImpl;
  const _AiOnlyPredictState._() : super._();

  @override
  bool? get isOut;
  @override
  String? get remind;

  /// Create a copy of AiOnlyPredictState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AiOnlyPredictStateImplCopyWith<_$AiOnlyPredictStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
