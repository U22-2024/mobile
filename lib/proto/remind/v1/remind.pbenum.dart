//
//  Generated code. Do not modify.
//  source: remind/v1/remind.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RemindType extends $pb.ProtobufEnum {
  static const RemindType REMIND_TYPE_UNSPECIFIED = RemindType._(0, _omitEnumNames ? '' : 'REMIND_TYPE_UNSPECIFIED');
  static const RemindType REMIND_TYPE_SHOPPING = RemindType._(1, _omitEnumNames ? '' : 'REMIND_TYPE_SHOPPING');
  static const RemindType REMIND_TYPE_HOMEWORK = RemindType._(2, _omitEnumNames ? '' : 'REMIND_TYPE_HOMEWORK');
  static const RemindType REMIND_TYPE_OUTING = RemindType._(3, _omitEnumNames ? '' : 'REMIND_TYPE_OUTING');

  static const $core.List<RemindType> values = <RemindType> [
    REMIND_TYPE_UNSPECIFIED,
    REMIND_TYPE_SHOPPING,
    REMIND_TYPE_HOMEWORK,
    REMIND_TYPE_OUTING,
  ];

  static final $core.Map<$core.int, RemindType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RemindType? valueOf($core.int value) => _byValue[value];

  const RemindType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
