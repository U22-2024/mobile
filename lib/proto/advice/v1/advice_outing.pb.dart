//
//  Generated code. Do not modify.
//  source: advice/v1/advice_outing.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetAdviceRequest extends $pb.GeneratedMessage {
  factory GetAdviceRequest({
    Location? pos,
  }) {
    final $result = create();
    if (pos != null) {
      $result.pos = pos;
    }
    return $result;
  }
  GetAdviceRequest._() : super();
  factory GetAdviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAdviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAdviceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'advice.v1'), createEmptyInstance: create)
    ..aOM<Location>(1, _omitFieldNames ? '' : 'pos', subBuilder: Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAdviceRequest clone() => GetAdviceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAdviceRequest copyWith(void Function(GetAdviceRequest) updates) => super.copyWith((message) => updates(message as GetAdviceRequest)) as GetAdviceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAdviceRequest create() => GetAdviceRequest._();
  GetAdviceRequest createEmptyInstance() => create();
  static $pb.PbList<GetAdviceRequest> createRepeated() => $pb.PbList<GetAdviceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAdviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAdviceRequest>(create);
  static GetAdviceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Location get pos => $_getN(0);
  @$pb.TagNumber(1)
  set pos(Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPos() => $_has(0);
  @$pb.TagNumber(1)
  void clearPos() => clearField(1);
  @$pb.TagNumber(1)
  Location ensurePos() => $_ensure(0);
}

class GetAdviceResponse extends $pb.GeneratedMessage {
  factory GetAdviceResponse({
    $core.double? maxRainfall,
    $core.bool? isRequireUmbrella,
  }) {
    final $result = create();
    if (maxRainfall != null) {
      $result.maxRainfall = maxRainfall;
    }
    if (isRequireUmbrella != null) {
      $result.isRequireUmbrella = isRequireUmbrella;
    }
    return $result;
  }
  GetAdviceResponse._() : super();
  factory GetAdviceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAdviceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAdviceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'advice.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'maxRainfall', $pb.PbFieldType.OD)
    ..aOB(2, _omitFieldNames ? '' : 'isRequireUmbrella')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAdviceResponse clone() => GetAdviceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAdviceResponse copyWith(void Function(GetAdviceResponse) updates) => super.copyWith((message) => updates(message as GetAdviceResponse)) as GetAdviceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAdviceResponse create() => GetAdviceResponse._();
  GetAdviceResponse createEmptyInstance() => create();
  static $pb.PbList<GetAdviceResponse> createRepeated() => $pb.PbList<GetAdviceResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAdviceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAdviceResponse>(create);
  static GetAdviceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get maxRainfall => $_getN(0);
  @$pb.TagNumber(1)
  set maxRainfall($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxRainfall() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxRainfall() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isRequireUmbrella => $_getBF(1);
  @$pb.TagNumber(2)
  set isRequireUmbrella($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsRequireUmbrella() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsRequireUmbrella() => clearField(2);
}

class Location extends $pb.GeneratedMessage {
  factory Location({
    $core.double? latitude,
    $core.double? longitude,
  }) {
    final $result = create();
    if (latitude != null) {
      $result.latitude = latitude;
    }
    if (longitude != null) {
      $result.longitude = longitude;
    }
    return $result;
  }
  Location._() : super();
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Location', package: const $pb.PackageName(_omitMessageNames ? '' : 'advice.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
