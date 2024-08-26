//
//  Generated code. Do not modify.
//  source: shopping/v1/shopping_item.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use itemStatusDescriptor instead')
const ItemStatus$json = {
  '1': 'ItemStatus',
  '2': [
    {'1': 'ITEM_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'ITEM_STATUS_PURCHASED', '2': 1},
    {'1': 'ITEM_STATUS_NOT_PURCHASED', '2': 2},
    {'1': 'ITEM_STATUS_PURCHASE_PENDING', '2': 3},
  ],
};

/// Descriptor for `ItemStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemStatusDescriptor = $convert.base64Decode(
    'CgpJdGVtU3RhdHVzEhsKF0lURU1fU1RBVFVTX1VOU1BFQ0lGSUVEEAASGQoVSVRFTV9TVEFUVV'
    'NfUFVSQ0hBU0VEEAESHQoZSVRFTV9TVEFUVVNfTk9UX1BVUkNIQVNFRBACEiAKHElURU1fU1RB'
    'VFVTX1BVUkNIQVNFX1BFTkRJTkcQAw==');

@$core.Deprecated('Use shoppingItemDescriptor instead')
const ShoppingItem$json = {
  '1': 'ShoppingItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Guid', '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    {'1': 'memo', '3': 5, '4': 1, '5': 9, '10': 'memo'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.shopping.v1.ItemStatus', '10': 'status'},
  ],
};

/// Descriptor for `ShoppingItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shoppingItemDescriptor = $convert.base64Decode(
    'CgxTaG9wcGluZ0l0ZW0SHwoCaWQYASABKAsyDy5jb21tb24udjEuR3VpZFICaWQSEgoEbmFtZR'
    'gCIAEoCVIEbmFtZRIaCghxdWFudGl0eRgDIAEoCVIIcXVhbnRpdHkSEgoEdHlwZRgEIAEoCVIE'
    'dHlwZRISCgRtZW1vGAUgASgJUgRtZW1vEi8KBnN0YXR1cxgGIAEoDjIXLnNob3BwaW5nLnYxLk'
    'l0ZW1TdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use createShoppingItemRequestDescriptor instead')
const CreateShoppingItemRequest$json = {
  '1': 'CreateShoppingItemRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'memo', '3': 4, '4': 1, '5': 9, '10': 'memo'},
  ],
};

/// Descriptor for `CreateShoppingItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createShoppingItemRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVTaG9wcGluZ0l0ZW1SZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGgoIcXVhbn'
    'RpdHkYAiABKAlSCHF1YW50aXR5EhIKBG1lbW8YBCABKAlSBG1lbW8=');

@$core.Deprecated('Use createShoppingItemResponseDescriptor instead')
const CreateShoppingItemResponse$json = {
  '1': 'CreateShoppingItemResponse',
  '2': [
    {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.shopping.v1.ShoppingItem', '10': 'item'},
  ],
};

/// Descriptor for `CreateShoppingItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createShoppingItemResponseDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVTaG9wcGluZ0l0ZW1SZXNwb25zZRItCgRpdGVtGAEgASgLMhkuc2hvcHBpbmcudj'
    'EuU2hvcHBpbmdJdGVtUgRpdGVt');

@$core.Deprecated('Use updateShoppingItemRequestDescriptor instead')
const UpdateShoppingItemRequest$json = {
  '1': 'UpdateShoppingItemRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Guid', '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'memo', '3': 5, '4': 1, '5': 9, '10': 'memo'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.shopping.v1.ItemStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdateShoppingItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateShoppingItemRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVTaG9wcGluZ0l0ZW1SZXF1ZXN0Eh8KAmlkGAEgASgLMg8uY29tbW9uLnYxLkd1aW'
    'RSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIcXVhbnRpdHkYAyABKAlSCHF1YW50aXR5EhIK'
    'BG1lbW8YBSABKAlSBG1lbW8SLwoGc3RhdHVzGAYgASgOMhcuc2hvcHBpbmcudjEuSXRlbVN0YX'
    'R1c1IGc3RhdHVz');

@$core.Deprecated('Use updateShoppingItemResponseDescriptor instead')
const UpdateShoppingItemResponse$json = {
  '1': 'UpdateShoppingItemResponse',
  '2': [
    {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.shopping.v1.ShoppingItem', '10': 'item'},
  ],
};

/// Descriptor for `UpdateShoppingItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateShoppingItemResponseDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVTaG9wcGluZ0l0ZW1SZXNwb25zZRItCgRpdGVtGAEgASgLMhkuc2hvcHBpbmcudj'
    'EuU2hvcHBpbmdJdGVtUgRpdGVt');

@$core.Deprecated('Use deleteShoppingItemRequestDescriptor instead')
const DeleteShoppingItemRequest$json = {
  '1': 'DeleteShoppingItemRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Guid', '10': 'id'},
  ],
};

/// Descriptor for `DeleteShoppingItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteShoppingItemRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVTaG9wcGluZ0l0ZW1SZXF1ZXN0Eh8KAmlkGAEgASgLMg8uY29tbW9uLnYxLkd1aW'
    'RSAmlk');

@$core.Deprecated('Use deleteShoppingItemResponseDescriptor instead')
const DeleteShoppingItemResponse$json = {
  '1': 'DeleteShoppingItemResponse',
};

/// Descriptor for `DeleteShoppingItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteShoppingItemResponseDescriptor = $convert.base64Decode(
    'ChpEZWxldGVTaG9wcGluZ0l0ZW1SZXNwb25zZQ==');

