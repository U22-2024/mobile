// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventModelId {
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of EventModelId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelIdCopyWith<EventModelId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelIdCopyWith<$Res> {
  factory $EventModelIdCopyWith(
          EventModelId value, $Res Function(EventModelId) then) =
      _$EventModelIdCopyWithImpl<$Res, EventModelId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$EventModelIdCopyWithImpl<$Res, $Val extends EventModelId>
    implements $EventModelIdCopyWith<$Res> {
  _$EventModelIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModelId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModelIdImplCopyWith<$Res>
    implements $EventModelIdCopyWith<$Res> {
  factory _$$EventModelIdImplCopyWith(
          _$EventModelIdImpl value, $Res Function(_$EventModelIdImpl) then) =
      __$$EventModelIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$EventModelIdImplCopyWithImpl<$Res>
    extends _$EventModelIdCopyWithImpl<$Res, _$EventModelIdImpl>
    implements _$$EventModelIdImplCopyWith<$Res> {
  __$$EventModelIdImplCopyWithImpl(
      _$EventModelIdImpl _value, $Res Function(_$EventModelIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModelId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$EventModelIdImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventModelIdImpl implements _EventModelId {
  const _$EventModelIdImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'EventModelId(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of EventModelId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelIdImplCopyWith<_$EventModelIdImpl> get copyWith =>
      __$$EventModelIdImplCopyWithImpl<_$EventModelIdImpl>(this, _$identity);
}

abstract class _EventModelId implements EventModelId {
  const factory _EventModelId(final String value) = _$EventModelIdImpl;

  @override
  String get value;

  /// Create a copy of EventModelId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelIdImplCopyWith<_$EventModelIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventModel {
  EventModelId get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<EventItemModel> get items => throw _privateConstructorUsedError;
  TimeTableModel get timeTable => throw _privateConstructorUsedError;
  List<UserItemModel> get userItems => throw _privateConstructorUsedError;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {EventModelId id,
      String title,
      String? description,
      List<EventItemModel> items,
      TimeTableModel timeTable,
      List<UserItemModel> userItems});

  $EventModelIdCopyWith<$Res> get id;
  $TimeTableModelCopyWith<$Res> get timeTable;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? items = null,
    Object? timeTable = null,
    Object? userItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EventModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EventItemModel>,
      timeTable: null == timeTable
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as TimeTableModel,
      userItems: null == userItems
          ? _value.userItems
          : userItems // ignore: cast_nullable_to_non_nullable
              as List<UserItemModel>,
    ) as $Val);
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventModelIdCopyWith<$Res> get id {
    return $EventModelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeTableModelCopyWith<$Res> get timeTable {
    return $TimeTableModelCopyWith<$Res>(_value.timeTable, (value) {
      return _then(_value.copyWith(timeTable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventModelId id,
      String title,
      String? description,
      List<EventItemModel> items,
      TimeTableModel timeTable,
      List<UserItemModel> userItems});

  @override
  $EventModelIdCopyWith<$Res> get id;
  @override
  $TimeTableModelCopyWith<$Res> get timeTable;
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? items = null,
    Object? timeTable = null,
    Object? userItems = null,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EventModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EventItemModel>,
      timeTable: null == timeTable
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as TimeTableModel,
      userItems: null == userItems
          ? _value._userItems
          : userItems // ignore: cast_nullable_to_non_nullable
              as List<UserItemModel>,
    ));
  }
}

/// @nodoc

class _$EventModelImpl implements _EventModel {
  const _$EventModelImpl(
      {required this.id,
      required this.title,
      this.description,
      required final List<EventItemModel> items,
      required this.timeTable,
      required final List<UserItemModel> userItems})
      : _items = items,
        _userItems = userItems;

  @override
  final EventModelId id;
  @override
  final String title;
  @override
  final String? description;
  final List<EventItemModel> _items;
  @override
  List<EventItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final TimeTableModel timeTable;
  final List<UserItemModel> _userItems;
  @override
  List<UserItemModel> get userItems {
    if (_userItems is EqualUnmodifiableListView) return _userItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userItems);
  }

  @override
  String toString() {
    return 'EventModel(id: $id, title: $title, description: $description, items: $items, timeTable: $timeTable, userItems: $userItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.timeTable, timeTable) ||
                other.timeTable == timeTable) &&
            const DeepCollectionEquality()
                .equals(other._userItems, _userItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      const DeepCollectionEquality().hash(_items),
      timeTable,
      const DeepCollectionEquality().hash(_userItems));

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);
}

abstract class _EventModel implements EventModel {
  const factory _EventModel(
      {required final EventModelId id,
      required final String title,
      final String? description,
      required final List<EventItemModel> items,
      required final TimeTableModel timeTable,
      required final List<UserItemModel> userItems}) = _$EventModelImpl;

  @override
  EventModelId get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  List<EventItemModel> get items;
  @override
  TimeTableModel get timeTable;
  @override
  List<UserItemModel> get userItems;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventItemModel {
  String get value => throw _privateConstructorUsedError;

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
  $Res call({String value});
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
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String value});
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
    Object? value = null,
  }) {
    return _then(_$EventItemModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventItemModelImpl implements _EventItemModel {
  const _$EventItemModelImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'EventItemModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventItemModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

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
  const factory _EventItemModel({required final String value}) =
      _$EventItemModelImpl;

  @override
  String get value;

  /// Create a copy of EventItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventItemModelImplCopyWith<_$EventItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserItemModel {
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of UserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserItemModelCopyWith<UserItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserItemModelCopyWith<$Res> {
  factory $UserItemModelCopyWith(
          UserItemModel value, $Res Function(UserItemModel) then) =
      _$UserItemModelCopyWithImpl<$Res, UserItemModel>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$UserItemModelCopyWithImpl<$Res, $Val extends UserItemModel>
    implements $UserItemModelCopyWith<$Res> {
  _$UserItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserItemModelImplCopyWith<$Res>
    implements $UserItemModelCopyWith<$Res> {
  factory _$$UserItemModelImplCopyWith(
          _$UserItemModelImpl value, $Res Function(_$UserItemModelImpl) then) =
      __$$UserItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserItemModelImplCopyWithImpl<$Res>
    extends _$UserItemModelCopyWithImpl<$Res, _$UserItemModelImpl>
    implements _$$UserItemModelImplCopyWith<$Res> {
  __$$UserItemModelImplCopyWithImpl(
      _$UserItemModelImpl _value, $Res Function(_$UserItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserItemModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserItemModelImpl implements _UserItemModel {
  const _$UserItemModelImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserItemModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserItemModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of UserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserItemModelImplCopyWith<_$UserItemModelImpl> get copyWith =>
      __$$UserItemModelImplCopyWithImpl<_$UserItemModelImpl>(this, _$identity);
}

abstract class _UserItemModel implements UserItemModel {
  const factory _UserItemModel({required final String value}) =
      _$UserItemModelImpl;

  @override
  String get value;

  /// Create a copy of UserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserItemModelImplCopyWith<_$UserItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeTableModel {
  List<TimeTableItemModel> get items => throw _privateConstructorUsedError;
  int get transitCount => throw _privateConstructorUsedError;
  int get walkDistance => throw _privateConstructorUsedError;
  int get fare => throw _privateConstructorUsedError;

  /// Create a copy of TimeTableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeTableModelCopyWith<TimeTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableModelCopyWith<$Res> {
  factory $TimeTableModelCopyWith(
          TimeTableModel value, $Res Function(TimeTableModel) then) =
      _$TimeTableModelCopyWithImpl<$Res, TimeTableModel>;
  @useResult
  $Res call(
      {List<TimeTableItemModel> items,
      int transitCount,
      int walkDistance,
      int fare});
}

/// @nodoc
class _$TimeTableModelCopyWithImpl<$Res, $Val extends TimeTableModel>
    implements $TimeTableModelCopyWith<$Res> {
  _$TimeTableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeTableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? transitCount = null,
    Object? walkDistance = null,
    Object? fare = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TimeTableItemModel>,
      transitCount: null == transitCount
          ? _value.transitCount
          : transitCount // ignore: cast_nullable_to_non_nullable
              as int,
      walkDistance: null == walkDistance
          ? _value.walkDistance
          : walkDistance // ignore: cast_nullable_to_non_nullable
              as int,
      fare: null == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeTableModelImplCopyWith<$Res>
    implements $TimeTableModelCopyWith<$Res> {
  factory _$$TimeTableModelImplCopyWith(_$TimeTableModelImpl value,
          $Res Function(_$TimeTableModelImpl) then) =
      __$$TimeTableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TimeTableItemModel> items,
      int transitCount,
      int walkDistance,
      int fare});
}

/// @nodoc
class __$$TimeTableModelImplCopyWithImpl<$Res>
    extends _$TimeTableModelCopyWithImpl<$Res, _$TimeTableModelImpl>
    implements _$$TimeTableModelImplCopyWith<$Res> {
  __$$TimeTableModelImplCopyWithImpl(
      _$TimeTableModelImpl _value, $Res Function(_$TimeTableModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? transitCount = null,
    Object? walkDistance = null,
    Object? fare = null,
  }) {
    return _then(_$TimeTableModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TimeTableItemModel>,
      transitCount: null == transitCount
          ? _value.transitCount
          : transitCount // ignore: cast_nullable_to_non_nullable
              as int,
      walkDistance: null == walkDistance
          ? _value.walkDistance
          : walkDistance // ignore: cast_nullable_to_non_nullable
              as int,
      fare: null == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimeTableModelImpl extends _TimeTableModel {
  const _$TimeTableModelImpl(
      {required final List<TimeTableItemModel> items,
      required this.transitCount,
      required this.walkDistance,
      required this.fare})
      : _items = items,
        super._();

  final List<TimeTableItemModel> _items;
  @override
  List<TimeTableItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int transitCount;
  @override
  final int walkDistance;
  @override
  final int fare;

  @override
  String toString() {
    return 'TimeTableModel(items: $items, transitCount: $transitCount, walkDistance: $walkDistance, fare: $fare)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTableModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.transitCount, transitCount) ||
                other.transitCount == transitCount) &&
            (identical(other.walkDistance, walkDistance) ||
                other.walkDistance == walkDistance) &&
            (identical(other.fare, fare) || other.fare == fare));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      transitCount,
      walkDistance,
      fare);

  /// Create a copy of TimeTableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTableModelImplCopyWith<_$TimeTableModelImpl> get copyWith =>
      __$$TimeTableModelImplCopyWithImpl<_$TimeTableModelImpl>(
          this, _$identity);
}

abstract class _TimeTableModel extends TimeTableModel {
  const factory _TimeTableModel(
      {required final List<TimeTableItemModel> items,
      required final int transitCount,
      required final int walkDistance,
      required final int fare}) = _$TimeTableModelImpl;
  const _TimeTableModel._() : super._();

  @override
  List<TimeTableItemModel> get items;
  @override
  int get transitCount;
  @override
  int get walkDistance;
  @override
  int get fare;

  /// Create a copy of TimeTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeTableModelImplCopyWith<_$TimeTableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeTableItemModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) point,
    required TResult Function(TimeTableMoveData move) move,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? point,
    TResult? Function(TimeTableMoveData move)? move,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? point,
    TResult Function(TimeTableMoveData move)? move,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeTableItemPointData value) point,
    required TResult Function(TimeTableItemMoveData value) move,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeTableItemPointData value)? point,
    TResult? Function(TimeTableItemMoveData value)? move,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeTableItemPointData value)? point,
    TResult Function(TimeTableItemMoveData value)? move,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableItemModelCopyWith<$Res> {
  factory $TimeTableItemModelCopyWith(
          TimeTableItemModel value, $Res Function(TimeTableItemModel) then) =
      _$TimeTableItemModelCopyWithImpl<$Res, TimeTableItemModel>;
}

/// @nodoc
class _$TimeTableItemModelCopyWithImpl<$Res, $Val extends TimeTableItemModel>
    implements $TimeTableItemModelCopyWith<$Res> {
  _$TimeTableItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TimeTableItemPointDataImplCopyWith<$Res> {
  factory _$$TimeTableItemPointDataImplCopyWith(
          _$TimeTableItemPointDataImpl value,
          $Res Function(_$TimeTableItemPointDataImpl) then) =
      __$$TimeTableItemPointDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$TimeTableItemPointDataImplCopyWithImpl<$Res>
    extends _$TimeTableItemModelCopyWithImpl<$Res, _$TimeTableItemPointDataImpl>
    implements _$$TimeTableItemPointDataImplCopyWith<$Res> {
  __$$TimeTableItemPointDataImplCopyWithImpl(
      _$TimeTableItemPointDataImpl _value,
      $Res Function(_$TimeTableItemPointDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TimeTableItemPointDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeTableItemPointDataImpl extends TimeTableItemPointData {
  const _$TimeTableItemPointDataImpl({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'TimeTableItemModel.point(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTableItemPointDataImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTableItemPointDataImplCopyWith<_$TimeTableItemPointDataImpl>
      get copyWith => __$$TimeTableItemPointDataImplCopyWithImpl<
          _$TimeTableItemPointDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) point,
    required TResult Function(TimeTableMoveData move) move,
  }) {
    return point(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? point,
    TResult? Function(TimeTableMoveData move)? move,
  }) {
    return point?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? point,
    TResult Function(TimeTableMoveData move)? move,
    required TResult orElse(),
  }) {
    if (point != null) {
      return point(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeTableItemPointData value) point,
    required TResult Function(TimeTableItemMoveData value) move,
  }) {
    return point(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeTableItemPointData value)? point,
    TResult? Function(TimeTableItemMoveData value)? move,
  }) {
    return point?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeTableItemPointData value)? point,
    TResult Function(TimeTableItemMoveData value)? move,
    required TResult orElse(),
  }) {
    if (point != null) {
      return point(this);
    }
    return orElse();
  }
}

abstract class TimeTableItemPointData extends TimeTableItemModel {
  const factory TimeTableItemPointData({required final String name}) =
      _$TimeTableItemPointDataImpl;
  const TimeTableItemPointData._() : super._();

  String get name;

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeTableItemPointDataImplCopyWith<_$TimeTableItemPointDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeTableItemMoveDataImplCopyWith<$Res> {
  factory _$$TimeTableItemMoveDataImplCopyWith(
          _$TimeTableItemMoveDataImpl value,
          $Res Function(_$TimeTableItemMoveDataImpl) then) =
      __$$TimeTableItemMoveDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeTableMoveData move});

  $TimeTableMoveDataCopyWith<$Res> get move;
}

/// @nodoc
class __$$TimeTableItemMoveDataImplCopyWithImpl<$Res>
    extends _$TimeTableItemModelCopyWithImpl<$Res, _$TimeTableItemMoveDataImpl>
    implements _$$TimeTableItemMoveDataImplCopyWith<$Res> {
  __$$TimeTableItemMoveDataImplCopyWithImpl(_$TimeTableItemMoveDataImpl _value,
      $Res Function(_$TimeTableItemMoveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_$TimeTableItemMoveDataImpl(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as TimeTableMoveData,
    ));
  }

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeTableMoveDataCopyWith<$Res> get move {
    return $TimeTableMoveDataCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value));
    });
  }
}

/// @nodoc

class _$TimeTableItemMoveDataImpl extends TimeTableItemMoveData {
  const _$TimeTableItemMoveDataImpl({required this.move}) : super._();

  @override
  final TimeTableMoveData move;

  @override
  String toString() {
    return 'TimeTableItemModel.move(move: $move)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTableItemMoveDataImpl &&
            (identical(other.move, move) || other.move == move));
  }

  @override
  int get hashCode => Object.hash(runtimeType, move);

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTableItemMoveDataImplCopyWith<_$TimeTableItemMoveDataImpl>
      get copyWith => __$$TimeTableItemMoveDataImplCopyWithImpl<
          _$TimeTableItemMoveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) point,
    required TResult Function(TimeTableMoveData move) move,
  }) {
    return move(this.move);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? point,
    TResult? Function(TimeTableMoveData move)? move,
  }) {
    return move?.call(this.move);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? point,
    TResult Function(TimeTableMoveData move)? move,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(this.move);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeTableItemPointData value) point,
    required TResult Function(TimeTableItemMoveData value) move,
  }) {
    return move(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeTableItemPointData value)? point,
    TResult? Function(TimeTableItemMoveData value)? move,
  }) {
    return move?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeTableItemPointData value)? point,
    TResult Function(TimeTableItemMoveData value)? move,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(this);
    }
    return orElse();
  }
}

