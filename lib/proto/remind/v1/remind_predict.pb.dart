//
//  Generated code. Do not modify.
//  source: remind/v1/remind_predict.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PredictByTitleRequest extends $pb.GeneratedMessage {
  factory PredictByTitleRequest({
    $core.String? uid,
    $core.String? title,
    $core.String? memo,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (title != null) {
      $result.title = title;
    }
    if (memo != null) {
      $result.memo = memo;
    }
    return $result;
  }
  PredictByTitleRequest._() : super();
  factory PredictByTitleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictByTitleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictByTitleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'memo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictByTitleRequest clone() => PredictByTitleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictByTitleRequest copyWith(void Function(PredictByTitleRequest) updates) => super.copyWith((message) => updates(message as PredictByTitleRequest)) as PredictByTitleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictByTitleRequest create() => PredictByTitleRequest._();
  PredictByTitleRequest createEmptyInstance() => create();
  static $pb.PbList<PredictByTitleRequest> createRepeated() => $pb.PbList<PredictByTitleRequest>();
  @$core.pragma('dart2js:noInline')
  static PredictByTitleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictByTitleRequest>(create);
  static PredictByTitleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get memo => $_getSZ(2);
  @$pb.TagNumber(3)
  set memo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMemo() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemo() => clearField(3);
}

class PredictByTitleResponse extends $pb.GeneratedMessage {
  factory PredictByTitleResponse({
    $core.String? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  PredictByTitleResponse._() : super();
  factory PredictByTitleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictByTitleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictByTitleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'remind.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictByTitleResponse clone() => PredictByTitleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictByTitleResponse copyWith(void Function(PredictByTitleResponse) updates) => super.copyWith((message) => updates(message as PredictByTitleResponse)) as PredictByTitleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictByTitleResponse create() => PredictByTitleResponse._();
  PredictByTitleResponse createEmptyInstance() => create();
  static $pb.PbList<PredictByTitleResponse> createRepeated() => $pb.PbList<PredictByTitleResponse>();
  @$core.pragma('dart2js:noInline')
  static PredictByTitleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictByTitleResponse>(create);
  static PredictByTitleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
