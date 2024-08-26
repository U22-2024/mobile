//
//  Generated code. Do not modify.
//  source: event/v1/event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../common/v1/common.pb.dart' as $9;
import 'core.pb.dart' as $10;
import 'core.pbenum.dart' as $10;

class Event extends $pb.GeneratedMessage {
  factory Event({
    $9.Guid? id,
    $core.String? title,
    $core.String? description,
    $core.Iterable<$core.String>? eventItem,
    TimeTable? timeTable,
    UserItems? userItems,
    $9.Uid? uid,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (eventItem != null) {
      $result.eventItem.addAll(eventItem);
    }
    if (timeTable != null) {
      $result.timeTable = timeTable;
    }
    if (userItems != null) {
      $result.userItems = userItems;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  Event._() : super();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Event', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Guid>(1, _omitFieldNames ? '' : 'id', subBuilder: $9.Guid.create)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..pPS(4, _omitFieldNames ? '' : 'eventItem')
    ..aOM<TimeTable>(5, _omitFieldNames ? '' : 'timeTable', subBuilder: TimeTable.create)
    ..aOM<UserItems>(6, _omitFieldNames ? '' : 'userItems', subBuilder: UserItems.create)
    ..aOM<$9.Uid>(7, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Guid get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($9.Guid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $9.Guid ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get eventItem => $_getList(3);

  @$pb.TagNumber(5)
  TimeTable get timeTable => $_getN(4);
  @$pb.TagNumber(5)
  set timeTable(TimeTable v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeTable() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeTable() => clearField(5);
  @$pb.TagNumber(5)
  TimeTable ensureTimeTable() => $_ensure(4);

  @$pb.TagNumber(6)
  UserItems get userItems => $_getN(5);
  @$pb.TagNumber(6)
  set userItems(UserItems v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserItems() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserItems() => clearField(6);
  @$pb.TagNumber(6)
  UserItems ensureUserItems() => $_ensure(5);

  @$pb.TagNumber(7)
  $9.Uid get uid => $_getN(6);
  @$pb.TagNumber(7)
  set uid($9.Uid v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUid() => $_has(6);
  @$pb.TagNumber(7)
  void clearUid() => clearField(7);
  @$pb.TagNumber(7)
  $9.Uid ensureUid() => $_ensure(6);
}

class TimeTable extends $pb.GeneratedMessage {
  factory TimeTable({
    $core.Iterable<TimeTableItem>? item,
    $core.int? transitCount,
    $core.int? walkDistance,
    $core.int? fare,
  }) {
    final $result = create();
    if (item != null) {
      $result.item.addAll(item);
    }
    if (transitCount != null) {
      $result.transitCount = transitCount;
    }
    if (walkDistance != null) {
      $result.walkDistance = walkDistance;
    }
    if (fare != null) {
      $result.fare = fare;
    }
    return $result;
  }
  TimeTable._() : super();
  factory TimeTable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeTable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeTable', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..pc<TimeTableItem>(1, _omitFieldNames ? '' : 'item', $pb.PbFieldType.PM, subBuilder: TimeTableItem.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'transitCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'walkDistance', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fare', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeTable clone() => TimeTable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeTable copyWith(void Function(TimeTable) updates) => super.copyWith((message) => updates(message as TimeTable)) as TimeTable;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeTable create() => TimeTable._();
  TimeTable createEmptyInstance() => create();
  static $pb.PbList<TimeTable> createRepeated() => $pb.PbList<TimeTable>();
  @$core.pragma('dart2js:noInline')
  static TimeTable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeTable>(create);
  static TimeTable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TimeTableItem> get item => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get transitCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set transitCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransitCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransitCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get walkDistance => $_getIZ(2);
  @$pb.TagNumber(3)
  set walkDistance($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWalkDistance() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalkDistance() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fare => $_getIZ(3);
  @$pb.TagNumber(4)
  set fare($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFare() => $_has(3);
  @$pb.TagNumber(4)
  void clearFare() => clearField(4);
}

class TimeTableItem extends $pb.GeneratedMessage {
  factory TimeTableItem({
    $10.TimeTableType? type,
    $core.String? name,
    $core.String? move,
    $10.DateTime? fromTime,
    $10.DateTime? endTime,
    $core.int? distance,
    $core.String? lineName,
    Transport? transport,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (name != null) {
      $result.name = name;
    }
    if (move != null) {
      $result.move = move;
    }
    if (fromTime != null) {
      $result.fromTime = fromTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (distance != null) {
      $result.distance = distance;
    }
    if (lineName != null) {
      $result.lineName = lineName;
    }
    if (transport != null) {
      $result.transport = transport;
    }
    return $result;
  }
  TimeTableItem._() : super();
  factory TimeTableItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeTableItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeTableItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..e<$10.TimeTableType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: $10.TimeTableType.TIME_TABLE_TYPE_UNSPECIFIED, valueOf: $10.TimeTableType.valueOf, enumValues: $10.TimeTableType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'move')
    ..aOM<$10.DateTime>(4, _omitFieldNames ? '' : 'fromTime', subBuilder: $10.DateTime.create)
    ..aOM<$10.DateTime>(5, _omitFieldNames ? '' : 'endTime', subBuilder: $10.DateTime.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'distance', $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'lineName')
    ..aOM<Transport>(8, _omitFieldNames ? '' : 'transport', subBuilder: Transport.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeTableItem clone() => TimeTableItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeTableItem copyWith(void Function(TimeTableItem) updates) => super.copyWith((message) => updates(message as TimeTableItem)) as TimeTableItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeTableItem create() => TimeTableItem._();
  TimeTableItem createEmptyInstance() => create();
  static $pb.PbList<TimeTableItem> createRepeated() => $pb.PbList<TimeTableItem>();
  @$core.pragma('dart2js:noInline')
  static TimeTableItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeTableItem>(create);
  static TimeTableItem? _defaultInstance;

  @$pb.TagNumber(1)
  $10.TimeTableType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type($10.TimeTableType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// type = point
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// type = move
  @$pb.TagNumber(3)
  $core.String get move => $_getSZ(2);
  @$pb.TagNumber(3)
  set move($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMove() => $_has(2);
  @$pb.TagNumber(3)
  void clearMove() => clearField(3);

  @$pb.TagNumber(4)
  $10.DateTime get fromTime => $_getN(3);
  @$pb.TagNumber(4)
  set fromTime($10.DateTime v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFromTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromTime() => clearField(4);
  @$pb.TagNumber(4)
  $10.DateTime ensureFromTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $10.DateTime get endTime => $_getN(4);
  @$pb.TagNumber(5)
  set endTime($10.DateTime v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => clearField(5);
  @$pb.TagNumber(5)
  $10.DateTime ensureEndTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get distance => $_getIZ(5);
  @$pb.TagNumber(6)
  set distance($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDistance() => $_has(5);
  @$pb.TagNumber(6)
  void clearDistance() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lineName => $_getSZ(6);
  @$pb.TagNumber(7)
  set lineName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLineName() => $_has(6);
  @$pb.TagNumber(7)
  void clearLineName() => clearField(7);

  /// move = train
  @$pb.TagNumber(8)
  Transport get transport => $_getN(7);
  @$pb.TagNumber(8)
  set transport(Transport v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTransport() => $_has(7);
  @$pb.TagNumber(8)
  void clearTransport() => clearField(8);
  @$pb.TagNumber(8)
  Transport ensureTransport() => $_ensure(7);
}

class Transport extends $pb.GeneratedMessage {
  factory Transport({
    $core.int? fare,
    $core.String? trainName,
    $core.String? color,
    $core.String? direction,
    $core.String? destination,
  }) {
    final $result = create();
    if (fare != null) {
      $result.fare = fare;
    }
    if (trainName != null) {
      $result.trainName = trainName;
    }
    if (color != null) {
      $result.color = color;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    if (destination != null) {
      $result.destination = destination;
    }
    return $result;
  }
  Transport._() : super();
  factory Transport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Transport', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'fare', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'trainName')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..aOS(4, _omitFieldNames ? '' : 'direction')
    ..aOS(5, _omitFieldNames ? '' : 'destination')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transport clone() => Transport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transport copyWith(void Function(Transport) updates) => super.copyWith((message) => updates(message as Transport)) as Transport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transport create() => Transport._();
  Transport createEmptyInstance() => create();
  static $pb.PbList<Transport> createRepeated() => $pb.PbList<Transport>();
  @$core.pragma('dart2js:noInline')
  static Transport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transport>(create);
  static Transport? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get fare => $_getIZ(0);
  @$pb.TagNumber(1)
  set fare($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFare() => $_has(0);
  @$pb.TagNumber(1)
  void clearFare() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get trainName => $_getSZ(1);
  @$pb.TagNumber(2)
  set trainName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTrainName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTrainName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get direction => $_getSZ(3);
  @$pb.TagNumber(4)
  set direction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDirection() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirection() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get destination => $_getSZ(4);
  @$pb.TagNumber(5)
  set destination($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDestination() => $_has(4);
  @$pb.TagNumber(5)
  void clearDestination() => clearField(5);
}

class UserItems extends $pb.GeneratedMessage {
  factory UserItems({
    $core.Iterable<$core.String>? item,
  }) {
    final $result = create();
    if (item != null) {
      $result.item.addAll(item);
    }
    return $result;
  }
  UserItems._() : super();
  factory UserItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'item')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserItems clone() => UserItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserItems copyWith(void Function(UserItems) updates) => super.copyWith((message) => updates(message as UserItems)) as UserItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserItems create() => UserItems._();
  UserItems createEmptyInstance() => create();
  static $pb.PbList<UserItems> createRepeated() => $pb.PbList<UserItems>();
  @$core.pragma('dart2js:noInline')
  static UserItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserItems>(create);
  static UserItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get item => $_getList(0);
}

class GetEventRequest extends $pb.GeneratedMessage {
  factory GetEventRequest({
    $9.Uid? uid,
    $9.Guid? id,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetEventRequest._() : super();
  factory GetEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEventRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..aOM<$9.Guid>(2, _omitFieldNames ? '' : 'id', subBuilder: $9.Guid.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEventRequest clone() => GetEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEventRequest copyWith(void Function(GetEventRequest) updates) => super.copyWith((message) => updates(message as GetEventRequest)) as GetEventRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEventRequest create() => GetEventRequest._();
  GetEventRequest createEmptyInstance() => create();
  static $pb.PbList<GetEventRequest> createRepeated() => $pb.PbList<GetEventRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEventRequest>(create);
  static GetEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Uid get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($9.Uid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
  @$pb.TagNumber(1)
  $9.Uid ensureUid() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Guid get id => $_getN(1);
  @$pb.TagNumber(2)
  set id($9.Guid v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
  @$pb.TagNumber(2)
  $9.Guid ensureId() => $_ensure(1);
}

class GetEventResponse extends $pb.GeneratedMessage {
  factory GetEventResponse({
    Event? event,
  }) {
    final $result = create();
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  GetEventResponse._() : super();
  factory GetEventResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEventResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<Event>(1, _omitFieldNames ? '' : 'event', subBuilder: Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEventResponse clone() => GetEventResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEventResponse copyWith(void Function(GetEventResponse) updates) => super.copyWith((message) => updates(message as GetEventResponse)) as GetEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEventResponse create() => GetEventResponse._();
  GetEventResponse createEmptyInstance() => create();
  static $pb.PbList<GetEventResponse> createRepeated() => $pb.PbList<GetEventResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEventResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEventResponse>(create);
  static GetEventResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Event get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(Event v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  Event ensureEvent() => $_ensure(0);
}

class GetEventsRequest extends $pb.GeneratedMessage {
  factory GetEventsRequest({
    $9.Uid? uid,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  GetEventsRequest._() : super();
  factory GetEventsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEventsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEventsRequest clone() => GetEventsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEventsRequest copyWith(void Function(GetEventsRequest) updates) => super.copyWith((message) => updates(message as GetEventsRequest)) as GetEventsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEventsRequest create() => GetEventsRequest._();
  GetEventsRequest createEmptyInstance() => create();
  static $pb.PbList<GetEventsRequest> createRepeated() => $pb.PbList<GetEventsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEventsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEventsRequest>(create);
  static GetEventsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Uid get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($9.Uid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
  @$pb.TagNumber(1)
  $9.Uid ensureUid() => $_ensure(0);
}

class GetEventsResponse extends $pb.GeneratedMessage {
  factory GetEventsResponse({
    $core.Iterable<Event>? events,
  }) {
    final $result = create();
    if (events != null) {
      $result.events.addAll(events);
    }
    return $result;
  }
  GetEventsResponse._() : super();
  factory GetEventsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEventsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..pc<Event>(1, _omitFieldNames ? '' : 'events', $pb.PbFieldType.PM, subBuilder: Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEventsResponse clone() => GetEventsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEventsResponse copyWith(void Function(GetEventsResponse) updates) => super.copyWith((message) => updates(message as GetEventsResponse)) as GetEventsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEventsResponse create() => GetEventsResponse._();
  GetEventsResponse createEmptyInstance() => create();
  static $pb.PbList<GetEventsResponse> createRepeated() => $pb.PbList<GetEventsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEventsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEventsResponse>(create);
  static GetEventsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Event> get events => $_getList(0);
}

class CreateEventRequest extends $pb.GeneratedMessage {
  factory CreateEventRequest({
    $9.Uid? uid,
    $core.String? title,
    $core.String? description,
    $core.Iterable<$core.String>? eventItem,
    TimeTable? timeTable,
    UserItems? userItems,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (eventItem != null) {
      $result.eventItem.addAll(eventItem);
    }
    if (timeTable != null) {
      $result.timeTable = timeTable;
    }
    if (userItems != null) {
      $result.userItems = userItems;
    }
    return $result;
  }
  CreateEventRequest._() : super();
  factory CreateEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateEventRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..pPS(4, _omitFieldNames ? '' : 'eventItem')
    ..aOM<TimeTable>(5, _omitFieldNames ? '' : 'timeTable', subBuilder: TimeTable.create)
    ..aOM<UserItems>(6, _omitFieldNames ? '' : 'userItems', subBuilder: UserItems.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateEventRequest clone() => CreateEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateEventRequest copyWith(void Function(CreateEventRequest) updates) => super.copyWith((message) => updates(message as CreateEventRequest)) as CreateEventRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateEventRequest create() => CreateEventRequest._();
  CreateEventRequest createEmptyInstance() => create();
  static $pb.PbList<CreateEventRequest> createRepeated() => $pb.PbList<CreateEventRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateEventRequest>(create);
  static CreateEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Uid get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($9.Uid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
  @$pb.TagNumber(1)
  $9.Uid ensureUid() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get eventItem => $_getList(3);

  @$pb.TagNumber(5)
  TimeTable get timeTable => $_getN(4);
  @$pb.TagNumber(5)
  set timeTable(TimeTable v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeTable() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeTable() => clearField(5);
  @$pb.TagNumber(5)
  TimeTable ensureTimeTable() => $_ensure(4);

  @$pb.TagNumber(6)
  UserItems get userItems => $_getN(5);
  @$pb.TagNumber(6)
  set userItems(UserItems v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserItems() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserItems() => clearField(6);
  @$pb.TagNumber(6)
  UserItems ensureUserItems() => $_ensure(5);
}

class CreateEventResponse extends $pb.GeneratedMessage {
  factory CreateEventResponse({
    Event? event,
  }) {
    final $result = create();
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  CreateEventResponse._() : super();
  factory CreateEventResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateEventResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateEventResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<Event>(1, _omitFieldNames ? '' : 'event', subBuilder: Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateEventResponse clone() => CreateEventResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateEventResponse copyWith(void Function(CreateEventResponse) updates) => super.copyWith((message) => updates(message as CreateEventResponse)) as CreateEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateEventResponse create() => CreateEventResponse._();
  CreateEventResponse createEmptyInstance() => create();
  static $pb.PbList<CreateEventResponse> createRepeated() => $pb.PbList<CreateEventResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateEventResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateEventResponse>(create);
  static CreateEventResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Event get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(Event v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  Event ensureEvent() => $_ensure(0);
}

class UpdateEventRequest extends $pb.GeneratedMessage {
  factory UpdateEventRequest({
    $9.Uid? uid,
    $9.Guid? id,
    Event? event,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (id != null) {
      $result.id = id;
    }
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  UpdateEventRequest._() : super();
  factory UpdateEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateEventRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..aOM<$9.Guid>(2, _omitFieldNames ? '' : 'id', subBuilder: $9.Guid.create)
    ..aOM<Event>(3, _omitFieldNames ? '' : 'event', subBuilder: Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEventRequest clone() => UpdateEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEventRequest copyWith(void Function(UpdateEventRequest) updates) => super.copyWith((message) => updates(message as UpdateEventRequest)) as UpdateEventRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateEventRequest create() => UpdateEventRequest._();
  UpdateEventRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateEventRequest> createRepeated() => $pb.PbList<UpdateEventRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEventRequest>(create);
  static UpdateEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Uid get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($9.Uid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
  @$pb.TagNumber(1)
  $9.Uid ensureUid() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Guid get id => $_getN(1);
  @$pb.TagNumber(2)
  set id($9.Guid v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
  @$pb.TagNumber(2)
  $9.Guid ensureId() => $_ensure(1);

  @$pb.TagNumber(3)
  Event get event => $_getN(2);
  @$pb.TagNumber(3)
  set event(Event v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearEvent() => clearField(3);
  @$pb.TagNumber(3)
  Event ensureEvent() => $_ensure(2);
}

class UpdateEventResponse extends $pb.GeneratedMessage {
  factory UpdateEventResponse({
    Event? event,
  }) {
    final $result = create();
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  UpdateEventResponse._() : super();
  factory UpdateEventResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEventResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateEventResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<Event>(1, _omitFieldNames ? '' : 'event', subBuilder: Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEventResponse clone() => UpdateEventResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEventResponse copyWith(void Function(UpdateEventResponse) updates) => super.copyWith((message) => updates(message as UpdateEventResponse)) as UpdateEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateEventResponse create() => UpdateEventResponse._();
  UpdateEventResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateEventResponse> createRepeated() => $pb.PbList<UpdateEventResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateEventResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEventResponse>(create);
  static UpdateEventResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Event get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(Event v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  Event ensureEvent() => $_ensure(0);
}

class DeleteEventRequest extends $pb.GeneratedMessage {
  factory DeleteEventRequest({
    $9.Uid? uid,
    $9.Guid? guid,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (guid != null) {
      $result.guid = guid;
    }
    return $result;
  }
  DeleteEventRequest._() : super();
  factory DeleteEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteEventRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..aOM<$9.Guid>(2, _omitFieldNames ? '' : 'guid', subBuilder: $9.Guid.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEventRequest clone() => DeleteEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEventRequest copyWith(void Function(DeleteEventRequest) updates) => super.copyWith((message) => updates(message as DeleteEventRequest)) as DeleteEventRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteEventRequest create() => DeleteEventRequest._();
  DeleteEventRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteEventRequest> createRepeated() => $pb.PbList<DeleteEventRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEventRequest>(create);
  static DeleteEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Uid get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($9.Uid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
  @$pb.TagNumber(1)
  $9.Uid ensureUid() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Guid get guid => $_getN(1);
  @$pb.TagNumber(2)
  set guid($9.Guid v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearGuid() => clearField(2);
  @$pb.TagNumber(2)
  $9.Guid ensureGuid() => $_ensure(1);
}

class DeleteEventResponse extends $pb.GeneratedMessage {
  factory DeleteEventResponse() => create();
  DeleteEventResponse._() : super();
  factory DeleteEventResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEventResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteEventResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEventResponse clone() => DeleteEventResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEventResponse copyWith(void Function(DeleteEventResponse) updates) => super.copyWith((message) => updates(message as DeleteEventResponse)) as DeleteEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteEventResponse create() => DeleteEventResponse._();
  DeleteEventResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteEventResponse> createRepeated() => $pb.PbList<DeleteEventResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteEventResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEventResponse>(create);
  static DeleteEventResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
