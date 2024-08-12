//
//  Generated code. Do not modify.
//  source: remind/v1/remind_group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use remindGroupDescriptor instead')
const RemindGroup$json = {
  '1': 'RemindGroup',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'icon', '3': 5, '4': 1, '5': 11, '6': '.remind.v1.IconData', '10': 'icon'},
  ],
};

/// Descriptor for `RemindGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remindGroupDescriptor = $convert.base64Decode(
    'CgtSZW1pbmRHcm91cBIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEiAKC2'
    'Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIQCgN1aWQYBCABKAlSA3VpZBInCgRpY29u'
    'GAUgASgLMhMucmVtaW5kLnYxLkljb25EYXRhUgRpY29u');

@$core.Deprecated('Use iconDataDescriptor instead')
const IconData$json = {
  '1': 'IconData',
  '2': [
    {'1': 'code_point', '3': 1, '4': 1, '5': 5, '10': 'codePoint'},
    {'1': 'font_family', '3': 2, '4': 1, '5': 9, '10': 'fontFamily'},
  ],
};

/// Descriptor for `IconData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iconDataDescriptor = $convert.base64Decode(
    'CghJY29uRGF0YRIdCgpjb2RlX3BvaW50GAEgASgFUgljb2RlUG9pbnQSHwoLZm9udF9mYW1pbH'
    'kYAiABKAlSCmZvbnRGYW1pbHk=');

@$core.Deprecated('Use getRemindGroupRequestDescriptor instead')
const GetRemindGroupRequest$json = {
  '1': 'GetRemindGroupRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRemindGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindGroupRequestDescriptor = $convert.base64Decode(
    'ChVHZXRSZW1pbmRHcm91cFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getRemindGroupResponseDescriptor instead')
const GetRemindGroupResponse$json = {
  '1': 'GetRemindGroupResponse',
  '2': [
    {'1': 'remind_group', '3': 1, '4': 1, '5': 11, '6': '.remind.v1.RemindGroup', '10': 'remindGroup'},
  ],
};

/// Descriptor for `GetRemindGroupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindGroupResponseDescriptor = $convert.base64Decode(
    'ChZHZXRSZW1pbmRHcm91cFJlc3BvbnNlEjkKDHJlbWluZF9ncm91cBgBIAEoCzIWLnJlbWluZC'
    '52MS5SZW1pbmRHcm91cFILcmVtaW5kR3JvdXA=');

@$core.Deprecated('Use getRemindGroupsRequestDescriptor instead')
const GetRemindGroupsRequest$json = {
  '1': 'GetRemindGroupsRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `GetRemindGroupsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindGroupsRequestDescriptor = $convert.base64Decode(
    'ChZHZXRSZW1pbmRHcm91cHNSZXF1ZXN0EhAKA3VpZBgBIAEoCVIDdWlk');

@$core.Deprecated('Use getRemindGroupsResponseDescriptor instead')
const GetRemindGroupsResponse$json = {
  '1': 'GetRemindGroupsResponse',
  '2': [
    {'1': 'remind_groups', '3': 1, '4': 3, '5': 11, '6': '.remind.v1.RemindGroup', '10': 'remindGroups'},
  ],
};

/// Descriptor for `GetRemindGroupsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindGroupsResponseDescriptor = $convert.base64Decode(
    'ChdHZXRSZW1pbmRHcm91cHNSZXNwb25zZRI7Cg1yZW1pbmRfZ3JvdXBzGAEgAygLMhYucmVtaW'
    '5kLnYxLlJlbWluZEdyb3VwUgxyZW1pbmRHcm91cHM=');

@$core.Deprecated('Use createRemindGroupRequestDescriptor instead')
const CreateRemindGroupRequest$json = {
  '1': 'CreateRemindGroupRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 3, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'icon', '3': 4, '4': 1, '5': 11, '6': '.remind.v1.IconData', '10': 'icon'},
  ],
};

/// Descriptor for `CreateRemindGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRemindGroupRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVSZW1pbmRHcm91cFJlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2'
    'NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIQCgN1aWQYAyABKAlSA3VpZBInCgRpY29uGAQg'
    'ASgLMhMucmVtaW5kLnYxLkljb25EYXRhUgRpY29u');

@$core.Deprecated('Use createRemindGroupResponseDescriptor instead')
const CreateRemindGroupResponse$json = {
  '1': 'CreateRemindGroupResponse',
  '2': [
    {'1': 'remind_group', '3': 1, '4': 1, '5': 11, '6': '.remind.v1.RemindGroup', '10': 'remindGroup'},
  ],
};

/// Descriptor for `CreateRemindGroupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRemindGroupResponseDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVSZW1pbmRHcm91cFJlc3BvbnNlEjkKDHJlbWluZF9ncm91cBgBIAEoCzIWLnJlbW'
    'luZC52MS5SZW1pbmRHcm91cFILcmVtaW5kR3JvdXA=');

@$core.Deprecated('Use updateRemindGroupRequestDescriptor instead')
const UpdateRemindGroupRequest$json = {
  '1': 'UpdateRemindGroupRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'icon', '3': 4, '4': 1, '5': 11, '6': '.remind.v1.IconData', '10': 'icon'},
  ],
};

/// Descriptor for `UpdateRemindGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRemindGroupRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVSZW1pbmRHcm91cFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgAS'
    'gJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SJwoEaWNvbhgEIAEo'
    'CzITLnJlbWluZC52MS5JY29uRGF0YVIEaWNvbg==');

@$core.Deprecated('Use updateRemindGroupResponseDescriptor instead')
const UpdateRemindGroupResponse$json = {
  '1': 'UpdateRemindGroupResponse',
  '2': [
    {'1': 'remind_group', '3': 1, '4': 1, '5': 11, '6': '.remind.v1.RemindGroup', '10': 'remindGroup'},
  ],
};

/// Descriptor for `UpdateRemindGroupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRemindGroupResponseDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVSZW1pbmRHcm91cFJlc3BvbnNlEjkKDHJlbWluZF9ncm91cBgBIAEoCzIWLnJlbW'
    'luZC52MS5SZW1pbmRHcm91cFILcmVtaW5kR3JvdXA=');

@$core.Deprecated('Use deleteRemindGroupRequestDescriptor instead')
const DeleteRemindGroupRequest$json = {
  '1': 'DeleteRemindGroupRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRemindGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRemindGroupRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVSZW1pbmRHcm91cFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use deleteRemindGroupResponseDescriptor instead')
const DeleteRemindGroupResponse$json = {
  '1': 'DeleteRemindGroupResponse',
};

/// Descriptor for `DeleteRemindGroupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRemindGroupResponseDescriptor = $convert.base64Decode(
    'ChlEZWxldGVSZW1pbmRHcm91cFJlc3BvbnNl');

