//
//  Generated code. Do not modify.
//  source: remind/v1/remind.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use remindDescriptor instead')
const Remind$json = {
  '1': 'Remind',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'group_id', '3': 5, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `Remind`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remindDescriptor = $convert.base64Decode(
    'CgZSZW1pbmQSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIgCgtkZXNjcm'
    'lwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SEAoDdWlkGAQgASgJUgN1aWQSGQoIZ3JvdXBfaWQY'
    'BSABKAlSB2dyb3VwSWQ=');

@$core.Deprecated('Use getRemindRequestDescriptor instead')
const GetRemindRequest$json = {
  '1': 'GetRemindRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRemindRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindRequestDescriptor = $convert.base64Decode(
    'ChBHZXRSZW1pbmRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getRemindResponseDescriptor instead')
const GetRemindResponse$json = {
  '1': 'GetRemindResponse',
  '2': [
    {'1': 'remind', '3': 1, '4': 1, '5': 11, '6': '.remind.v1.Remind', '10': 'remind'},
  ],
};

/// Descriptor for `GetRemindResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindResponseDescriptor = $convert.base64Decode(
    'ChFHZXRSZW1pbmRSZXNwb25zZRIpCgZyZW1pbmQYASABKAsyES5yZW1pbmQudjEuUmVtaW5kUg'
    'ZyZW1pbmQ=');

@$core.Deprecated('Use getRemindsRequestDescriptor instead')
const GetRemindsRequest$json = {
  '1': 'GetRemindsRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `GetRemindsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindsRequestDescriptor = $convert.base64Decode(
    'ChFHZXRSZW1pbmRzUmVxdWVzdBIQCgN1aWQYASABKAlSA3VpZA==');

@$core.Deprecated('Use getRemindsResponseDescriptor instead')
const GetRemindsResponse$json = {
  '1': 'GetRemindsResponse',
  '2': [
    {'1': 'reminds', '3': 1, '4': 3, '5': 11, '6': '.remind.v1.Remind', '10': 'reminds'},
  ],
};

/// Descriptor for `GetRemindsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindsResponseDescriptor = $convert.base64Decode(
    'ChJHZXRSZW1pbmRzUmVzcG9uc2USKwoHcmVtaW5kcxgBIAMoCzIRLnJlbWluZC52MS5SZW1pbm'
    'RSB3JlbWluZHM=');

@$core.Deprecated('Use createRemindRequestDescriptor instead')
const CreateRemindRequest$json = {
  '1': 'CreateRemindRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 3, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'group_id', '3': 4, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `CreateRemindRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRemindRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVSZW1pbmRSZXF1ZXN0EhQKBXRpdGxlGAEgASgJUgV0aXRsZRIgCgtkZXNjcmlwdG'
    'lvbhgCIAEoCVILZGVzY3JpcHRpb24SEAoDdWlkGAMgASgJUgN1aWQSGQoIZ3JvdXBfaWQYBCAB'
    'KAlSB2dyb3VwSWQ=');

@$core.Deprecated('Use createRemindResponseDescriptor instead')
const CreateRemindResponse$json = {
  '1': 'CreateRemindResponse',
  '2': [
    {'1': 'remind', '3': 1, '4': 1, '5': 11, '6': '.remind.v1.Remind', '10': 'remind'},
  ],
};

/// Descriptor for `CreateRemindResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRemindResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVSZW1pbmRSZXNwb25zZRIpCgZyZW1pbmQYASABKAsyES5yZW1pbmQudjEuUmVtaW'
    '5kUgZyZW1pbmQ=');

@$core.Deprecated('Use updateRemindRequestDescriptor instead')
const UpdateRemindRequest$json = {
  '1': 'UpdateRemindRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'group_id', '3': 5, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `UpdateRemindRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRemindRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVSZW1pbmRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdG'
    'l0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhAKA3VpZBgEIAEoCVIDdWlk'
    'EhkKCGdyb3VwX2lkGAUgASgJUgdncm91cElk');

@$core.Deprecated('Use updateRemindResponseDescriptor instead')
const UpdateRemindResponse$json = {
  '1': 'UpdateRemindResponse',
  '2': [
    {'1': 'remind', '3': 1, '4': 1, '5': 11, '6': '.remind.v1.Remind', '10': 'remind'},
  ],
};

/// Descriptor for `UpdateRemindResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRemindResponseDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVSZW1pbmRSZXNwb25zZRIpCgZyZW1pbmQYASABKAsyES5yZW1pbmQudjEuUmVtaW'
    '5kUgZyZW1pbmQ=');

@$core.Deprecated('Use deleteRemindRequestDescriptor instead')
const DeleteRemindRequest$json = {
  '1': 'DeleteRemindRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRemindRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRemindRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVSZW1pbmRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteRemindResponseDescriptor instead')
const DeleteRemindResponse$json = {
  '1': 'DeleteRemindResponse',
};

/// Descriptor for `DeleteRemindResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRemindResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVSZW1pbmRSZXNwb25zZQ==');

