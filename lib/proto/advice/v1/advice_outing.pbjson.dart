//
//  Generated code. Do not modify.
//  source: advice/v1/advice_outing.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getAdviceRequestDescriptor instead')
const GetAdviceRequest$json = {
  '1': 'GetAdviceRequest',
  '2': [
    {'1': 'pos', '3': 1, '4': 1, '5': 11, '6': '.advice.v1.Location', '10': 'pos'},
  ],
};

/// Descriptor for `GetAdviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAdviceRequestDescriptor = $convert.base64Decode(
    'ChBHZXRBZHZpY2VSZXF1ZXN0EiUKA3BvcxgBIAEoCzITLmFkdmljZS52MS5Mb2NhdGlvblIDcG'
    '9z');

@$core.Deprecated('Use getAdviceResponseDescriptor instead')
const GetAdviceResponse$json = {
  '1': 'GetAdviceResponse',
  '2': [
    {'1': 'max_rainfall', '3': 1, '4': 1, '5': 1, '10': 'maxRainfall'},
    {'1': 'is_require_umbrella', '3': 2, '4': 1, '5': 8, '10': 'isRequireUmbrella'},
  ],
};

/// Descriptor for `GetAdviceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAdviceResponseDescriptor = $convert.base64Decode(
    'ChFHZXRBZHZpY2VSZXNwb25zZRIhCgxtYXhfcmFpbmZhbGwYASABKAFSC21heFJhaW5mYWxsEi'
    '4KE2lzX3JlcXVpcmVfdW1icmVsbGEYAiABKAhSEWlzUmVxdWlyZVVtYnJlbGxh');

@$core.Deprecated('Use locationDescriptor instead')
const Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'latitude', '3': 1, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 2, '4': 1, '5': 1, '10': 'longitude'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode(
    'CghMb2NhdGlvbhIaCghsYXRpdHVkZRgBIAEoAVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAIgAS'
    'gBUglsb25naXR1ZGU=');

