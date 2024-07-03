//
//  Generated code. Do not modify.
//  source: proto/todo/v1/todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TodoServiceCreateRequest extends $pb.GeneratedMessage {
  factory TodoServiceCreateRequest({
    $core.String? title,
    $core.String? description,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  TodoServiceCreateRequest._() : super();
  factory TodoServiceCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoServiceCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TodoServiceCreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoServiceCreateRequest clone() => TodoServiceCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoServiceCreateRequest copyWith(void Function(TodoServiceCreateRequest) updates) => super.copyWith((message) => updates(message as TodoServiceCreateRequest)) as TodoServiceCreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TodoServiceCreateRequest create() => TodoServiceCreateRequest._();
  TodoServiceCreateRequest createEmptyInstance() => create();
  static $pb.PbList<TodoServiceCreateRequest> createRepeated() => $pb.PbList<TodoServiceCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static TodoServiceCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoServiceCreateRequest>(create);
  static TodoServiceCreateRequest? _defaultInstance;

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
}

class TodoServiceCreateResponse extends $pb.GeneratedMessage {
  factory TodoServiceCreateResponse({
    $core.int? id,
    $core.String? title,
    $core.String? description,
    $core.bool? done,
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
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  TodoServiceCreateResponse._() : super();
  factory TodoServiceCreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoServiceCreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TodoServiceCreateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoServiceCreateResponse clone() => TodoServiceCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoServiceCreateResponse copyWith(void Function(TodoServiceCreateResponse) updates) => super.copyWith((message) => updates(message as TodoServiceCreateResponse)) as TodoServiceCreateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TodoServiceCreateResponse create() => TodoServiceCreateResponse._();
  TodoServiceCreateResponse createEmptyInstance() => create();
  static $pb.PbList<TodoServiceCreateResponse> createRepeated() => $pb.PbList<TodoServiceCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static TodoServiceCreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoServiceCreateResponse>(create);
  static TodoServiceCreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
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
  $core.bool get done => $_getBF(3);
  @$pb.TagNumber(4)
  set done($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDone() => $_has(3);
  @$pb.TagNumber(4)
  void clearDone() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
