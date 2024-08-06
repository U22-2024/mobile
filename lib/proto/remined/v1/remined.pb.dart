//
//  Generated code. Do not modify.
//  source: remined/v1/remined.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Remined extends $pb.GeneratedMessage {
  factory Remined({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? uid,
    $core.String? createdAt,
    $core.String? updatedAt,
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
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Remined._() : super();
  factory Remined.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Remined.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Remined', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'uid')
    ..aOS(5, _omitFieldNames ? '' : 'createdAt')
    ..aOS(6, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Remined clone() => Remined()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Remined copyWith(void Function(Remined) updates) => super.copyWith((message) => updates(message as Remined)) as Remined;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Remined create() => Remined._();
  Remined createEmptyInstance() => create();
  static $pb.PbList<Remined> createRepeated() => $pb.PbList<Remined>();
  @$core.pragma('dart2js:noInline')
  static Remined getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Remined>(create);
  static Remined? _defaultInstance;

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
  $core.String get createdAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set createdAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get updatedAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set updatedAt($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
}

class GetReminedRequest extends $pb.GeneratedMessage {
  factory GetReminedRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetReminedRequest._() : super();
  factory GetReminedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReminedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReminedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReminedRequest clone() => GetReminedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReminedRequest copyWith(void Function(GetReminedRequest) updates) => super.copyWith((message) => updates(message as GetReminedRequest)) as GetReminedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReminedRequest create() => GetReminedRequest._();
  GetReminedRequest createEmptyInstance() => create();
  static $pb.PbList<GetReminedRequest> createRepeated() => $pb.PbList<GetReminedRequest>();
  @$core.pragma('dart2js:noInline')
  static GetReminedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReminedRequest>(create);
  static GetReminedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetReminedResponse extends $pb.GeneratedMessage {
  factory GetReminedResponse({
    Remined? remined,
  }) {
    final $result = create();
    if (remined != null) {
      $result.remined = remined;
    }
    return $result;
  }
  GetReminedResponse._() : super();
  factory GetReminedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReminedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReminedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOM<Remined>(1, _omitFieldNames ? '' : 'remined', subBuilder: Remined.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReminedResponse clone() => GetReminedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReminedResponse copyWith(void Function(GetReminedResponse) updates) => super.copyWith((message) => updates(message as GetReminedResponse)) as GetReminedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReminedResponse create() => GetReminedResponse._();
  GetReminedResponse createEmptyInstance() => create();
  static $pb.PbList<GetReminedResponse> createRepeated() => $pb.PbList<GetReminedResponse>();
  @$core.pragma('dart2js:noInline')
  static GetReminedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReminedResponse>(create);
  static GetReminedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Remined get remined => $_getN(0);
  @$pb.TagNumber(1)
  set remined(Remined v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemined() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemined() => clearField(1);
  @$pb.TagNumber(1)
  Remined ensureRemined() => $_ensure(0);
}

class GetReminedsRequest extends $pb.GeneratedMessage {
  factory GetReminedsRequest({
    $core.String? uid,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  GetReminedsRequest._() : super();
  factory GetReminedsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReminedsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReminedsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReminedsRequest clone() => GetReminedsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReminedsRequest copyWith(void Function(GetReminedsRequest) updates) => super.copyWith((message) => updates(message as GetReminedsRequest)) as GetReminedsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReminedsRequest create() => GetReminedsRequest._();
  GetReminedsRequest createEmptyInstance() => create();
  static $pb.PbList<GetReminedsRequest> createRepeated() => $pb.PbList<GetReminedsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetReminedsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReminedsRequest>(create);
  static GetReminedsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class GetReminedsResponse extends $pb.GeneratedMessage {
  factory GetReminedsResponse({
    $core.Iterable<Remined>? remineds,
  }) {
    final $result = create();
    if (remineds != null) {
      $result.remineds.addAll(remineds);
    }
    return $result;
  }
  GetReminedsResponse._() : super();
  factory GetReminedsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReminedsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReminedsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..pc<Remined>(1, _omitFieldNames ? '' : 'remineds', $pb.PbFieldType.PM, subBuilder: Remined.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReminedsResponse clone() => GetReminedsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReminedsResponse copyWith(void Function(GetReminedsResponse) updates) => super.copyWith((message) => updates(message as GetReminedsResponse)) as GetReminedsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReminedsResponse create() => GetReminedsResponse._();
  GetReminedsResponse createEmptyInstance() => create();
  static $pb.PbList<GetReminedsResponse> createRepeated() => $pb.PbList<GetReminedsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetReminedsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReminedsResponse>(create);
  static GetReminedsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Remined> get remineds => $_getList(0);
}

class CreateReminedRequest extends $pb.GeneratedMessage {
  factory CreateReminedRequest({
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
  CreateReminedRequest._() : super();
  factory CreateReminedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReminedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateReminedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReminedRequest clone() => CreateReminedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReminedRequest copyWith(void Function(CreateReminedRequest) updates) => super.copyWith((message) => updates(message as CreateReminedRequest)) as CreateReminedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateReminedRequest create() => CreateReminedRequest._();
  CreateReminedRequest createEmptyInstance() => create();
  static $pb.PbList<CreateReminedRequest> createRepeated() => $pb.PbList<CreateReminedRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateReminedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReminedRequest>(create);
  static CreateReminedRequest? _defaultInstance;

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

class CreateReminedResponse extends $pb.GeneratedMessage {
  factory CreateReminedResponse({
    Remined? remined,
  }) {
    final $result = create();
    if (remined != null) {
      $result.remined = remined;
    }
    return $result;
  }
  CreateReminedResponse._() : super();
  factory CreateReminedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReminedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateReminedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOM<Remined>(1, _omitFieldNames ? '' : 'remined', subBuilder: Remined.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReminedResponse clone() => CreateReminedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReminedResponse copyWith(void Function(CreateReminedResponse) updates) => super.copyWith((message) => updates(message as CreateReminedResponse)) as CreateReminedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateReminedResponse create() => CreateReminedResponse._();
  CreateReminedResponse createEmptyInstance() => create();
  static $pb.PbList<CreateReminedResponse> createRepeated() => $pb.PbList<CreateReminedResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateReminedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReminedResponse>(create);
  static CreateReminedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Remined get remined => $_getN(0);
  @$pb.TagNumber(1)
  set remined(Remined v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemined() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemined() => clearField(1);
  @$pb.TagNumber(1)
  Remined ensureRemined() => $_ensure(0);
}

class UpdateReminedRequest extends $pb.GeneratedMessage {
  factory UpdateReminedRequest({
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
  UpdateReminedRequest._() : super();
  factory UpdateReminedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReminedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReminedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReminedRequest clone() => UpdateReminedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReminedRequest copyWith(void Function(UpdateReminedRequest) updates) => super.copyWith((message) => updates(message as UpdateReminedRequest)) as UpdateReminedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReminedRequest create() => UpdateReminedRequest._();
  UpdateReminedRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateReminedRequest> createRepeated() => $pb.PbList<UpdateReminedRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateReminedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReminedRequest>(create);
  static UpdateReminedRequest? _defaultInstance;

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

class UpdateReminedResponse extends $pb.GeneratedMessage {
  factory UpdateReminedResponse({
    Remined? remined,
  }) {
    final $result = create();
    if (remined != null) {
      $result.remined = remined;
    }
    return $result;
  }
  UpdateReminedResponse._() : super();
  factory UpdateReminedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReminedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReminedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOM<Remined>(1, _omitFieldNames ? '' : 'remined', subBuilder: Remined.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReminedResponse clone() => UpdateReminedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReminedResponse copyWith(void Function(UpdateReminedResponse) updates) => super.copyWith((message) => updates(message as UpdateReminedResponse)) as UpdateReminedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReminedResponse create() => UpdateReminedResponse._();
  UpdateReminedResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateReminedResponse> createRepeated() => $pb.PbList<UpdateReminedResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateReminedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReminedResponse>(create);
  static UpdateReminedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Remined get remined => $_getN(0);
  @$pb.TagNumber(1)
  set remined(Remined v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemined() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemined() => clearField(1);
  @$pb.TagNumber(1)
  Remined ensureRemined() => $_ensure(0);
}

class DeleteReminedRequest extends $pb.GeneratedMessage {
  factory DeleteReminedRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteReminedRequest._() : super();
  factory DeleteReminedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReminedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReminedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReminedRequest clone() => DeleteReminedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReminedRequest copyWith(void Function(DeleteReminedRequest) updates) => super.copyWith((message) => updates(message as DeleteReminedRequest)) as DeleteReminedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReminedRequest create() => DeleteReminedRequest._();
  DeleteReminedRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteReminedRequest> createRepeated() => $pb.PbList<DeleteReminedRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteReminedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReminedRequest>(create);
  static DeleteReminedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteReminedResponse extends $pb.GeneratedMessage {
  factory DeleteReminedResponse({
    Remined? remined,
  }) {
    final $result = create();
    if (remined != null) {
      $result.remined = remined;
    }
    return $result;
  }
  DeleteReminedResponse._() : super();
  factory DeleteReminedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReminedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReminedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remined.v1'), createEmptyInstance: create)
    ..aOM<Remined>(1, _omitFieldNames ? '' : 'remined', subBuilder: Remined.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReminedResponse clone() => DeleteReminedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReminedResponse copyWith(void Function(DeleteReminedResponse) updates) => super.copyWith((message) => updates(message as DeleteReminedResponse)) as DeleteReminedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReminedResponse create() => DeleteReminedResponse._();
  DeleteReminedResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteReminedResponse> createRepeated() => $pb.PbList<DeleteReminedResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteReminedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReminedResponse>(create);
  static DeleteReminedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Remined get remined => $_getN(0);
  @$pb.TagNumber(1)
  set remined(Remined v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemined() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemined() => clearField(1);
  @$pb.TagNumber(1)
  Remined ensureRemined() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