abstract class TimeTableItemMoveData extends TimeTableItemModel {
  const factory TimeTableItemMoveData({required final TimeTableMoveData move}) =
      _$TimeTableItemMoveDataImpl;
  const TimeTableItemMoveData._() : super._();

  TimeTableMoveData get move;

  /// Create a copy of TimeTableItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeTableItemMoveDataImplCopyWith<_$TimeTableItemMoveDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeTableMoveData {
  String get name => throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  String get lineName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime from, DateTime to,
            int distance, String lineName)
        other,
    required TResult Function(String name, DateTime from, DateTime to,
            int distance, String lineName, TransportModel transport)
        train,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, DateTime from, DateTime to, int distance,
            String lineName)?
        other,
    TResult? Function(String name, DateTime from, DateTime to, int distance,
            String lineName, TransportModel transport)?
        train,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime from, DateTime to, int distance,
            String lineName)?
        other,
    TResult Function(String name, DateTime from, DateTime to, int distance,
            String lineName, TransportModel transport)?
        train,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtherMoveData value) other,
    required TResult Function(TrainMoveData value) train,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtherMoveData value)? other,
    TResult? Function(TrainMoveData value)? train,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtherMoveData value)? other,
    TResult Function(TrainMoveData value)? train,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeTableMoveDataCopyWith<TimeTableMoveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableMoveDataCopyWith<$Res> {
  factory $TimeTableMoveDataCopyWith(
          TimeTableMoveData value, $Res Function(TimeTableMoveData) then) =
      _$TimeTableMoveDataCopyWithImpl<$Res, TimeTableMoveData>;
  @useResult
  $Res call(
      {String name, DateTime from, DateTime to, int distance, String lineName});
}

