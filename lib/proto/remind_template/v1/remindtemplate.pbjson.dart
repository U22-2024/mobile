//
//  Generated code. Do not modify.
//  source: remind_template/v1/remindtemplate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use remindTemplateDescriptor instead')
const RemindTemplate$json = {
  '1': 'RemindTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `RemindTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remindTemplateDescriptor = $convert.base64Decode(
    'Cg5SZW1pbmRUZW1wbGF0ZRIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEi'
    'AKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIQCgN1aWQYBCABKAlSA3VpZA==');

@$core.Deprecated('Use getRemindTemplateRequestDescriptor instead')
const GetRemindTemplateRequest$json = {
  '1': 'GetRemindTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRemindTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindTemplateRequestDescriptor = $convert.base64Decode(
    'ChhHZXRSZW1pbmRUZW1wbGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getRemindTemplateResponseDescriptor instead')
const GetRemindTemplateResponse$json = {
  '1': 'GetRemindTemplateResponse',
  '2': [
    {'1': 'remind_template', '3': 1, '4': 1, '5': 11, '6': '.remind_template.v1.RemindTemplate', '10': 'remindTemplate'},
  ],
};

/// Descriptor for `GetRemindTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindTemplateResponseDescriptor = $convert.base64Decode(
    'ChlHZXRSZW1pbmRUZW1wbGF0ZVJlc3BvbnNlEksKD3JlbWluZF90ZW1wbGF0ZRgBIAEoCzIiLn'
    'JlbWluZF90ZW1wbGF0ZS52MS5SZW1pbmRUZW1wbGF0ZVIOcmVtaW5kVGVtcGxhdGU=');

@$core.Deprecated('Use getRemindTemplatesRequestDescriptor instead')
const GetRemindTemplatesRequest$json = {
  '1': 'GetRemindTemplatesRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `GetRemindTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindTemplatesRequestDescriptor = $convert.base64Decode(
    'ChlHZXRSZW1pbmRUZW1wbGF0ZXNSZXF1ZXN0EhAKA3VpZBgBIAEoCVIDdWlk');

@$core.Deprecated('Use getRemindTemplatesResponseDescriptor instead')
const GetRemindTemplatesResponse$json = {
  '1': 'GetRemindTemplatesResponse',
  '2': [
    {'1': 'remind_templates', '3': 1, '4': 3, '5': 11, '6': '.remind_template.v1.RemindTemplate', '10': 'remindTemplates'},
  ],
};

/// Descriptor for `GetRemindTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRemindTemplatesResponseDescriptor = $convert.base64Decode(
    'ChpHZXRSZW1pbmRUZW1wbGF0ZXNSZXNwb25zZRJNChByZW1pbmRfdGVtcGxhdGVzGAEgAygLMi'
    'IucmVtaW5kX3RlbXBsYXRlLnYxLlJlbWluZFRlbXBsYXRlUg9yZW1pbmRUZW1wbGF0ZXM=');

@$core.Deprecated('Use createRemindTemplateRequestDescriptor instead')
const CreateRemindTemplateRequest$json = {
  '1': 'CreateRemindTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `CreateRemindTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRemindTemplateRequestDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVSZW1pbmRUZW1wbGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGA'
    'IgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SEAoDdWlkGAQg'
    'ASgJUgN1aWQ=');

@$core.Deprecated('Use createRemindTemplateResponseDescriptor instead')
const CreateRemindTemplateResponse$json = {
  '1': 'CreateRemindTemplateResponse',
  '2': [
    {'1': 'remind_template', '3': 1, '4': 1, '5': 11, '6': '.remind_template.v1.RemindTemplate', '10': 'remindTemplate'},
  ],
};

/// Descriptor for `CreateRemindTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRemindTemplateResponseDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVSZW1pbmRUZW1wbGF0ZVJlc3BvbnNlEksKD3JlbWluZF90ZW1wbGF0ZRgBIAEoCz'
    'IiLnJlbWluZF90ZW1wbGF0ZS52MS5SZW1pbmRUZW1wbGF0ZVIOcmVtaW5kVGVtcGxhdGU=');

@$core.Deprecated('Use updateRemindTemplateRequestDescriptor instead')
const UpdateRemindTemplateRequest$json = {
  '1': 'UpdateRemindTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `UpdateRemindTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRemindTemplateRequestDescriptor = $convert.base64Decode(
    'ChtVcGRhdGVSZW1pbmRUZW1wbGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGA'
    'IgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SEAoDdWlkGAQg'
    'ASgJUgN1aWQ=');

@$core.Deprecated('Use updateRemindTemplateResponseDescriptor instead')
const UpdateRemindTemplateResponse$json = {
  '1': 'UpdateRemindTemplateResponse',
  '2': [
    {'1': 'remind_template', '3': 1, '4': 1, '5': 11, '6': '.remind_template.v1.RemindTemplate', '10': 'remindTemplate'},
  ],
};

/// Descriptor for `UpdateRemindTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRemindTemplateResponseDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVSZW1pbmRUZW1wbGF0ZVJlc3BvbnNlEksKD3JlbWluZF90ZW1wbGF0ZRgBIAEoCz'
    'IiLnJlbWluZF90ZW1wbGF0ZS52MS5SZW1pbmRUZW1wbGF0ZVIOcmVtaW5kVGVtcGxhdGU=');

@$core.Deprecated('Use deleteRemindTemplateRequestDescriptor instead')
const DeleteRemindTemplateRequest$json = {
  '1': 'DeleteRemindTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRemindTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRemindTemplateRequestDescriptor = $convert.base64Decode(
    'ChtEZWxldGVSZW1pbmRUZW1wbGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use deleteRemindTemplateResponseDescriptor instead')
const DeleteRemindTemplateResponse$json = {
  '1': 'DeleteRemindTemplateResponse',
};

/// Descriptor for `DeleteRemindTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRemindTemplateResponseDescriptor = $convert.base64Decode(
    'ChxEZWxldGVSZW1pbmRUZW1wbGF0ZVJlc3BvbnNl');

