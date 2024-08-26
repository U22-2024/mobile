//
//  Generated code. Do not modify.
//  source: remind/v1/remind_predict.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use predictByTitleRequestDescriptor instead')
const PredictByTitleRequest$json = {
  '1': 'PredictByTitleRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'memo', '3': 3, '4': 1, '5': 9, '10': 'memo'},
  ],
};

/// Descriptor for `PredictByTitleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictByTitleRequestDescriptor = $convert.base64Decode(
    'ChVQcmVkaWN0QnlUaXRsZVJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQSFAoFdGl0bGUYAiABKA'
    'lSBXRpdGxlEhIKBG1lbW8YAyABKAlSBG1lbW8=');

@$core.Deprecated('Use predictByTitleResponseDescriptor instead')
const PredictByTitleResponse$json = {
  '1': 'PredictByTitleResponse',
  '2': [
    {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `PredictByTitleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictByTitleResponseDescriptor = $convert.base64Decode(
    'ChZQcmVkaWN0QnlUaXRsZVJlc3BvbnNlEhkKCGdyb3VwX2lkGAEgASgJUgdncm91cElk');