/// @nodoc
class _$TimeTableMoveDataCopyWithImpl<$Res, $Val extends TimeTableMoveData>
    implements $TimeTableMoveDataCopyWith<$Res> {
  _$TimeTableMoveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? from = null,
    Object? to = null,
    Object? distance = null,
    Object? lineName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      lineName: null == lineName
          ? _value.lineName
          : lineName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherMoveDataImplCopyWith<$Res>
    implements $TimeTableMoveDataCopyWith<$Res> {
  factory _$$OtherMoveDataImplCopyWith(
          _$OtherMoveDataImpl value, $Res Function(_$OtherMoveDataImpl) then) =
      __$$OtherMoveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, DateTime from, DateTime to, int distance, String lineName});
}

/// @nodoc
class __$$OtherMoveDataImplCopyWithImpl<$Res>
    extends _$TimeTableMoveDataCopyWithImpl<$Res, _$OtherMoveDataImpl>
    implements _$$OtherMoveDataImplCopyWith<$Res> {
  __$$OtherMoveDataImplCopyWithImpl(
      _$OtherMoveDataImpl _value, $Res Function(_$OtherMoveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? from = null,
    Object? to = null,
    Object? distance = null,
    Object? lineName = null,
  }) {
    return _then(_$OtherMoveDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      lineName: null == lineName
          ? _value.lineName
          : lineName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtherMoveDataImpl extends OtherMoveData {
  const _$OtherMoveDataImpl(
      {required this.name,
      required this.from,
      required this.to,
      required this.distance,
      required this.lineName})
      : super._();

  @override
  final String name;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final int distance;
  @override
  final String lineName;

  @override
  String toString() {
    return 'TimeTableMoveData.other(name: $name, from: $from, to: $to, distance: $distance, lineName: $lineName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherMoveDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.lineName, lineName) ||
                other.lineName == lineName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, from, to, distance, lineName);

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherMoveDataImplCopyWith<_$OtherMoveDataImpl> get copyWith =>
      __$$OtherMoveDataImplCopyWithImpl<_$OtherMoveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime from, DateTime to,
            int distance, String lineName)
        other,
    required TResult Function(String name, DateTime from, DateTime to,
            int distance, String lineName, TransportModel transport)
        train,
  }) {
    return other(name, from, to, distance, lineName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, DateTime from, DateTime to, int distance,
            String lineName)?
        other,
    TResult? Function(String name, DateTime from, DateTime to, int distance,
            String lineName, TransportModel transport)?
        train,
  }) {
    return other?.call(name, from, to, distance, lineName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime from, DateTime to, int distance,
            String lineName)?
        other,
    TResult Function(String name, DateTime from, DateTime to, int distance,
            String lineName, TransportModel transport)?
        train,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(name, from, to, distance, lineName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtherMoveData value) other,
    required TResult Function(TrainMoveData value) train,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtherMoveData value)? other,
    TResult? Function(TrainMoveData value)? train,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtherMoveData value)? other,
    TResult Function(TrainMoveData value)? train,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherMoveData extends TimeTableMoveData {
  const factory OtherMoveData(
      {required final String name,
      required final DateTime from,
      required final DateTime to,
      required final int distance,
      required final String lineName}) = _$OtherMoveDataImpl;
  const OtherMoveData._() : super._();

  @override
  String get name;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  int get distance;
  @override
  String get lineName;

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherMoveDataImplCopyWith<_$OtherMoveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrainMoveDataImplCopyWith<$Res>
    implements $TimeTableMoveDataCopyWith<$Res> {
  factory _$$TrainMoveDataImplCopyWith(
          _$TrainMoveDataImpl value, $Res Function(_$TrainMoveDataImpl) then) =
      __$$TrainMoveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime from,
      DateTime to,
      int distance,
      String lineName,
      TransportModel transport});

  $TransportModelCopyWith<$Res> get transport;
}

