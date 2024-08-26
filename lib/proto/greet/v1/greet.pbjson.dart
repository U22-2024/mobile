//
//  Generated code. Do not modify.
//  source: greet/v1/greet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use greetDescriptor instead')
const Greet$json = {
  '1': 'Greet',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Greet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List greetDescriptor = $convert.base64Decode(
    'CgVHcmVldBIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use getGreetRequestDescriptor instead')
const GetGreetRequest$json = {
  '1': 'GetGreetRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetGreetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGreetRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRHcmVldFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use getGreetResponseDescriptor instead')
const GetGreetResponse$json = {
  '1': 'GetGreetResponse',
  '2': [
    {'1': 'greet', '3': 1, '4': 1, '5': 11, '6': '.greet.v1.Greet', '10': 'greet'},
  ],
};

/// Descriptor for `GetGreetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGreetResponseDescriptor = $convert.base64Decode(
    'ChBHZXRHcmVldFJlc3BvbnNlEiUKBWdyZWV0GAEgASgLMg8uZ3JlZXQudjEuR3JlZXRSBWdyZW'
    'V0');

