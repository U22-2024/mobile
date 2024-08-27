//
//  Generated code. Do not modify.
//  source: event/v1/event_material.proto
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
import 'event.pb.dart' as $0;

class Place extends $pb.GeneratedMessage {
  factory Place({
    $core.String? name,
    $core.String? address,
    $10.Pos? pos,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (address != null) {
      $result.address = address;
    }
    if (pos != null) {
      $result.pos = pos;
    }
    return $result;
  }
  Place._() : super();
  factory Place.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Place.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Place', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'address')
    ..aOM<$10.Pos>(3, _omitFieldNames ? '' : 'pos', subBuilder: $10.Pos.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Place clone() => Place()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Place copyWith(void Function(Place) updates) => super.copyWith((message) => updates(message as Place)) as Place;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Place create() => Place._();
  Place createEmptyInstance() => create();
  static $pb.PbList<Place> createRepeated() => $pb.PbList<Place>();
  @$core.pragma('dart2js:noInline')
  static Place getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Place>(create);
  static Place? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $10.Pos get pos => $_getN(2);
  @$pb.TagNumber(3)
  set pos($10.Pos v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPos() => $_has(2);
  @$pb.TagNumber(3)
  void clearPos() => clearField(3);
  @$pb.TagNumber(3)
  $10.Pos ensurePos() => $_ensure(2);
}

class EventMaterial extends $pb.GeneratedMessage {
  factory EventMaterial({
    $core.bool? isOut,
    $core.String? remind,
    $10.Pos? fromPos,
    $core.String? destination,
    $10.Pos? destinationPos,
    $10.MoveType? moveType,
    $core.String? option,
    $10.DateTime? startTime,
    $10.DateTime? endTime,
  }) {
    final $result = create();
    if (isOut != null) {
      $result.isOut = isOut;
    }
    if (remind != null) {
      $result.remind = remind;
    }
    if (fromPos != null) {
      $result.fromPos = fromPos;
    }
    if (destination != null) {
      $result.destination = destination;
    }
    if (destinationPos != null) {
      $result.destinationPos = destinationPos;
    }
    if (moveType != null) {
      $result.moveType = moveType;
    }
    if (option != null) {
      $result.option = option;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  EventMaterial._() : super();
  factory EventMaterial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventMaterial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventMaterial', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOut')
    ..aOS(2, _omitFieldNames ? '' : 'remind')
    ..aOM<$10.Pos>(3, _omitFieldNames ? '' : 'fromPos', subBuilder: $10.Pos.create)
    ..aOS(4, _omitFieldNames ? '' : 'destination')
    ..aOM<$10.Pos>(5, _omitFieldNames ? '' : 'destinationPos', subBuilder: $10.Pos.create)
    ..e<$10.MoveType>(6, _omitFieldNames ? '' : 'moveType', $pb.PbFieldType.OE, defaultOrMaker: $10.MoveType.MOVE_TYPE_UNSPECIFIED, valueOf: $10.MoveType.valueOf, enumValues: $10.MoveType.values)
    ..aOS(7, _omitFieldNames ? '' : 'option')
    ..aOM<$10.DateTime>(8, _omitFieldNames ? '' : 'startTime', subBuilder: $10.DateTime.create)
    ..aOM<$10.DateTime>(9, _omitFieldNames ? '' : 'endTime', subBuilder: $10.DateTime.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventMaterial clone() => EventMaterial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventMaterial copyWith(void Function(EventMaterial) updates) => super.copyWith((message) => updates(message as EventMaterial)) as EventMaterial;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventMaterial create() => EventMaterial._();
  EventMaterial createEmptyInstance() => create();
  static $pb.PbList<EventMaterial> createRepeated() => $pb.PbList<EventMaterial>();
  @$core.pragma('dart2js:noInline')
  static EventMaterial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventMaterial>(create);
  static EventMaterial? _defaultInstance;

  /// 外出するかしないか
  /// ただのタスクか外出イベントか
  @$pb.TagNumber(1)
  $core.bool get isOut => $_getBF(0);
  @$pb.TagNumber(1)
  set isOut($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOut() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOut() => clearField(1);

  /// イベントのタイトル
  @$pb.TagNumber(2)
  $core.String get remind => $_getSZ(1);
  @$pb.TagNumber(2)
  set remind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemind() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemind() => clearField(2);

  /// 現在地の緯度経度
  @$pb.TagNumber(3)
  $10.Pos get fromPos => $_getN(2);
  @$pb.TagNumber(3)
  set fromPos($10.Pos v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFromPos() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromPos() => clearField(3);
  @$pb.TagNumber(3)
  $10.Pos ensureFromPos() => $_ensure(2);

  /// 目的地の名前
  @$pb.TagNumber(4)
  $core.String get destination => $_getSZ(3);
  @$pb.TagNumber(4)
  set destination($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDestination() => $_has(3);
  @$pb.TagNumber(4)
  void clearDestination() => clearField(4);

  /// 目的地の緯度経度
  /// PredictPositionsFromTextで取得したものを使う
  @$pb.TagNumber(5)
  $10.Pos get destinationPos => $_getN(4);
  @$pb.TagNumber(5)
  set destinationPos($10.Pos v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDestinationPos() => $_has(4);
  @$pb.TagNumber(5)
  void clearDestinationPos() => clearField(5);
  @$pb.TagNumber(5)
  $10.Pos ensureDestinationPos() => $_ensure(4);

  /// 移動手段
  /// リクエスト時には設定しなくてよい
  @$pb.TagNumber(6)
  $10.MoveType get moveType => $_getN(5);
  @$pb.TagNumber(6)
  set moveType($10.MoveType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMoveType() => $_has(5);
  @$pb.TagNumber(6)
  void clearMoveType() => clearField(6);

  /// 移動手段のオプション
  @$pb.TagNumber(7)
  $core.String get option => $_getSZ(6);
  @$pb.TagNumber(7)
  set option($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOption() => $_has(6);
  @$pb.TagNumber(7)
  void clearOption() => clearField(7);

  /// イベントの開始時間
  @$pb.TagNumber(8)
  $10.DateTime get startTime => $_getN(7);
  @$pb.TagNumber(8)
  set startTime($10.DateTime v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasStartTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartTime() => clearField(8);
  @$pb.TagNumber(8)
  $10.DateTime ensureStartTime() => $_ensure(7);

  /// イベントの終了時間
  @$pb.TagNumber(9)
  $10.DateTime get endTime => $_getN(8);
  @$pb.TagNumber(9)
  set endTime($10.DateTime v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasEndTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearEndTime() => clearField(9);
  @$pb.TagNumber(9)
  $10.DateTime ensureEndTime() => $_ensure(8);
}

class PredictEventMaterialItemRequest extends $pb.GeneratedMessage {
  factory PredictEventMaterialItemRequest({
    $9.Uid? uid,
    EventMaterial? eventMaterial,
    $core.String? text,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (eventMaterial != null) {
      $result.eventMaterial = eventMaterial;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  PredictEventMaterialItemRequest._() : super();
  factory PredictEventMaterialItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictEventMaterialItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictEventMaterialItemRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..aOM<EventMaterial>(2, _omitFieldNames ? '' : 'eventMaterial', subBuilder: EventMaterial.create)
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictEventMaterialItemRequest clone() => PredictEventMaterialItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictEventMaterialItemRequest copyWith(void Function(PredictEventMaterialItemRequest) updates) => super.copyWith((message) => updates(message as PredictEventMaterialItemRequest)) as PredictEventMaterialItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictEventMaterialItemRequest create() => PredictEventMaterialItemRequest._();
  PredictEventMaterialItemRequest createEmptyInstance() => create();
  static $pb.PbList<PredictEventMaterialItemRequest> createRepeated() => $pb.PbList<PredictEventMaterialItemRequest>();
  @$core.pragma('dart2js:noInline')
  static PredictEventMaterialItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictEventMaterialItemRequest>(create);
  static PredictEventMaterialItemRequest? _defaultInstance;

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

  /// 初回は空でリクエスト
  @$pb.TagNumber(2)
  EventMaterial get eventMaterial => $_getN(1);
  @$pb.TagNumber(2)
  set eventMaterial(EventMaterial v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventMaterial() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventMaterial() => clearField(2);
  @$pb.TagNumber(2)
  EventMaterial ensureEventMaterial() => $_ensure(1);

  /// レスポンスをもとにして、テキストをクライアント側で作成する
  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);
}

class PredictEventMaterialItemResponse extends $pb.GeneratedMessage {
  factory PredictEventMaterialItemResponse({
    EventMaterial? eventMaterial,
  }) {
    final $result = create();
    if (eventMaterial != null) {
      $result.eventMaterial = eventMaterial;
    }
    return $result;
  }
  PredictEventMaterialItemResponse._() : super();
  factory PredictEventMaterialItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictEventMaterialItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictEventMaterialItemResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<EventMaterial>(1, _omitFieldNames ? '' : 'eventMaterial', subBuilder: EventMaterial.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictEventMaterialItemResponse clone() => PredictEventMaterialItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictEventMaterialItemResponse copyWith(void Function(PredictEventMaterialItemResponse) updates) => super.copyWith((message) => updates(message as PredictEventMaterialItemResponse)) as PredictEventMaterialItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictEventMaterialItemResponse create() => PredictEventMaterialItemResponse._();
  PredictEventMaterialItemResponse createEmptyInstance() => create();
  static $pb.PbList<PredictEventMaterialItemResponse> createRepeated() => $pb.PbList<PredictEventMaterialItemResponse>();
  @$core.pragma('dart2js:noInline')
  static PredictEventMaterialItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictEventMaterialItemResponse>(create);
  static PredictEventMaterialItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  EventMaterial get eventMaterial => $_getN(0);
  @$pb.TagNumber(1)
  set eventMaterial(EventMaterial v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventMaterial() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventMaterial() => clearField(1);
  @$pb.TagNumber(1)
  EventMaterial ensureEventMaterial() => $_ensure(0);
}

class PredictPositionsFromTextRequest extends $pb.GeneratedMessage {
  factory PredictPositionsFromTextRequest({
    $9.Uid? uid,
    $core.String? text,
    $10.Pos? fromPos,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (text != null) {
      $result.text = text;
    }
    if (fromPos != null) {
      $result.fromPos = fromPos;
    }
    return $result;
  }
  PredictPositionsFromTextRequest._() : super();
  factory PredictPositionsFromTextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictPositionsFromTextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictPositionsFromTextRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOM<$10.Pos>(3, _omitFieldNames ? '' : 'fromPos', subBuilder: $10.Pos.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictPositionsFromTextRequest clone() => PredictPositionsFromTextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictPositionsFromTextRequest copyWith(void Function(PredictPositionsFromTextRequest) updates) => super.copyWith((message) => updates(message as PredictPositionsFromTextRequest)) as PredictPositionsFromTextRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictPositionsFromTextRequest create() => PredictPositionsFromTextRequest._();
  PredictPositionsFromTextRequest createEmptyInstance() => create();
  static $pb.PbList<PredictPositionsFromTextRequest> createRepeated() => $pb.PbList<PredictPositionsFromTextRequest>();
  @$core.pragma('dart2js:noInline')
  static PredictPositionsFromTextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictPositionsFromTextRequest>(create);
  static PredictPositionsFromTextRequest? _defaultInstance;

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

  /// ex.) イオン、スターバックス、東京駅
  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  /// 現在地の緯度経度
  @$pb.TagNumber(3)
  $10.Pos get fromPos => $_getN(2);
  @$pb.TagNumber(3)
  set fromPos($10.Pos v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFromPos() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromPos() => clearField(3);
  @$pb.TagNumber(3)
  $10.Pos ensureFromPos() => $_ensure(2);
}

class PredictPositionsFromTextResponse extends $pb.GeneratedMessage {
  factory PredictPositionsFromTextResponse({
    $core.Iterable<Place>? place,
  }) {
    final $result = create();
    if (place != null) {
      $result.place.addAll(place);
    }
    return $result;
  }
  PredictPositionsFromTextResponse._() : super();
  factory PredictPositionsFromTextResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictPositionsFromTextResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictPositionsFromTextResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..pc<Place>(1, _omitFieldNames ? '' : 'place', $pb.PbFieldType.PM, subBuilder: Place.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictPositionsFromTextResponse clone() => PredictPositionsFromTextResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictPositionsFromTextResponse copyWith(void Function(PredictPositionsFromTextResponse) updates) => super.copyWith((message) => updates(message as PredictPositionsFromTextResponse)) as PredictPositionsFromTextResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictPositionsFromTextResponse create() => PredictPositionsFromTextResponse._();
  PredictPositionsFromTextResponse createEmptyInstance() => create();
  static $pb.PbList<PredictPositionsFromTextResponse> createRepeated() => $pb.PbList<PredictPositionsFromTextResponse>();
  @$core.pragma('dart2js:noInline')
  static PredictPositionsFromTextResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictPositionsFromTextResponse>(create);
  static PredictPositionsFromTextResponse? _defaultInstance;

  /// 候補をいくつか返す
  @$pb.TagNumber(1)
  $core.List<Place> get place => $_getList(0);
}

class PredictTimeTableRequest extends $pb.GeneratedMessage {
  factory PredictTimeTableRequest({
    $9.Uid? uid,
    EventMaterial? eventMaterial,
    $core.bool? isGoing,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (eventMaterial != null) {
      $result.eventMaterial = eventMaterial;
    }
    if (isGoing != null) {
      $result.isGoing = isGoing;
    }
    return $result;
  }
  PredictTimeTableRequest._() : super();
  factory PredictTimeTableRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictTimeTableRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictTimeTableRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..aOM<$9.Uid>(1, _omitFieldNames ? '' : 'uid', subBuilder: $9.Uid.create)
    ..aOM<EventMaterial>(2, _omitFieldNames ? '' : 'eventMaterial', subBuilder: EventMaterial.create)
    ..aOB(3, _omitFieldNames ? '' : 'isGoing')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictTimeTableRequest clone() => PredictTimeTableRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictTimeTableRequest copyWith(void Function(PredictTimeTableRequest) updates) => super.copyWith((message) => updates(message as PredictTimeTableRequest)) as PredictTimeTableRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictTimeTableRequest create() => PredictTimeTableRequest._();
  PredictTimeTableRequest createEmptyInstance() => create();
  static $pb.PbList<PredictTimeTableRequest> createRepeated() => $pb.PbList<PredictTimeTableRequest>();
  @$core.pragma('dart2js:noInline')
  static PredictTimeTableRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictTimeTableRequest>(create);
  static PredictTimeTableRequest? _defaultInstance;

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

  /// 全て埋まった状態でリクエスト
  @$pb.TagNumber(2)
  EventMaterial get eventMaterial => $_getN(1);
  @$pb.TagNumber(2)
  set eventMaterial(EventMaterial v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventMaterial() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventMaterial() => clearField(2);
  @$pb.TagNumber(2)
  EventMaterial ensureEventMaterial() => $_ensure(1);

  /// 行きか帰りか
  @$pb.TagNumber(3)
  $core.bool get isGoing => $_getBF(2);
  @$pb.TagNumber(3)
  set isGoing($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsGoing() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsGoing() => clearField(3);
}

class PredictTimeTableResponse extends $pb.GeneratedMessage {
  factory PredictTimeTableResponse({
    $core.Iterable<$0.TimeTable>? timeTable,
  }) {
    final $result = create();
    if (timeTable != null) {
      $result.timeTable.addAll(timeTable);
    }
    return $result;
  }
  PredictTimeTableResponse._() : super();
  factory PredictTimeTableResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictTimeTableResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictTimeTableResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'event.v1'), createEmptyInstance: create)
    ..pc<$0.TimeTable>(1, _omitFieldNames ? '' : 'timeTable', $pb.PbFieldType.PM, subBuilder: $0.TimeTable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictTimeTableResponse clone() => PredictTimeTableResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictTimeTableResponse copyWith(void Function(PredictTimeTableResponse) updates) => super.copyWith((message) => updates(message as PredictTimeTableResponse)) as PredictTimeTableResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictTimeTableResponse create() => PredictTimeTableResponse._();
  PredictTimeTableResponse createEmptyInstance() => create();
  static $pb.PbList<PredictTimeTableResponse> createRepeated() => $pb.PbList<PredictTimeTableResponse>();
  @$core.pragma('dart2js:noInline')
  static PredictTimeTableResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictTimeTableResponse>(create);
  static PredictTimeTableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.TimeTable> get timeTable => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