/// @nodoc
class __$$TrainMoveDataImplCopyWithImpl<$Res>
    extends _$TimeTableMoveDataCopyWithImpl<$Res, _$TrainMoveDataImpl>
    implements _$$TrainMoveDataImplCopyWith<$Res> {
  __$$TrainMoveDataImplCopyWithImpl(
      _$TrainMoveDataImpl _value, $Res Function(_$TrainMoveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? from = null,
    Object? to = null,
    Object? distance = null,
    Object? lineName = null,
    Object? transport = null,
  }) {
    return _then(_$TrainMoveDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      lineName: null == lineName
          ? _value.lineName
          : lineName // ignore: cast_nullable_to_non_nullable
              as String,
      transport: null == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as TransportModel,
    ));
  }

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransportModelCopyWith<$Res> get transport {
    return $TransportModelCopyWith<$Res>(_value.transport, (value) {
      return _then(_value.copyWith(transport: value));
    });
  }
}

/// @nodoc

class _$TrainMoveDataImpl extends TrainMoveData {
  const _$TrainMoveDataImpl(
      {required this.name,
      required this.from,
      required this.to,
      required this.distance,
      required this.lineName,
      required this.transport})
      : super._();

  @override
  final String name;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final int distance;
  @override
  final String lineName;
  @override
  final TransportModel transport;

