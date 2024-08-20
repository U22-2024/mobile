//
//  Generated code. Do not modify.
//  source: remind/v1/remind.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'remind.pbenum.dart';

class Remind extends $pb.GeneratedMessage {
  factory Remind({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? uid,
    $core.String? groupId,
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
    if (uid != null) {
      $result.uid = uid;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  Remind._() : super();
  factory Remind.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Remind.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Remind', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'uid')
    ..aOS(5, _omitFieldNames ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Remind clone() => Remind()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Remind copyWith(void Function(Remind) updates) => super.copyWith((message) => updates(message as Remind)) as Remind;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Remind create() => Remind._();
  Remind createEmptyInstance() => create();
  static $pb.PbList<Remind> createRepeated() => $pb.PbList<Remind>();
  @$core.pragma('dart2js:noInline')
  static Remind getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Remind>(create);
  static Remind? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get groupId => $_getSZ(4);
  @$pb.TagNumber(5)
  set groupId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupId() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupId() => clearField(5);
}

class GetRemindRequest extends $pb.GeneratedMessage {
  factory GetRemindRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetRemindRequest._() : super();
  factory GetRemindRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindRequest clone() => GetRemindRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindRequest copyWith(void Function(GetRemindRequest) updates) => super.copyWith((message) => updates(message as GetRemindRequest)) as GetRemindRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindRequest create() => GetRemindRequest._();
  GetRemindRequest createEmptyInstance() => create();
  static $pb.PbList<GetRemindRequest> createRepeated() => $pb.PbList<GetRemindRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRemindRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindRequest>(create);
  static GetRemindRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRemindResponse extends $pb.GeneratedMessage {
  factory GetRemindResponse({
    Remind? remind,
  }) {
    final $result = create();
    if (remind != null) {
      $result.remind = remind;
    }
    return $result;
  }
  GetRemindResponse._() : super();
  factory GetRemindResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOM<Remind>(1, _omitFieldNames ? '' : 'remind', subBuilder: Remind.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindResponse clone() => GetRemindResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindResponse copyWith(void Function(GetRemindResponse) updates) => super.copyWith((message) => updates(message as GetRemindResponse)) as GetRemindResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindResponse create() => GetRemindResponse._();
  GetRemindResponse createEmptyInstance() => create();
  static $pb.PbList<GetRemindResponse> createRepeated() => $pb.PbList<GetRemindResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRemindResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindResponse>(create);
  static GetRemindResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Remind get remind => $_getN(0);
  @$pb.TagNumber(1)
  set remind(Remind v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemind() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemind() => clearField(1);
  @$pb.TagNumber(1)
  Remind ensureRemind() => $_ensure(0);
}

class GetRemindsRequest extends $pb.GeneratedMessage {
  factory GetRemindsRequest({
    $core.String? uid,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  GetRemindsRequest._() : super();
  factory GetRemindsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindsRequest clone() => GetRemindsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindsRequest copyWith(void Function(GetRemindsRequest) updates) => super.copyWith((message) => updates(message as GetRemindsRequest)) as GetRemindsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindsRequest create() => GetRemindsRequest._();
  GetRemindsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRemindsRequest> createRepeated() => $pb.PbList<GetRemindsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRemindsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindsRequest>(create);
  static GetRemindsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class GetRemindsResponse extends $pb.GeneratedMessage {
  factory GetRemindsResponse({
    $core.Iterable<Remind>? reminds,
  }) {
    final $result = create();
    if (reminds != null) {
      $result.reminds.addAll(reminds);
    }
    return $result;
  }
  GetRemindsResponse._() : super();
  factory GetRemindsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..pc<Remind>(1, _omitFieldNames ? '' : 'reminds', $pb.PbFieldType.PM, subBuilder: Remind.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindsResponse clone() => GetRemindsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindsResponse copyWith(void Function(GetRemindsResponse) updates) => super.copyWith((message) => updates(message as GetRemindsResponse)) as GetRemindsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindsResponse create() => GetRemindsResponse._();
  GetRemindsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRemindsResponse> createRepeated() => $pb.PbList<GetRemindsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRemindsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindsResponse>(create);
  static GetRemindsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Remind> get reminds => $_getList(0);
}

class CreateRemindRequest extends $pb.GeneratedMessage {
  factory CreateRemindRequest({
    $core.String? title,
    $core.String? description,
    $core.String? uid,
    $core.String? groupId,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  CreateRemindRequest._() : super();
  factory CreateRemindRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRemindRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRemindRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'uid')
    ..aOS(4, _omitFieldNames ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRemindRequest clone() => CreateRemindRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRemindRequest copyWith(void Function(CreateRemindRequest) updates) => super.copyWith((message) => updates(message as CreateRemindRequest)) as CreateRemindRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRemindRequest create() => CreateRemindRequest._();
  CreateRemindRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRemindRequest> createRepeated() => $pb.PbList<CreateRemindRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRemindRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRemindRequest>(create);
  static CreateRemindRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uid => $_getSZ(2);
  @$pb.TagNumber(3)
  set uid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get groupId => $_getSZ(3);
  @$pb.TagNumber(4)
  set groupId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroupId() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupId() => clearField(4);
}

class CreateRemindResponse extends $pb.GeneratedMessage {
  factory CreateRemindResponse({
    Remind? remind,
  }) {
    final $result = create();
    if (remind != null) {
      $result.remind = remind;
    }
    return $result;
  }
  CreateRemindResponse._() : super();
  factory CreateRemindResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRemindResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRemindResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOM<Remind>(1, _omitFieldNames ? '' : 'remind', subBuilder: Remind.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRemindResponse clone() => CreateRemindResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRemindResponse copyWith(void Function(CreateRemindResponse) updates) => super.copyWith((message) => updates(message as CreateRemindResponse)) as CreateRemindResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRemindResponse create() => CreateRemindResponse._();
  CreateRemindResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRemindResponse> createRepeated() => $pb.PbList<CreateRemindResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateRemindResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRemindResponse>(create);
  static CreateRemindResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Remind get remind => $_getN(0);
  @$pb.TagNumber(1)
  set remind(Remind v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemind() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemind() => clearField(1);
  @$pb.TagNumber(1)
  Remind ensureRemind() => $_ensure(0);
}

class UpdateRemindRequest extends $pb.GeneratedMessage {
  factory UpdateRemindRequest({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? uid,
    $core.String? groupId,
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
    if (uid != null) {
      $result.uid = uid;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  UpdateRemindRequest._() : super();
  factory UpdateRemindRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRemindRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRemindRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'uid')
    ..aOS(5, _omitFieldNames ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRemindRequest clone() => UpdateRemindRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRemindRequest copyWith(void Function(UpdateRemindRequest) updates) => super.copyWith((message) => updates(message as UpdateRemindRequest)) as UpdateRemindRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRemindRequest create() => UpdateRemindRequest._();
  UpdateRemindRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRemindRequest> createRepeated() => $pb.PbList<UpdateRemindRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRemindRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRemindRequest>(create);
  static UpdateRemindRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get groupId => $_getSZ(4);
  @$pb.TagNumber(5)
  set groupId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupId() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupId() => clearField(5);
}

class UpdateRemindResponse extends $pb.GeneratedMessage {
  factory UpdateRemindResponse({
    Remind? remind,
  }) {
    final $result = create();
    if (remind != null) {
      $result.remind = remind;
    }
    return $result;
  }
  UpdateRemindResponse._() : super();
  factory UpdateRemindResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRemindResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRemindResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOM<Remind>(1, _omitFieldNames ? '' : 'remind', subBuilder: Remind.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRemindResponse clone() => UpdateRemindResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRemindResponse copyWith(void Function(UpdateRemindResponse) updates) => super.copyWith((message) => updates(message as UpdateRemindResponse)) as UpdateRemindResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRemindResponse create() => UpdateRemindResponse._();
  UpdateRemindResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRemindResponse> createRepeated() => $pb.PbList<UpdateRemindResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateRemindResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRemindResponse>(create);
  static UpdateRemindResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Remind get remind => $_getN(0);
  @$pb.TagNumber(1)
  set remind(Remind v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemind() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemind() => clearField(1);
  @$pb.TagNumber(1)
  Remind ensureRemind() => $_ensure(0);
}

class DeleteRemindRequest extends $pb.GeneratedMessage {
  factory DeleteRemindRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteRemindRequest._() : super();
  factory DeleteRemindRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRemindRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRemindRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRemindRequest clone() => DeleteRemindRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRemindRequest copyWith(void Function(DeleteRemindRequest) updates) => super.copyWith((message) => updates(message as DeleteRemindRequest)) as DeleteRemindRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRemindRequest create() => DeleteRemindRequest._();
  DeleteRemindRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRemindRequest> createRepeated() => $pb.PbList<DeleteRemindRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRemindRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRemindRequest>(create);
  static DeleteRemindRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteRemindResponse extends $pb.GeneratedMessage {
  factory DeleteRemindResponse() => create();
  DeleteRemindResponse._() : super();
  factory DeleteRemindResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRemindResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRemindResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRemindResponse clone() => DeleteRemindResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRemindResponse copyWith(void Function(DeleteRemindResponse) updates) => super.copyWith((message) => updates(message as DeleteRemindResponse)) as DeleteRemindResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRemindResponse create() => DeleteRemindResponse._();
  DeleteRemindResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRemindResponse> createRepeated() => $pb.PbList<DeleteRemindResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRemindResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRemindResponse>(create);
  static DeleteRemindResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
