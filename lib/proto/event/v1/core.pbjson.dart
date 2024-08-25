//
//  Generated code. Do not modify.
//  source: event/v1/core.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use moveTypeDescriptor instead')
const MoveType$json = {
  '1': 'MoveType',
  '2': [
    {'1': 'MOVE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'MOVE_TYPE_CAR', '2': 1},
    {'1': 'MOVE_TYPE_TRAIN', '2': 2},
    {'1': 'MOVE_TYPE_WALK', '2': 3},
    {'1': 'MOVE_TYPE_OTHER', '2': 4},
  ],
};

/// Descriptor for `MoveType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List moveTypeDescriptor = $convert.base64Decode(
    'CghNb3ZlVHlwZRIZChVNT1ZFX1RZUEVfVU5TUEVDSUZJRUQQABIRCg1NT1ZFX1RZUEVfQ0FSEA'
    'ESEwoPTU9WRV9UWVBFX1RSQUlOEAISEgoOTU9WRV9UWVBFX1dBTEsQAxITCg9NT1ZFX1RZUEVf'
    'T1RIRVIQBA==');

@$core.Deprecated('Use timeTableTypeDescriptor instead')
const TimeTableType$json = {
  '1': 'TimeTableType',
  '2': [
    {'1': 'TIME_TABLE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'TIME_TABLE_TYPE_POINT', '2': 1},
    {'1': 'TIME_TABLE_TYPE_MOVE', '2': 2},
  ],
};

/// Descriptor for `TimeTableType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List timeTableTypeDescriptor = $convert.base64Decode(
    'Cg1UaW1lVGFibGVUeXBlEh8KG1RJTUVfVEFCTEVfVFlQRV9VTlNQRUNJRklFRBAAEhkKFVRJTU'
    'VfVEFCTEVfVFlQRV9QT0lOVBABEhgKFFRJTUVfVEFCTEVfVFlQRV9NT1ZFEAI=');

@$core.Deprecated('Use posDescriptor instead')
const Pos$json = {
  '1': 'Pos',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lon', '3': 2, '4': 1, '5': 1, '10': 'lon'},
  ],
};

/// Descriptor for `Pos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List posDescriptor = $convert.base64Decode(
    'CgNQb3MSEAoDbGF0GAEgASgBUgNsYXQSEAoDbG9uGAIgASgBUgNsb24=');

@$core.Deprecated('Use dateTimeDescriptor instead')
const DateTime$json = {
  '1': 'DateTime',
  '2': [
    {'1': 'year', '3': 1, '4': 1, '5': 13, '10': 'year'},
    {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    {'1': 'day', '3': 3, '4': 1, '5': 13, '10': 'day'},
    {'1': 'hour', '3': 4, '4': 1, '5': 13, '10': 'hour'},
    {'1': 'minute', '3': 5, '4': 1, '5': 13, '10': 'minute'},
  ],
};

/// Descriptor for `DateTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dateTimeDescriptor = $convert.base64Decode(
    'CghEYXRlVGltZRISCgR5ZWFyGAEgASgNUgR5ZWFyEhQKBW1vbnRoGAIgASgNUgVtb250aBIQCg'
    'NkYXkYAyABKA1SA2RheRISCgRob3VyGAQgASgNUgRob3VyEhYKBm1pbnV0ZRgFIAEoDVIGbWlu'
    'dXRl');

