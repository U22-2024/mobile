// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_item_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventItemModel {
  EventItemModelId get id => throw _privateConstructorUsedError;
  EventModelId get eventId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get startAt => throw _privateConstructorUsedError;

  /// Create a copy of EventItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventItemModelCopyWith<EventItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventItemModelCopyWith<$Res> {
  factory $EventItemModelCopyWith(
          EventItemModel value, $Res Function(EventItemModel) then) =
      _$EventItemModelCopyWithImpl<$Res, EventItemModel>;
  @useResult
  $Res call(
      {EventItemModelId id,
      EventModelId eventId,
      String title,
      String? description,
      DateTime startAt});
}

/// @nodoc
class _$EventItemModelCopyWithImpl<$Res, $Val extends EventItemModel>
    implements $EventItemModelCopyWith<$Res> {
  _$EventItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? title = null,
    Object? description = freezed,
    Object? startAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EventItemModelId,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as EventModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventItemModelImplCopyWith<$Res>
    implements $EventItemModelCopyWith<$Res> {
  factory _$$EventItemModelImplCopyWith(_$EventItemModelImpl value,
          $Res Function(_$EventItemModelImpl) then) =
      __$$EventItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventItemModelId id,
      EventModelId eventId,
      String title,
      String? description,
      DateTime startAt});
}

/// @nodoc
class __$$EventItemModelImplCopyWithImpl<$Res>
    extends _$EventItemModelCopyWithImpl<$Res, _$EventItemModelImpl>
    implements _$$EventItemModelImplCopyWith<$Res> {
  __$$EventItemModelImplCopyWithImpl(
      _$EventItemModelImpl _value, $Res Function(_$EventItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? title = null,
    Object? description = freezed,
    Object? startAt = null,
  }) {
    return _then(_$EventItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EventItemModelId,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as EventModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EventItemModelImpl implements _EventItemModel {
  const _$EventItemModelImpl(
      {required this.id,
      required this.eventId,
      required this.title,
      required this.description,
      required this.startAt});

  @override
  final EventItemModelId id;
  @override
  final EventModelId eventId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime startAt;

  @override
  String toString() {
    return 'EventItemModel(id: $id, eventId: $eventId, title: $title, description: $description, startAt: $startAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startAt, startAt) || other.startAt == startAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, eventId, title, description, startAt);

  /// Create a copy of EventItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventItemModelImplCopyWith<_$EventItemModelImpl> get copyWith =>
      __$$EventItemModelImplCopyWithImpl<_$EventItemModelImpl>(
          this, _$identity);
}

abstract class _EventItemModel implements EventItemModel {
  const factory _EventItemModel(
      {required final EventItemModelId id,
      required final EventModelId eventId,
      required final String title,
      required final String? description,
      required final DateTime startAt}) = _$EventItemModelImpl;

  @override
  EventItemModelId get id;
  @override
  EventModelId get eventId;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime get startAt;

  /// Create a copy of EventItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventItemModelImplCopyWith<_$EventItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
