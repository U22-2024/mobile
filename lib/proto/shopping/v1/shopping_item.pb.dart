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

import '../../common/v1/common.pb.dart' as $9;
import 'shopping_item.pbenum.dart';

export 'shopping_item.pbenum.dart';

/// 買い物リストのアイテム
class ShoppingItem extends $pb.GeneratedMessage {
  factory ShoppingItem({
    $9.Guid? id,
    $core.String? name,
    $core.String? quantity,
    $core.String? type,
    $core.String? memo,
    ItemStatus? status,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (type != null) {
      $result.type = type;
    }
    if (memo != null) {
      $result.memo = memo;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ShoppingItem._() : super();
  factory ShoppingItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShoppingItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShoppingItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..aOM<$9.Guid>(1, _omitFieldNames ? '' : 'id', subBuilder: $9.Guid.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'quantity')
    ..aOS(4, _omitFieldNames ? '' : 'type')
    ..aOS(5, _omitFieldNames ? '' : 'memo')
    ..e<ItemStatus>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ItemStatus.ITEM_STATUS_UNSPECIFIED, valueOf: ItemStatus.valueOf, enumValues: ItemStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShoppingItem clone() => ShoppingItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShoppingItem copyWith(void Function(ShoppingItem) updates) => super.copyWith((message) => updates(message as ShoppingItem)) as ShoppingItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShoppingItem create() => ShoppingItem._();
  ShoppingItem createEmptyInstance() => create();
  static $pb.PbList<ShoppingItem> createRepeated() => $pb.PbList<ShoppingItem>();
  @$core.pragma('dart2js:noInline')
  static ShoppingItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShoppingItem>(create);
  static ShoppingItem? _defaultInstance;

  /// アイテムのGUID
  @$pb.TagNumber(1)
  $9.Guid get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($9.Guid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $9.Guid ensureId() => $_ensure(0);

  /// アイテム名
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// アイテムの量
  @$pb.TagNumber(3)
  $core.String get quantity => $_getSZ(2);
  @$pb.TagNumber(3)
  set quantity($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  /// アイテムの種類
  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  /// アイテムのメモ
  @$pb.TagNumber(5)
  $core.String get memo => $_getSZ(4);
  @$pb.TagNumber(5)
  set memo($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMemo() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemo() => clearField(5);

  /// アイテムの状態
  @$pb.TagNumber(6)
  ItemStatus get status => $_getN(5);
  @$pb.TagNumber(6)
  set status(ItemStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);
}

/// リクエストしたユーザーのUIDに紐づく買い物リストのアイテムを作成する
class CreateShoppingItemRequest extends $pb.GeneratedMessage {
  factory CreateShoppingItemRequest({
    $core.String? name,
    $core.String? quantity,
    $core.String? memo,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (memo != null) {
      $result.memo = memo;
    }
    return $result;
  }
  CreateShoppingItemRequest._() : super();
  factory CreateShoppingItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateShoppingItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateShoppingItemRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'quantity')
    ..aOS(4, _omitFieldNames ? '' : 'memo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateShoppingItemRequest clone() => CreateShoppingItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateShoppingItemRequest copyWith(void Function(CreateShoppingItemRequest) updates) => super.copyWith((message) => updates(message as CreateShoppingItemRequest)) as CreateShoppingItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateShoppingItemRequest create() => CreateShoppingItemRequest._();
  CreateShoppingItemRequest createEmptyInstance() => create();
  static $pb.PbList<CreateShoppingItemRequest> createRepeated() => $pb.PbList<CreateShoppingItemRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateShoppingItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateShoppingItemRequest>(create);
  static CreateShoppingItemRequest? _defaultInstance;

  /// アイテム名
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// アイテムの量
  @$pb.TagNumber(2)
  $core.String get quantity => $_getSZ(1);
  @$pb.TagNumber(2)
  set quantity($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);

  /// アイテムのメモ
  @$pb.TagNumber(4)
  $core.String get memo => $_getSZ(2);
  @$pb.TagNumber(4)
  set memo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasMemo() => $_has(2);
  @$pb.TagNumber(4)
  void clearMemo() => clearField(4);
}

class CreateShoppingItemResponse extends $pb.GeneratedMessage {
  factory CreateShoppingItemResponse({
    ShoppingItem? item,
  }) {
    final $result = create();
    if (item != null) {
      $result.item = item;
    }
    return $result;
  }
  CreateShoppingItemResponse._() : super();
  factory CreateShoppingItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateShoppingItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateShoppingItemResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..aOM<ShoppingItem>(1, _omitFieldNames ? '' : 'item', subBuilder: ShoppingItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateShoppingItemResponse clone() => CreateShoppingItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateShoppingItemResponse copyWith(void Function(CreateShoppingItemResponse) updates) => super.copyWith((message) => updates(message as CreateShoppingItemResponse)) as CreateShoppingItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateShoppingItemResponse create() => CreateShoppingItemResponse._();
  CreateShoppingItemResponse createEmptyInstance() => create();
  static $pb.PbList<CreateShoppingItemResponse> createRepeated() => $pb.PbList<CreateShoppingItemResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateShoppingItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateShoppingItemResponse>(create);
  static CreateShoppingItemResponse? _defaultInstance;

  /// 買い物リストのアイテム
  @$pb.TagNumber(1)
  ShoppingItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(ShoppingItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  ShoppingItem ensureItem() => $_ensure(0);
}

/// アイテムの情報を更新する
class UpdateShoppingItemRequest extends $pb.GeneratedMessage {
  factory UpdateShoppingItemRequest({
    $9.Guid? id,
    $core.String? name,
    $core.String? quantity,
    $core.String? memo,
    ItemStatus? status,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (memo != null) {
      $result.memo = memo;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateShoppingItemRequest._() : super();
  factory UpdateShoppingItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateShoppingItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateShoppingItemRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..aOM<$9.Guid>(1, _omitFieldNames ? '' : 'id', subBuilder: $9.Guid.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'quantity')
    ..aOS(5, _omitFieldNames ? '' : 'memo')
    ..e<ItemStatus>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ItemStatus.ITEM_STATUS_UNSPECIFIED, valueOf: ItemStatus.valueOf, enumValues: ItemStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateShoppingItemRequest clone() => UpdateShoppingItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateShoppingItemRequest copyWith(void Function(UpdateShoppingItemRequest) updates) => super.copyWith((message) => updates(message as UpdateShoppingItemRequest)) as UpdateShoppingItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateShoppingItemRequest create() => UpdateShoppingItemRequest._();
  UpdateShoppingItemRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateShoppingItemRequest> createRepeated() => $pb.PbList<UpdateShoppingItemRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateShoppingItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateShoppingItemRequest>(create);
  static UpdateShoppingItemRequest? _defaultInstance;

  /// アイテムのGUID
  @$pb.TagNumber(1)
  $9.Guid get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($9.Guid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $9.Guid ensureId() => $_ensure(0);

  /// アイテム名
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// アイテムの量
  @$pb.TagNumber(3)
  $core.String get quantity => $_getSZ(2);
  @$pb.TagNumber(3)
  set quantity($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  /// アイテムのメモ
  @$pb.TagNumber(5)
  $core.String get memo => $_getSZ(3);
  @$pb.TagNumber(5)
  set memo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMemo() => $_has(3);
  @$pb.TagNumber(5)
  void clearMemo() => clearField(5);

  /// アイテムの状態
  @$pb.TagNumber(6)
  ItemStatus get status => $_getN(4);
  @$pb.TagNumber(6)
  set status(ItemStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);
}

class UpdateShoppingItemResponse extends $pb.GeneratedMessage {
  factory UpdateShoppingItemResponse({
    ShoppingItem? item,
  }) {
    final $result = create();
    if (item != null) {
      $result.item = item;
    }
    return $result;
  }
  UpdateShoppingItemResponse._() : super();
  factory UpdateShoppingItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateShoppingItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateShoppingItemResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..aOM<ShoppingItem>(1, _omitFieldNames ? '' : 'item', subBuilder: ShoppingItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateShoppingItemResponse clone() => UpdateShoppingItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateShoppingItemResponse copyWith(void Function(UpdateShoppingItemResponse) updates) => super.copyWith((message) => updates(message as UpdateShoppingItemResponse)) as UpdateShoppingItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateShoppingItemResponse create() => UpdateShoppingItemResponse._();
  UpdateShoppingItemResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateShoppingItemResponse> createRepeated() => $pb.PbList<UpdateShoppingItemResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateShoppingItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateShoppingItemResponse>(create);
  static UpdateShoppingItemResponse? _defaultInstance;

  /// 買い物リストのアイテム
  @$pb.TagNumber(1)
  ShoppingItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(ShoppingItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  ShoppingItem ensureItem() => $_ensure(0);
}

class DeleteShoppingItemRequest extends $pb.GeneratedMessage {
  factory DeleteShoppingItemRequest({
    $9.Guid? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteShoppingItemRequest._() : super();
  factory DeleteShoppingItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteShoppingItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteShoppingItemRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..aOM<$9.Guid>(1, _omitFieldNames ? '' : 'id', subBuilder: $9.Guid.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteShoppingItemRequest clone() => DeleteShoppingItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteShoppingItemRequest copyWith(void Function(DeleteShoppingItemRequest) updates) => super.copyWith((message) => updates(message as DeleteShoppingItemRequest)) as DeleteShoppingItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteShoppingItemRequest create() => DeleteShoppingItemRequest._();
  DeleteShoppingItemRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteShoppingItemRequest> createRepeated() => $pb.PbList<DeleteShoppingItemRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteShoppingItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteShoppingItemRequest>(create);
  static DeleteShoppingItemRequest? _defaultInstance;

  /// アイテムのGUID
  @$pb.TagNumber(1)
  $9.Guid get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($9.Guid v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $9.Guid ensureId() => $_ensure(0);
}

class DeleteShoppingItemResponse extends $pb.GeneratedMessage {
  factory DeleteShoppingItemResponse() => create();
  DeleteShoppingItemResponse._() : super();
  factory DeleteShoppingItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteShoppingItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteShoppingItemResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteShoppingItemResponse clone() => DeleteShoppingItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteShoppingItemResponse copyWith(void Function(DeleteShoppingItemResponse) updates) => super.copyWith((message) => updates(message as DeleteShoppingItemResponse)) as DeleteShoppingItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteShoppingItemResponse create() => DeleteShoppingItemResponse._();
  DeleteShoppingItemResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteShoppingItemResponse> createRepeated() => $pb.PbList<DeleteShoppingItemResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteShoppingItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteShoppingItemResponse>(create);
  static DeleteShoppingItemResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
