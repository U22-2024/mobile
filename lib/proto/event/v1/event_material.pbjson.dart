//
//  Generated code. Do not modify.
//  source: event/v1/event_material.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use placeDescriptor instead')
const Place$json = {
  '1': 'Place',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    {'1': 'pos', '3': 3, '4': 1, '5': 11, '6': '.event.v1.Pos', '10': 'pos'},
  ],
};

/// Descriptor for `Place`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List placeDescriptor = $convert.base64Decode(
    'CgVQbGFjZRISCgRuYW1lGAEgASgJUgRuYW1lEhgKB2FkZHJlc3MYAiABKAlSB2FkZHJlc3MSHw'
    'oDcG9zGAMgASgLMg0uZXZlbnQudjEuUG9zUgNwb3M=');

@$core.Deprecated('Use eventMaterialDescriptor instead')
const EventMaterial$json = {
  '1': 'EventMaterial',
  '2': [
    {'1': 'is_out', '3': 1, '4': 1, '5': 8, '10': 'isOut'},
    {'1': 'remind', '3': 2, '4': 1, '5': 9, '10': 'remind'},
    {'1': 'from_pos', '3': 3, '4': 1, '5': 11, '6': '.event.v1.Pos', '10': 'fromPos'},
    {'1': 'destination', '3': 4, '4': 1, '5': 9, '10': 'destination'},
    {'1': 'destination_pos', '3': 5, '4': 1, '5': 11, '6': '.event.v1.Pos', '10': 'destinationPos'},
    {'1': 'move_type', '3': 6, '4': 1, '5': 14, '6': '.event.v1.MoveType', '10': 'moveType'},
    {'1': 'option', '3': 7, '4': 1, '5': 9, '10': 'option'},
    {'1': 'start_time', '3': 8, '4': 1, '5': 11, '6': '.event.v1.DateTime', '10': 'startTime'},
    {'1': 'end_time', '3': 9, '4': 1, '5': 11, '6': '.event.v1.DateTime', '10': 'endTime'},
  ],
};

/// Descriptor for `EventMaterial`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventMaterialDescriptor = $convert.base64Decode(
    'Cg1FdmVudE1hdGVyaWFsEhUKBmlzX291dBgBIAEoCFIFaXNPdXQSFgoGcmVtaW5kGAIgASgJUg'
    'ZyZW1pbmQSKAoIZnJvbV9wb3MYAyABKAsyDS5ldmVudC52MS5Qb3NSB2Zyb21Qb3MSIAoLZGVz'
    'dGluYXRpb24YBCABKAlSC2Rlc3RpbmF0aW9uEjYKD2Rlc3RpbmF0aW9uX3BvcxgFIAEoCzINLm'
    'V2ZW50LnYxLlBvc1IOZGVzdGluYXRpb25Qb3MSLwoJbW92ZV90eXBlGAYgASgOMhIuZXZlbnQu'
    'djEuTW92ZVR5cGVSCG1vdmVUeXBlEhYKBm9wdGlvbhgHIAEoCVIGb3B0aW9uEjEKCnN0YXJ0X3'
    'RpbWUYCCABKAsyEi5ldmVudC52MS5EYXRlVGltZVIJc3RhcnRUaW1lEi0KCGVuZF90aW1lGAkg'
    'ASgLMhIuZXZlbnQudjEuRGF0ZVRpbWVSB2VuZFRpbWU=');

