//
//  Generated code. Do not modify.
//  source: remind_template/v1/remindtemplate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RemindTemplate extends $pb.GeneratedMessage {
  factory RemindTemplate({
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
  RemindTemplate._() : super();
  factory RemindTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemindTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemindTemplate', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
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
  RemindTemplate clone() => RemindTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemindTemplate copyWith(void Function(RemindTemplate) updates) => super.copyWith((message) => updates(message as RemindTemplate)) as RemindTemplate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemindTemplate create() => RemindTemplate._();
  RemindTemplate createEmptyInstance() => create();
  static $pb.PbList<RemindTemplate> createRepeated() => $pb.PbList<RemindTemplate>();
  @$core.pragma('dart2js:noInline')
  static RemindTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemindTemplate>(create);
  static RemindTemplate? _defaultInstance;

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

class GetRemindTemplateRequest extends $pb.GeneratedMessage {
  factory GetRemindTemplateRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetRemindTemplateRequest._() : super();
  factory GetRemindTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindTemplateRequest clone() => GetRemindTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindTemplateRequest copyWith(void Function(GetRemindTemplateRequest) updates) => super.copyWith((message) => updates(message as GetRemindTemplateRequest)) as GetRemindTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindTemplateRequest create() => GetRemindTemplateRequest._();
  GetRemindTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<GetRemindTemplateRequest> createRepeated() => $pb.PbList<GetRemindTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRemindTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindTemplateRequest>(create);
  static GetRemindTemplateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRemindTemplateResponse extends $pb.GeneratedMessage {
  factory GetRemindTemplateResponse({
    RemindTemplate? remindTemplate,
  }) {
    final $result = create();
    if (remindTemplate != null) {
      $result.remindTemplate = remindTemplate;
    }
    return $result;
  }
  GetRemindTemplateResponse._() : super();
  factory GetRemindTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..aOM<RemindTemplate>(1, _omitFieldNames ? '' : 'remindTemplate', subBuilder: RemindTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindTemplateResponse clone() => GetRemindTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindTemplateResponse copyWith(void Function(GetRemindTemplateResponse) updates) => super.copyWith((message) => updates(message as GetRemindTemplateResponse)) as GetRemindTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindTemplateResponse create() => GetRemindTemplateResponse._();
  GetRemindTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<GetRemindTemplateResponse> createRepeated() => $pb.PbList<GetRemindTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRemindTemplateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindTemplateResponse>(create);
  static GetRemindTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RemindTemplate get remindTemplate => $_getN(0);
  @$pb.TagNumber(1)
  set remindTemplate(RemindTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemindTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemindTemplate() => clearField(1);
  @$pb.TagNumber(1)
  RemindTemplate ensureRemindTemplate() => $_ensure(0);
}

class GetRemindTemplatesRequest extends $pb.GeneratedMessage {
  factory GetRemindTemplatesRequest({
    $core.String? uid,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  GetRemindTemplatesRequest._() : super();
  factory GetRemindTemplatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindTemplatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindTemplatesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindTemplatesRequest clone() => GetRemindTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindTemplatesRequest copyWith(void Function(GetRemindTemplatesRequest) updates) => super.copyWith((message) => updates(message as GetRemindTemplatesRequest)) as GetRemindTemplatesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindTemplatesRequest create() => GetRemindTemplatesRequest._();
  GetRemindTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<GetRemindTemplatesRequest> createRepeated() => $pb.PbList<GetRemindTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRemindTemplatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindTemplatesRequest>(create);
  static GetRemindTemplatesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class GetRemindTemplatesResponse extends $pb.GeneratedMessage {
  factory GetRemindTemplatesResponse({
    $core.Iterable<RemindTemplate>? remindTemplates,
  }) {
    final $result = create();
    if (remindTemplates != null) {
      $result.remindTemplates.addAll(remindTemplates);
    }
    return $result;
  }
  GetRemindTemplatesResponse._() : super();
  factory GetRemindTemplatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRemindTemplatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRemindTemplatesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..pc<RemindTemplate>(1, _omitFieldNames ? '' : 'remindTemplates', $pb.PbFieldType.PM, subBuilder: RemindTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRemindTemplatesResponse clone() => GetRemindTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRemindTemplatesResponse copyWith(void Function(GetRemindTemplatesResponse) updates) => super.copyWith((message) => updates(message as GetRemindTemplatesResponse)) as GetRemindTemplatesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRemindTemplatesResponse create() => GetRemindTemplatesResponse._();
  GetRemindTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<GetRemindTemplatesResponse> createRepeated() => $pb.PbList<GetRemindTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRemindTemplatesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRemindTemplatesResponse>(create);
  static GetRemindTemplatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RemindTemplate> get remindTemplates => $_getList(0);
}

class CreateRemindTemplateRequest extends $pb.GeneratedMessage {
  factory CreateRemindTemplateRequest({
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
  CreateRemindTemplateRequest._() : super();
  factory CreateRemindTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRemindTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRemindTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
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
  CreateRemindTemplateRequest clone() => CreateRemindTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRemindTemplateRequest copyWith(void Function(CreateRemindTemplateRequest) updates) => super.copyWith((message) => updates(message as CreateRemindTemplateRequest)) as CreateRemindTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRemindTemplateRequest create() => CreateRemindTemplateRequest._();
  CreateRemindTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRemindTemplateRequest> createRepeated() => $pb.PbList<CreateRemindTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRemindTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRemindTemplateRequest>(create);
  static CreateRemindTemplateRequest? _defaultInstance;

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

class CreateRemindTemplateResponse extends $pb.GeneratedMessage {
  factory CreateRemindTemplateResponse({
    RemindTemplate? remindTemplate,
  }) {
    final $result = create();
    if (remindTemplate != null) {
      $result.remindTemplate = remindTemplate;
    }
    return $result;
  }
  CreateRemindTemplateResponse._() : super();
  factory CreateRemindTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRemindTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRemindTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..aOM<RemindTemplate>(1, _omitFieldNames ? '' : 'remindTemplate', subBuilder: RemindTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRemindTemplateResponse clone() => CreateRemindTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRemindTemplateResponse copyWith(void Function(CreateRemindTemplateResponse) updates) => super.copyWith((message) => updates(message as CreateRemindTemplateResponse)) as CreateRemindTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRemindTemplateResponse create() => CreateRemindTemplateResponse._();
  CreateRemindTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRemindTemplateResponse> createRepeated() => $pb.PbList<CreateRemindTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateRemindTemplateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRemindTemplateResponse>(create);
  static CreateRemindTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RemindTemplate get remindTemplate => $_getN(0);
  @$pb.TagNumber(1)
  set remindTemplate(RemindTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemindTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemindTemplate() => clearField(1);
  @$pb.TagNumber(1)
  RemindTemplate ensureRemindTemplate() => $_ensure(0);
}

class UpdateRemindTemplateRequest extends $pb.GeneratedMessage {
  factory UpdateRemindTemplateRequest({
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
  UpdateRemindTemplateRequest._() : super();
  factory UpdateRemindTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRemindTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRemindTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
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
  UpdateRemindTemplateRequest clone() => UpdateRemindTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRemindTemplateRequest copyWith(void Function(UpdateRemindTemplateRequest) updates) => super.copyWith((message) => updates(message as UpdateRemindTemplateRequest)) as UpdateRemindTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRemindTemplateRequest create() => UpdateRemindTemplateRequest._();
  UpdateRemindTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRemindTemplateRequest> createRepeated() => $pb.PbList<UpdateRemindTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRemindTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRemindTemplateRequest>(create);
  static UpdateRemindTemplateRequest? _defaultInstance;

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

class UpdateRemindTemplateResponse extends $pb.GeneratedMessage {
  factory UpdateRemindTemplateResponse({
    RemindTemplate? remindTemplate,
  }) {
    final $result = create();
    if (remindTemplate != null) {
      $result.remindTemplate = remindTemplate;
    }
    return $result;
  }
  UpdateRemindTemplateResponse._() : super();
  factory UpdateRemindTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRemindTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRemindTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..aOM<RemindTemplate>(1, _omitFieldNames ? '' : 'remindTemplate', subBuilder: RemindTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRemindTemplateResponse clone() => UpdateRemindTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRemindTemplateResponse copyWith(void Function(UpdateRemindTemplateResponse) updates) => super.copyWith((message) => updates(message as UpdateRemindTemplateResponse)) as UpdateRemindTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRemindTemplateResponse create() => UpdateRemindTemplateResponse._();
  UpdateRemindTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRemindTemplateResponse> createRepeated() => $pb.PbList<UpdateRemindTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateRemindTemplateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRemindTemplateResponse>(create);
  static UpdateRemindTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RemindTemplate get remindTemplate => $_getN(0);
  @$pb.TagNumber(1)
  set remindTemplate(RemindTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemindTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemindTemplate() => clearField(1);
  @$pb.TagNumber(1)
  RemindTemplate ensureRemindTemplate() => $_ensure(0);
}

class DeleteRemindTemplateRequest extends $pb.GeneratedMessage {
  factory DeleteRemindTemplateRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteRemindTemplateRequest._() : super();
  factory DeleteRemindTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRemindTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRemindTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRemindTemplateRequest clone() => DeleteRemindTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRemindTemplateRequest copyWith(void Function(DeleteRemindTemplateRequest) updates) => super.copyWith((message) => updates(message as DeleteRemindTemplateRequest)) as DeleteRemindTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRemindTemplateRequest create() => DeleteRemindTemplateRequest._();
  DeleteRemindTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRemindTemplateRequest> createRepeated() => $pb.PbList<DeleteRemindTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRemindTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRemindTemplateRequest>(create);
  static DeleteRemindTemplateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteRemindTemplateResponse extends $pb.GeneratedMessage {
  factory DeleteRemindTemplateResponse() => create();
  DeleteRemindTemplateResponse._() : super();
  factory DeleteRemindTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRemindTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRemindTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind_template.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRemindTemplateResponse clone() => DeleteRemindTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRemindTemplateResponse copyWith(void Function(DeleteRemindTemplateResponse) updates) => super.copyWith((message) => updates(message as DeleteRemindTemplateResponse)) as DeleteRemindTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRemindTemplateResponse create() => DeleteRemindTemplateResponse._();
  DeleteRemindTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRemindTemplateResponse> createRepeated() => $pb.PbList<DeleteRemindTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRemindTemplateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRemindTemplateResponse>(create);
  static DeleteRemindTemplateResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
