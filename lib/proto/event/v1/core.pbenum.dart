//
//  Generated code. Do not modify.
//  source: event/v1/core.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MoveType extends $pb.ProtobufEnum {
  static const MoveType MOVE_TYPE_UNSPECIFIED = MoveType._(0, _omitEnumNames ? '' : 'MOVE_TYPE_UNSPECIFIED');
  static const MoveType MOVE_TYPE_CAR = MoveType._(1, _omitEnumNames ? '' : 'MOVE_TYPE_CAR');
  static const MoveType MOVE_TYPE_TRAIN = MoveType._(2, _omitEnumNames ? '' : 'MOVE_TYPE_TRAIN');
  static const MoveType MOVE_TYPE_WALK = MoveType._(3, _omitEnumNames ? '' : 'MOVE_TYPE_WALK');
  static const MoveType MOVE_TYPE_OTHER = MoveType._(4, _omitEnumNames ? '' : 'MOVE_TYPE_OTHER');

  static const $core.List<MoveType> values = <MoveType> [
    MOVE_TYPE_UNSPECIFIED,
    MOVE_TYPE_CAR,
    MOVE_TYPE_TRAIN,
    MOVE_TYPE_WALK,
    MOVE_TYPE_OTHER,
  ];

  static final $core.Map<$core.int, MoveType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MoveType? valueOf($core.int value) => _byValue[value];

  const MoveType._($core.int v, $core.String n) : super(v, n);
}

class TimeTableType extends $pb.ProtobufEnum {
  static const TimeTableType TIME_TABLE_TYPE_UNSPECIFIED = TimeTableType._(0, _omitEnumNames ? '' : 'TIME_TABLE_TYPE_UNSPECIFIED');
  static const TimeTableType TIME_TABLE_TYPE_POINT = TimeTableType._(1, _omitEnumNames ? '' : 'TIME_TABLE_TYPE_POINT');
  static const TimeTableType TIME_TABLE_TYPE_MOVE = TimeTableType._(2, _omitEnumNames ? '' : 'TIME_TABLE_TYPE_MOVE');

  static const $core.List<TimeTableType> values = <TimeTableType> [
    TIME_TABLE_TYPE_UNSPECIFIED,
    TIME_TABLE_TYPE_POINT,
    TIME_TABLE_TYPE_MOVE,
  ];

  static final $core.Map<$core.int, TimeTableType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimeTableType? valueOf($core.int value) => _byValue[value];

  const TimeTableType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