@$core.Deprecated('Use predictEventMaterialItemRequestDescriptor instead')
const PredictEventMaterialItemRequest$json = {
  '1': 'PredictEventMaterialItemRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
    {'1': 'event_material', '3': 2, '4': 1, '5': 11, '6': '.event.v1.EventMaterial', '10': 'eventMaterial'},
    {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `PredictEventMaterialItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictEventMaterialItemRequestDescriptor = $convert.base64Decode(
    'Ch9QcmVkaWN0RXZlbnRNYXRlcmlhbEl0ZW1SZXF1ZXN0EiAKA3VpZBgBIAEoCzIOLmNvbW1vbi'
    '52MS5VaWRSA3VpZBI+Cg5ldmVudF9tYXRlcmlhbBgCIAEoCzIXLmV2ZW50LnYxLkV2ZW50TWF0'
    'ZXJpYWxSDWV2ZW50TWF0ZXJpYWwSEgoEdGV4dBgDIAEoCVIEdGV4dA==');

@$core.Deprecated('Use predictEventMaterialItemResponseDescriptor instead')
const PredictEventMaterialItemResponse$json = {
  '1': 'PredictEventMaterialItemResponse',
  '2': [
    {'1': 'event_material', '3': 1, '4': 1, '5': 11, '6': '.event.v1.EventMaterial', '10': 'eventMaterial'},
  ],
};

/// Descriptor for `PredictEventMaterialItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictEventMaterialItemResponseDescriptor = $convert.base64Decode(
    'CiBQcmVkaWN0RXZlbnRNYXRlcmlhbEl0ZW1SZXNwb25zZRI+Cg5ldmVudF9tYXRlcmlhbBgBIA'
    'EoCzIXLmV2ZW50LnYxLkV2ZW50TWF0ZXJpYWxSDWV2ZW50TWF0ZXJpYWw=');

@$core.Deprecated('Use predictPositionsFromTextRequestDescriptor instead')
const PredictPositionsFromTextRequest$json = {
  '1': 'PredictPositionsFromTextRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'from_pos', '3': 3, '4': 1, '5': 11, '6': '.event.v1.Pos', '10': 'fromPos'},
  ],
};

/// Descriptor for `PredictPositionsFromTextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictPositionsFromTextRequestDescriptor = $convert.base64Decode(
    'Ch9QcmVkaWN0UG9zaXRpb25zRnJvbVRleHRSZXF1ZXN0EiAKA3VpZBgBIAEoCzIOLmNvbW1vbi'
    '52MS5VaWRSA3VpZBISCgR0ZXh0GAIgASgJUgR0ZXh0EigKCGZyb21fcG9zGAMgASgLMg0uZXZl'
    'bnQudjEuUG9zUgdmcm9tUG9z');

@$core.Deprecated('Use predictPositionsFromTextResponseDescriptor instead')
const PredictPositionsFromTextResponse$json = {
  '1': 'PredictPositionsFromTextResponse',
  '2': [
    {'1': 'place', '3': 1, '4': 3, '5': 11, '6': '.event.v1.Place', '10': 'place'},
  ],
};

/// Descriptor for `PredictPositionsFromTextResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictPositionsFromTextResponseDescriptor = $convert.base64Decode(
    'CiBQcmVkaWN0UG9zaXRpb25zRnJvbVRleHRSZXNwb25zZRIlCgVwbGFjZRgBIAMoCzIPLmV2ZW'
    '50LnYxLlBsYWNlUgVwbGFjZQ==');

@$core.Deprecated('Use predictTimeTableRequestDescriptor instead')
const PredictTimeTableRequest$json = {
  '1': 'PredictTimeTableRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
    {'1': 'event_material', '3': 2, '4': 1, '5': 11, '6': '.event.v1.EventMaterial', '10': 'eventMaterial'},
    {'1': 'is_going', '3': 3, '4': 1, '5': 8, '10': 'isGoing'},
  ],
};

/// Descriptor for `PredictTimeTableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictTimeTableRequestDescriptor = $convert.base64Decode(
    'ChdQcmVkaWN0VGltZVRhYmxlUmVxdWVzdBIgCgN1aWQYASABKAsyDi5jb21tb24udjEuVWlkUg'
    'N1aWQSPgoOZXZlbnRfbWF0ZXJpYWwYAiABKAsyFy5ldmVudC52MS5FdmVudE1hdGVyaWFsUg1l'
    'dmVudE1hdGVyaWFsEhkKCGlzX2dvaW5nGAMgASgIUgdpc0dvaW5n');

@$core.Deprecated('Use predictTimeTableResponseDescriptor instead')
const PredictTimeTableResponse$json = {
  '1': 'PredictTimeTableResponse',
  '2': [
    {'1': 'time_table', '3': 1, '4': 3, '5': 11, '6': '.event.v1.TimeTable', '10': 'timeTable'},
  ],
};

/// Descriptor for `PredictTimeTableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictTimeTableResponseDescriptor = $convert.base64Decode(
    'ChhQcmVkaWN0VGltZVRhYmxlUmVzcG9uc2USMgoKdGltZV90YWJsZRgBIAMoCzITLmV2ZW50Ln'
    'YxLlRpbWVUYWJsZVIJdGltZVRhYmxl');

