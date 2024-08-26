//
//  Generated code. Do not modify.
//  source: greet/v1/greet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Greet extends $pb.GeneratedMessage {
  factory Greet({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  Greet._() : super();
  factory Greet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Greet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Greet', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Greet clone() => Greet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Greet copyWith(void Function(Greet) updates) => super.copyWith((message) => updates(message as Greet)) as Greet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Greet create() => Greet._();
  Greet createEmptyInstance() => create();
  static $pb.PbList<Greet> createRepeated() => $pb.PbList<Greet>();
  @$core.pragma('dart2js:noInline')
  static Greet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Greet>(create);
  static Greet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class GetGreetRequest extends $pb.GeneratedMessage {
  factory GetGreetRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetGreetRequest._() : super();
  factory GetGreetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGreetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGreetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGreetRequest clone() => GetGreetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGreetRequest copyWith(void Function(GetGreetRequest) updates) => super.copyWith((message) => updates(message as GetGreetRequest)) as GetGreetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGreetRequest create() => GetGreetRequest._();
  GetGreetRequest createEmptyInstance() => create();
  static $pb.PbList<GetGreetRequest> createRepeated() => $pb.PbList<GetGreetRequest>();
  @$core.pragma('dart2js:noInline')
  static GetGreetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGreetRequest>(create);
  static GetGreetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetGreetResponse extends $pb.GeneratedMessage {
  factory GetGreetResponse({
    Greet? greet,
  }) {
    final $result = create();
    if (greet != null) {
      $result.greet = greet;
    }
    return $result;
  }
  GetGreetResponse._() : super();
  factory GetGreetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGreetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGreetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet.v1'), createEmptyInstance: create)
    ..aOM<Greet>(1, _omitFieldNames ? '' : 'greet', subBuilder: Greet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGreetResponse clone() => GetGreetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGreetResponse copyWith(void Function(GetGreetResponse) updates) => super.copyWith((message) => updates(message as GetGreetResponse)) as GetGreetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGreetResponse create() => GetGreetResponse._();
  GetGreetResponse createEmptyInstance() => create();
  static $pb.PbList<GetGreetResponse> createRepeated() => $pb.PbList<GetGreetResponse>();
  @$core.pragma('dart2js:noInline')
  static GetGreetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGreetResponse>(create);
  static GetGreetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Greet get greet => $_getN(0);
  @$pb.TagNumber(1)
  set greet(Greet v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGreet() => $_has(0);
  @$pb.TagNumber(1)
  void clearGreet() => clearField(1);
  @$pb.TagNumber(1)
  Greet ensureGreet() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
