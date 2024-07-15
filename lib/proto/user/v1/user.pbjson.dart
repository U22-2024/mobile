//
//  Generated code. Do not modify.
//  source: proto/user/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userServiceCreateRequestDescriptor instead')
const UserServiceCreateRequest$json = {
  '1': 'UserServiceCreateRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UserServiceCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceCreateRequestDescriptor = $convert.base64Decode(
    'ChhVc2VyU2VydmljZUNyZWF0ZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVlbWFpbB'
    'gCIAEoCVIFZW1haWw=');

@$core.Deprecated('Use userServiceCreateResponseDescriptor instead')
const UserServiceCreateResponse$json = {
  '1': 'UserServiceCreateResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UserServiceCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceCreateResponseDescriptor = $convert.base64Decode(
    'ChlVc2VyU2VydmljZUNyZWF0ZVJlc3BvbnNlEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgAS'
    'gJUgRuYW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbA==');

@$core.Deprecated('Use userServiceReadRequestDescriptor instead')
const UserServiceReadRequest$json = {
  '1': 'UserServiceReadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserServiceReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceReadRequestDescriptor = $convert.base64Decode(
    'ChZVc2VyU2VydmljZVJlYWRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use userServiceReadResponseDescriptor instead')
const UserServiceReadResponse$json = {
  '1': 'UserServiceReadResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UserServiceReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceReadResponseDescriptor = $convert.base64Decode(
    'ChdVc2VyU2VydmljZVJlYWRSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCV'
    'IEbmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWw=');

