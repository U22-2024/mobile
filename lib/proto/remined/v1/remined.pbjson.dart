//
//  Generated code. Do not modify.
//  source: remined/v1/remined.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use reminedDescriptor instead')
const Remined$json = {
  '1': 'Remined',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Remined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reminedDescriptor = $convert.base64Decode(
    'CgdSZW1pbmVkEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3'
    'JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhAKA3VpZBgEIAEoCVIDdWlkEh0KCmNyZWF0ZWRf'
    'YXQYBSABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAYgASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use getReminedRequestDescriptor instead')
const GetReminedRequest$json = {
  '1': 'GetReminedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetReminedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReminedRequestDescriptor = $convert.base64Decode(
    'ChFHZXRSZW1pbmVkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getReminedResponseDescriptor instead')
const GetReminedResponse$json = {
  '1': 'GetReminedResponse',
  '2': [
    {'1': 'remined', '3': 1, '4': 1, '5': 11, '6': '.remined.v1.Remined', '10': 'remined'},
  ],
};

/// Descriptor for `GetReminedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReminedResponseDescriptor = $convert.base64Decode(
    'ChJHZXRSZW1pbmVkUmVzcG9uc2USLQoHcmVtaW5lZBgBIAEoCzITLnJlbWluZWQudjEuUmVtaW'
    '5lZFIHcmVtaW5lZA==');

@$core.Deprecated('Use getReminedsRequestDescriptor instead')
const GetReminedsRequest$json = {
  '1': 'GetReminedsRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `GetReminedsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReminedsRequestDescriptor = $convert.base64Decode(
    'ChJHZXRSZW1pbmVkc1JlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQ=');

@$core.Deprecated('Use getReminedsResponseDescriptor instead')
const GetReminedsResponse$json = {
  '1': 'GetReminedsResponse',
  '2': [
    {'1': 'remineds', '3': 1, '4': 3, '5': 11, '6': '.remined.v1.Remined', '10': 'remineds'},
  ],
};

/// Descriptor for `GetReminedsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReminedsResponseDescriptor = $convert.base64Decode(
    'ChNHZXRSZW1pbmVkc1Jlc3BvbnNlEi8KCHJlbWluZWRzGAEgAygLMhMucmVtaW5lZC52MS5SZW'
    '1pbmVkUghyZW1pbmVkcw==');

@$core.Deprecated('Use createReminedRequestDescriptor instead')
const CreateReminedRequest$json = {
  '1': 'CreateReminedRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 3, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `CreateReminedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReminedRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVSZW1pbmVkUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhAKA3VpZBgDIAEoCVIDdWlk');

@$core.Deprecated('Use createReminedResponseDescriptor instead')
const CreateReminedResponse$json = {
  '1': 'CreateReminedResponse',
  '2': [
    {'1': 'remined', '3': 1, '4': 1, '5': 11, '6': '.remined.v1.Remined', '10': 'remined'},
  ],
};

/// Descriptor for `CreateReminedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReminedResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVSZW1pbmVkUmVzcG9uc2USLQoHcmVtaW5lZBgBIAEoCzITLnJlbWluZWQudjEuUm'
    'VtaW5lZFIHcmVtaW5lZA==');

@$core.Deprecated('Use updateReminedRequestDescriptor instead')
const UpdateReminedRequest$json = {
  '1': 'UpdateReminedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `UpdateReminedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReminedRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVSZW1pbmVkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBX'
    'RpdGxlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use updateReminedResponseDescriptor instead')
const UpdateReminedResponse$json = {
  '1': 'UpdateReminedResponse',
  '2': [
    {'1': 'remined', '3': 1, '4': 1, '5': 11, '6': '.remined.v1.Remined', '10': 'remined'},
  ],
};

/// Descriptor for `UpdateReminedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReminedResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVSZW1pbmVkUmVzcG9uc2USLQoHcmVtaW5lZBgBIAEoCzITLnJlbWluZWQudjEuUm'
    'VtaW5lZFIHcmVtaW5lZA==');

@$core.Deprecated('Use deleteReminedRequestDescriptor instead')
const DeleteReminedRequest$json = {
  '1': 'DeleteReminedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteReminedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReminedRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVSZW1pbmVkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteReminedResponseDescriptor instead')
const DeleteReminedResponse$json = {
  '1': 'DeleteReminedResponse',
  '2': [
    {'1': 'remined', '3': 1, '4': 1, '5': 11, '6': '.remined.v1.Remined', '10': 'remined'},
  ],
};

/// Descriptor for `DeleteReminedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReminedResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVSZW1pbmVkUmVzcG9uc2USLQoHcmVtaW5lZBgBIAEoCzITLnJlbWluZWQudjEuUm'
    'VtaW5lZFIHcmVtaW5lZA==');