  @override
  String toString() {
    return 'TimeTableMoveData.train(name: $name, from: $from, to: $to, distance: $distance, lineName: $lineName, transport: $transport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainMoveDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.lineName, lineName) ||
                other.lineName == lineName) &&
            (identical(other.transport, transport) ||
                other.transport == transport));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, from, to, distance, lineName, transport);

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainMoveDataImplCopyWith<_$TrainMoveDataImpl> get copyWith =>
      __$$TrainMoveDataImplCopyWithImpl<_$TrainMoveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime from, DateTime to,
            int distance, String lineName)
        other,
    required TResult Function(String name, DateTime from, DateTime to,
            int distance, String lineName, TransportModel transport)
        train,
  }) {
    return train(name, from, to, distance, lineName, transport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, DateTime from, DateTime to, int distance,
            String lineName)?
        other,
    TResult? Function(String name, DateTime from, DateTime to, int distance,
            String lineName, TransportModel transport)?
        train,
  }) {
    return train?.call(name, from, to, distance, lineName, transport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime from, DateTime to, int distance,
            String lineName)?
        other,
    TResult Function(String name, DateTime from, DateTime to, int distance,
            String lineName, TransportModel transport)?
        train,
    required TResult orElse(),
  }) {
    if (train != null) {
      return train(name, from, to, distance, lineName, transport);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtherMoveData value) other,
    required TResult Function(TrainMoveData value) train,
  }) {
    return train(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtherMoveData value)? other,
    TResult? Function(TrainMoveData value)? train,
  }) {
    return train?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtherMoveData value)? other,
    TResult Function(TrainMoveData value)? train,
    required TResult orElse(),
  }) {
    if (train != null) {
      return train(this);
    }
    return orElse();
  }
}

