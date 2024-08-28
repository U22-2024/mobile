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
mixin _$ClientOnlyState {
  $core.Pos? get fromPos => throw _privateConstructorUsedError;
  $core.Pos? get destPos => throw _privateConstructorUsedError;

  /// Create a copy of ClientOnlyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientOnlyStateCopyWith<ClientOnlyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientOnlyStateCopyWith<$Res> {
  factory $ClientOnlyStateCopyWith(
          ClientOnlyState value, $Res Function(ClientOnlyState) then) =
      _$ClientOnlyStateCopyWithImpl<$Res, ClientOnlyState>;
  @useResult
  $Res call({$core.Pos? fromPos, $core.Pos? destPos});
}

/// @nodoc
class _$ClientOnlyStateCopyWithImpl<$Res, $Val extends ClientOnlyState>
    implements $ClientOnlyStateCopyWith<$Res> {
  _$ClientOnlyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientOnlyState
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
abstract class _$$ClientOnlyStateImplCopyWith<$Res>
    implements $ClientOnlyStateCopyWith<$Res> {
  factory _$$ClientOnlyStateImplCopyWith(_$ClientOnlyStateImpl value,
          $Res Function(_$ClientOnlyStateImpl) then) =
      __$$ClientOnlyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({$core.Pos? fromPos, $core.Pos? destPos});
}

/// @nodoc
class __$$ClientOnlyStateImplCopyWithImpl<$Res>
    extends _$ClientOnlyStateCopyWithImpl<$Res, _$ClientOnlyStateImpl>
    implements _$$ClientOnlyStateImplCopyWith<$Res> {
  __$$ClientOnlyStateImplCopyWithImpl(
      _$ClientOnlyStateImpl _value, $Res Function(_$ClientOnlyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientOnlyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromPos = freezed,
    Object? destPos = freezed,
  }) {
    return _then(_$ClientOnlyStateImpl(
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

class _$ClientOnlyStateImpl extends _ClientOnlyState {
  const _$ClientOnlyStateImpl({this.fromPos, this.destPos}) : super._();

  @override
  final $core.Pos? fromPos;
  @override
  final $core.Pos? destPos;

  @override
  String toString() {
    return 'ClientOnlyState(fromPos: $fromPos, destPos: $destPos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientOnlyStateImpl &&
            (identical(other.fromPos, fromPos) || other.fromPos == fromPos) &&
            (identical(other.destPos, destPos) || other.destPos == destPos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromPos, destPos);

  /// Create a copy of ClientOnlyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientOnlyStateImplCopyWith<_$ClientOnlyStateImpl> get copyWith =>
      __$$ClientOnlyStateImplCopyWithImpl<_$ClientOnlyStateImpl>(
          this, _$identity);
}

abstract class _ClientOnlyState extends ClientOnlyState {
  const factory _ClientOnlyState(
      {final $core.Pos? fromPos,
      final $core.Pos? destPos}) = _$ClientOnlyStateImpl;
  const _ClientOnlyState._() : super._();

  @override
  $core.Pos? get fromPos;
  @override
  $core.Pos? get destPos;

  /// Create a copy of ClientOnlyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientOnlyStateImplCopyWith<_$ClientOnlyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

/// @nodoc
mixin _$State {
  PredictSourceState get predictSource => throw _privateConstructorUsedError;
  ClientOnlyState get clientOnlyState => throw _privateConstructorUsedError;
  AiOnlyPredictState get aiOnlyPredict => throw _privateConstructorUsedError;

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res, State>;
  @useResult
  $Res call(
      {PredictSourceState predictSource,
      ClientOnlyState clientOnlyState,
      AiOnlyPredictState aiOnlyPredict});

  $PredictSourceStateCopyWith<$Res> get predictSource;
  $ClientOnlyStateCopyWith<$Res> get clientOnlyState;
  $AiOnlyPredictStateCopyWith<$Res> get aiOnlyPredict;
}

/// @nodoc
class _$StateCopyWithImpl<$Res, $Val extends State>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictSource = null,
    Object? clientOnlyState = null,
    Object? aiOnlyPredict = null,
  }) {
    return _then(_value.copyWith(
      predictSource: null == predictSource
          ? _value.predictSource
          : predictSource // ignore: cast_nullable_to_non_nullable
              as PredictSourceState,
      clientOnlyState: null == clientOnlyState
          ? _value.clientOnlyState
          : clientOnlyState // ignore: cast_nullable_to_non_nullable
              as ClientOnlyState,
      aiOnlyPredict: null == aiOnlyPredict
          ? _value.aiOnlyPredict
          : aiOnlyPredict // ignore: cast_nullable_to_non_nullable
              as AiOnlyPredictState,
    ) as $Val);
  }

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PredictSourceStateCopyWith<$Res> get predictSource {
    return $PredictSourceStateCopyWith<$Res>(_value.predictSource, (value) {
      return _then(_value.copyWith(predictSource: value) as $Val);
    });
  }

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientOnlyStateCopyWith<$Res> get clientOnlyState {
    return $ClientOnlyStateCopyWith<$Res>(_value.clientOnlyState, (value) {
      return _then(_value.copyWith(clientOnlyState: value) as $Val);
    });
  }

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AiOnlyPredictStateCopyWith<$Res> get aiOnlyPredict {
    return $AiOnlyPredictStateCopyWith<$Res>(_value.aiOnlyPredict, (value) {
      return _then(_value.copyWith(aiOnlyPredict: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PredictSourceState predictSource,
      ClientOnlyState clientOnlyState,
      AiOnlyPredictState aiOnlyPredict});

  @override
  $PredictSourceStateCopyWith<$Res> get predictSource;
  @override
  $ClientOnlyStateCopyWith<$Res> get clientOnlyState;
  @override
  $AiOnlyPredictStateCopyWith<$Res> get aiOnlyPredict;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$StateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictSource = null,
    Object? clientOnlyState = null,
    Object? aiOnlyPredict = null,
  }) {
    return _then(_$StateImpl(
      predictSource: null == predictSource
          ? _value.predictSource
          : predictSource // ignore: cast_nullable_to_non_nullable
              as PredictSourceState,
      clientOnlyState: null == clientOnlyState
          ? _value.clientOnlyState
          : clientOnlyState // ignore: cast_nullable_to_non_nullable
              as ClientOnlyState,
      aiOnlyPredict: null == aiOnlyPredict
          ? _value.aiOnlyPredict
          : aiOnlyPredict // ignore: cast_nullable_to_non_nullable
              as AiOnlyPredictState,
    ));
  }
}

/// @nodoc

class _$StateImpl extends _State {
  const _$StateImpl(
      {this.predictSource = const PredictSourceState(),
      this.clientOnlyState = const ClientOnlyState(),
      this.aiOnlyPredict = const AiOnlyPredictState()})
      : super._();

  @override
  @JsonKey()
  final PredictSourceState predictSource;
  @override
  @JsonKey()
  final ClientOnlyState clientOnlyState;
  @override
  @JsonKey()
  final AiOnlyPredictState aiOnlyPredict;

  @override
  String toString() {
    return 'State(predictSource: $predictSource, clientOnlyState: $clientOnlyState, aiOnlyPredict: $aiOnlyPredict)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.predictSource, predictSource) ||
                other.predictSource == predictSource) &&
            (identical(other.clientOnlyState, clientOnlyState) ||
                other.clientOnlyState == clientOnlyState) &&
            (identical(other.aiOnlyPredict, aiOnlyPredict) ||
                other.aiOnlyPredict == aiOnlyPredict));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, predictSource, clientOnlyState, aiOnlyPredict);

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State extends State {
  const factory _State(
      {final PredictSourceState predictSource,
      final ClientOnlyState clientOnlyState,
      final AiOnlyPredictState aiOnlyPredict}) = _$StateImpl;
  const _State._() : super._();

  @override
  PredictSourceState get predictSource;
  @override
  ClientOnlyState get clientOnlyState;
  @override
  AiOnlyPredictState get aiOnlyPredict;

  /// Create a copy of State
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
