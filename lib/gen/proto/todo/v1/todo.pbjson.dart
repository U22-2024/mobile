//
//  Generated code. Do not modify.
//  source: proto/todo/v1/todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use todoServiceCreateRequestDescriptor instead')
const TodoServiceCreateRequest$json = {
  '1': 'TodoServiceCreateRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `TodoServiceCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoServiceCreateRequestDescriptor = $convert.base64Decode(
    'ChhUb2RvU2VydmljZUNyZWF0ZVJlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2'
    'NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use todoServiceCreateResponseDescriptor instead')
const TodoServiceCreateResponse$json = {
  '1': 'TodoServiceCreateResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'done', '3': 4, '4': 1, '5': 8, '10': 'done'},
  ],
};

/// Descriptor for `TodoServiceCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoServiceCreateResponseDescriptor = $convert.base64Decode(
    'ChlUb2RvU2VydmljZUNyZWF0ZVJlc3BvbnNlEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIA'
    'EoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhIKBGRvbmUYBCAB'
    'KAhSBGRvbmU=');