abstract class TrainMoveData extends TimeTableMoveData {
  const factory TrainMoveData(
      {required final String name,
      required final DateTime from,
      required final DateTime to,
      required final int distance,
      required final String lineName,
      required final TransportModel transport}) = _$TrainMoveDataImpl;
  const TrainMoveData._() : super._();

  @override
  String get name;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  int get distance;
  @override
  String get lineName;
  TransportModel get transport;

  /// Create a copy of TimeTableMoveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainMoveDataImplCopyWith<_$TrainMoveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransportModel {
  int get fare => throw _privateConstructorUsedError;
  String get trainName => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;

  /// Create a copy of TransportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransportModelCopyWith<TransportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportModelCopyWith<$Res> {
  factory $TransportModelCopyWith(
          TransportModel value, $Res Function(TransportModel) then) =
      _$TransportModelCopyWithImpl<$Res, TransportModel>;
  @useResult
  $Res call(
      {int fare,
      String trainName,
      String color,
      String direction,
      String destination});
}

/// @nodoc
class _$TransportModelCopyWithImpl<$Res, $Val extends TransportModel>
    implements $TransportModelCopyWith<$Res> {
  _$TransportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fare = null,
    Object? trainName = null,
    Object? color = null,
    Object? direction = null,
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      fare: null == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int,
      trainName: null == trainName
          ? _value.trainName
          : trainName // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportModelImplCopyWith<$Res>
    implements $TransportModelCopyWith<$Res> {
  factory _$$TransportModelImplCopyWith(_$TransportModelImpl value,
          $Res Function(_$TransportModelImpl) then) =
      __$$TransportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int fare,
      String trainName,
      String color,
      String direction,
      String destination});
}

