//
//  Generated code. Do not modify.
//  source: shopping/v1/shopping_item.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// アイテムの状態
class ItemStatus extends $pb.ProtobufEnum {
  static const ItemStatus ITEM_STATUS_UNSPECIFIED = ItemStatus._(0, _omitEnumNames ? '' : 'ITEM_STATUS_UNSPECIFIED');
  static const ItemStatus ITEM_STATUS_PURCHASED = ItemStatus._(1, _omitEnumNames ? '' : 'ITEM_STATUS_PURCHASED');
  static const ItemStatus ITEM_STATUS_NOT_PURCHASED = ItemStatus._(2, _omitEnumNames ? '' : 'ITEM_STATUS_NOT_PURCHASED');
  static const ItemStatus ITEM_STATUS_PURCHASE_PENDING = ItemStatus._(3, _omitEnumNames ? '' : 'ITEM_STATUS_PURCHASE_PENDING');

  static const $core.List<ItemStatus> values = <ItemStatus> [
    ITEM_STATUS_UNSPECIFIED,
    ITEM_STATUS_PURCHASED,
    ITEM_STATUS_NOT_PURCHASED,
    ITEM_STATUS_PURCHASE_PENDING,
  ];

  static final $core.Map<$core.int, ItemStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemStatus? valueOf($core.int value) => _byValue[value];

  const ItemStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
