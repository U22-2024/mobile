//
//  Generated code. Do not modify.
//  source: remind/v1/remind_group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RemindGroup extends $pb.GeneratedMessage {
  factory RemindGroup({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? uid,
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
    return $result;
  }
  RemindGroup._() : super();
  factory RemindGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemindGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemindGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemindGroup clone() => RemindGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemindGroup copyWith(void Function(RemindGroup) updates) => super.copyWith((message) => updates(message as RemindGroup)) as RemindGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemindGroup create() => RemindGroup._();
  RemindGroup createEmptyInstance() => create();
  static $pb.PbList<RemindGroup> createRepeated() => $pb.PbList<RemindGroup>();
  @$core.pragma('dart2js:noInline')
  static RemindGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemindGroup>(create);
  static RemindGroup? _defaultInstance;

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
}

class GetRemindGroupRequest extends $pb.GeneratedMessage {
  factory GetRemindGroupRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetRemindGroupRequest._() : super();
  factory GetRemindGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindGroupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindGroupRequest clone() => GetRemindGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindGroupRequest copyWith(void Function(GetRemindGroupRequest) updates) => super.copyWith((message) => updates(message as GetRemindGroupRequest)) as GetRemindGroupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindGroupRequest create() => GetRemindGroupRequest._();
  GetRemindGroupRequest createEmptyInstance() => create();
  static $pb.PbList<GetRemindGroupRequest> createRepeated() => $pb.PbList<GetRemindGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRemindGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindGroupRequest>(create);
  static GetRemindGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRemindGroupResponse extends $pb.GeneratedMessage {
  factory GetRemindGroupResponse({
    RemindGroup? remindGroup,
  }) {
    final $result = create();
    if (remindGroup != null) {
      $result.remindGroup = remindGroup;
    }
    return $result;
  }
  GetRemindGroupResponse._() : super();
  factory GetRemindGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindGroupResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOM<RemindGroup>(1, _omitFieldNames ? '' : 'remindGroup', subBuilder: RemindGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindGroupResponse clone() => GetRemindGroupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindGroupResponse copyWith(void Function(GetRemindGroupResponse) updates) => super.copyWith((message) => updates(message as GetRemindGroupResponse)) as GetRemindGroupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindGroupResponse create() => GetRemindGroupResponse._();
  GetRemindGroupResponse createEmptyInstance() => create();
  static $pb.PbList<GetRemindGroupResponse> createRepeated() => $pb.PbList<GetRemindGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRemindGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindGroupResponse>(create);
  static GetRemindGroupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RemindGroup get remindGroup => $_getN(0);
  @$pb.TagNumber(1)
  set remindGroup(RemindGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemindGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemindGroup() => clearField(1);
  @$pb.TagNumber(1)
  RemindGroup ensureRemindGroup() => $_ensure(0);
}

class GetRemindGroupsRequest extends $pb.GeneratedMessage {
  factory GetRemindGroupsRequest({
    $core.String? uid,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  GetRemindGroupsRequest._() : super();
  factory GetRemindGroupsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindGroupsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindGroupsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindGroupsRequest clone() => GetRemindGroupsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindGroupsRequest copyWith(void Function(GetRemindGroupsRequest) updates) => super.copyWith((message) => updates(message as GetRemindGroupsRequest)) as GetRemindGroupsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindGroupsRequest create() => GetRemindGroupsRequest._();
  GetRemindGroupsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRemindGroupsRequest> createRepeated() => $pb.PbList<GetRemindGroupsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRemindGroupsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindGroupsRequest>(create);
  static GetRemindGroupsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class GetRemindGroupsResponse extends $pb.GeneratedMessage {
  factory GetRemindGroupsResponse({
    $core.Iterable<RemindGroup>? remindGroups,
  }) {
    final $result = create();
    if (remindGroups != null) {
      $result.remindGroups.addAll(remindGroups);
    }
    return $result;
  }
  GetRemindGroupsResponse._() : super();
  factory GetRemindGroupsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindGroupsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindGroupsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..pc<RemindGroup>(1, _omitFieldNames ? '' : 'remindGroups', $pb.PbFieldType.PM, subBuilder: RemindGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindGroupsResponse clone() => GetRemindGroupsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindGroupsResponse copyWith(void Function(GetRemindGroupsResponse) updates) => super.copyWith((message) => updates(message as GetRemindGroupsResponse)) as GetRemindGroupsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindGroupsResponse create() => GetRemindGroupsResponse._();
  GetRemindGroupsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRemindGroupsResponse> createRepeated() => $pb.PbList<GetRemindGroupsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRemindGroupsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindGroupsResponse>(create);
  static GetRemindGroupsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RemindGroup> get remindGroups => $_getList(0);
}

class CreateRemindGroupRequest extends $pb.GeneratedMessage {
  factory CreateRemindGroupRequest({
    $core.String? title,
    $core.String? description,
    $core.String? uid,
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
    return $result;
  }
  CreateRemindGroupRequest._() : super();
  factory CreateRemindGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRemindGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRemindGroupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRemindGroupRequest clone() => CreateRemindGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRemindGroupRequest copyWith(void Function(CreateRemindGroupRequest) updates) => super.copyWith((message) => updates(message as CreateRemindGroupRequest)) as CreateRemindGroupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRemindGroupRequest create() => CreateRemindGroupRequest._();
  CreateRemindGroupRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRemindGroupRequest> createRepeated() => $pb.PbList<CreateRemindGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRemindGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRemindGroupRequest>(create);
  static CreateRemindGroupRequest? _defaultInstance;

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
}

class CreateRemindGroupResponse extends $pb.GeneratedMessage {
  factory CreateRemindGroupResponse({
    RemindGroup? remindGroup,
  }) {
    final $result = create();
    if (remindGroup != null) {
      $result.remindGroup = remindGroup;
    }
    return $result;
  }
  CreateRemindGroupResponse._() : super();
  factory CreateRemindGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRemindGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRemindGroupResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOM<RemindGroup>(1, _omitFieldNames ? '' : 'remindGroup', subBuilder: RemindGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRemindGroupResponse clone() => CreateRemindGroupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRemindGroupResponse copyWith(void Function(CreateRemindGroupResponse) updates) => super.copyWith((message) => updates(message as CreateRemindGroupResponse)) as CreateRemindGroupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRemindGroupResponse create() => CreateRemindGroupResponse._();
  CreateRemindGroupResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRemindGroupResponse> createRepeated() => $pb.PbList<CreateRemindGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateRemindGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRemindGroupResponse>(create);
  static CreateRemindGroupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RemindGroup get remindGroup => $_getN(0);
  @$pb.TagNumber(1)
  set remindGroup(RemindGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemindGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemindGroup() => clearField(1);
  @$pb.TagNumber(1)
  RemindGroup ensureRemindGroup() => $_ensure(0);
}

class UpdateRemindGroupRequest extends $pb.GeneratedMessage {
  factory UpdateRemindGroupRequest({
    $core.String? id,
    $core.String? title,
    $core.String? description,
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
    return $result;
  }
  UpdateRemindGroupRequest._() : super();
  factory UpdateRemindGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRemindGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRemindGroupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRemindGroupRequest clone() => UpdateRemindGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRemindGroupRequest copyWith(void Function(UpdateRemindGroupRequest) updates) => super.copyWith((message) => updates(message as UpdateRemindGroupRequest)) as UpdateRemindGroupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRemindGroupRequest create() => UpdateRemindGroupRequest._();
  UpdateRemindGroupRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRemindGroupRequest> createRepeated() => $pb.PbList<UpdateRemindGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRemindGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRemindGroupRequest>(create);
  static UpdateRemindGroupRequest? _defaultInstance;

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
}

class UpdateRemindGroupResponse extends $pb.GeneratedMessage {
  factory UpdateRemindGroupResponse({
    RemindGroup? remindGroup,
  }) {
    final $result = create();
    if (remindGroup != null) {
      $result.remindGroup = remindGroup;
    }
    return $result;
  }
  UpdateRemindGroupResponse._() : super();
  factory UpdateRemindGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRemindGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRemindGroupResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOM<RemindGroup>(1, _omitFieldNames ? '' : 'remindGroup', subBuilder: RemindGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRemindGroupResponse clone() => UpdateRemindGroupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRemindGroupResponse copyWith(void Function(UpdateRemindGroupResponse) updates) => super.copyWith((message) => updates(message as UpdateRemindGroupResponse)) as UpdateRemindGroupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRemindGroupResponse create() => UpdateRemindGroupResponse._();
  UpdateRemindGroupResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRemindGroupResponse> createRepeated() => $pb.PbList<UpdateRemindGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateRemindGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRemindGroupResponse>(create);
  static UpdateRemindGroupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RemindGroup get remindGroup => $_getN(0);
  @$pb.TagNumber(1)
  set remindGroup(RemindGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemindGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemindGroup() => clearField(1);
  @$pb.TagNumber(1)
  RemindGroup ensureRemindGroup() => $_ensure(0);
}

class DeleteRemindGroupRequest extends $pb.GeneratedMessage {
  factory DeleteRemindGroupRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteRemindGroupRequest._() : super();
  factory DeleteRemindGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRemindGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRemindGroupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRemindGroupRequest clone() => DeleteRemindGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRemindGroupRequest copyWith(void Function(DeleteRemindGroupRequest) updates) => super.copyWith((message) => updates(message as DeleteRemindGroupRequest)) as DeleteRemindGroupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRemindGroupRequest create() => DeleteRemindGroupRequest._();
  DeleteRemindGroupRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRemindGroupRequest> createRepeated() => $pb.PbList<DeleteRemindGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRemindGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRemindGroupRequest>(create);
  static DeleteRemindGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteRemindGroupResponse extends $pb.GeneratedMessage {
  factory DeleteRemindGroupResponse() => create();
  DeleteRemindGroupResponse._() : super();
  factory DeleteRemindGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRemindGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRemindGroupResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRemindGroupResponse clone() => DeleteRemindGroupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRemindGroupResponse copyWith(void Function(DeleteRemindGroupResponse) updates) => super.copyWith((message) => updates(message as DeleteRemindGroupResponse)) as DeleteRemindGroupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRemindGroupResponse create() => DeleteRemindGroupResponse._();
  DeleteRemindGroupResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRemindGroupResponse> createRepeated() => $pb.PbList<DeleteRemindGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRemindGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRemindGroupResponse>(create);
  static DeleteRemindGroupResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