/// @nodoc
class __$$TransportModelImplCopyWithImpl<$Res>
    extends _$TransportModelCopyWithImpl<$Res, _$TransportModelImpl>
    implements _$$TransportModelImplCopyWith<$Res> {
  __$$TransportModelImplCopyWithImpl(
      _$TransportModelImpl _value, $Res Function(_$TransportModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fare = null,
    Object? trainName = null,
    Object? color = null,
    Object? direction = null,
    Object? destination = null,
  }) {
    return _then(_$TransportModelImpl(
      fare: null == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int,
      trainName: null == trainName
          ? _value.trainName
          : trainName // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransportModelImpl extends _TransportModel {
  const _$TransportModelImpl(
      {required this.fare,
      required this.trainName,
      required this.color,
      required this.direction,
      required this.destination})
      : super._();

  @override
  final int fare;
  @override
  final String trainName;
  @override
  final String color;
  @override
  final String direction;
  @override
  final String destination;

  @override
  String toString() {
    return 'TransportModel(fare: $fare, trainName: $trainName, color: $color, direction: $direction, destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportModelImpl &&
            (identical(other.fare, fare) || other.fare == fare) &&
            (identical(other.trainName, trainName) ||
                other.trainName == trainName) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fare, trainName, color, direction, destination);

  /// Create a copy of TransportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportModelImplCopyWith<_$TransportModelImpl> get copyWith =>
      __$$TransportModelImplCopyWithImpl<_$TransportModelImpl>(
          this, _$identity);
}

abstract class _TransportModel extends TransportModel {
  const factory _TransportModel(
      {required final int fare,
      required final String trainName,
      required final String color,
      required final String direction,
      required final String destination}) = _$TransportModelImpl;
  const _TransportModel._() : super._();

  @override
  int get fare;
  @override
  String get trainName;
  @override
  String get color;
  @override
  String get direction;
  @override
  String get destination;

  /// Create a copy of TransportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportModelImplCopyWith<_$TransportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
