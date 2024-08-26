//
//  Generated code. Do not modify.
//  source: shopping/v1/shopping.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'shopping_item.pb.dart' as $8;

/// リクエストしたユーザーのUIDに紐づく買い物リストのアイテムを取得する
class GetShoppingListRequest extends $pb.GeneratedMessage {
  factory GetShoppingListRequest() => create();
  GetShoppingListRequest._() : super();
  factory GetShoppingListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetShoppingListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetShoppingListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetShoppingListRequest clone() => GetShoppingListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetShoppingListRequest copyWith(void Function(GetShoppingListRequest) updates) => super.copyWith((message) => updates(message as GetShoppingListRequest)) as GetShoppingListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetShoppingListRequest create() => GetShoppingListRequest._();
  GetShoppingListRequest createEmptyInstance() => create();
  static $pb.PbList<GetShoppingListRequest> createRepeated() => $pb.PbList<GetShoppingListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetShoppingListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShoppingListRequest>(create);
  static GetShoppingListRequest? _defaultInstance;
}

class GetShoppingListResponse extends $pb.GeneratedMessage {
  factory GetShoppingListResponse({
    $core.Iterable<$8.ShoppingItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  GetShoppingListResponse._() : super();
  factory GetShoppingListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetShoppingListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetShoppingListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shopping.v1'), createEmptyInstance: create)
    ..pc<$8.ShoppingItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: $8.ShoppingItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetShoppingListResponse clone() => GetShoppingListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetShoppingListResponse copyWith(void Function(GetShoppingListResponse) updates) => super.copyWith((message) => updates(message as GetShoppingListResponse)) as GetShoppingListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetShoppingListResponse create() => GetShoppingListResponse._();
  GetShoppingListResponse createEmptyInstance() => create();
  static $pb.PbList<GetShoppingListResponse> createRepeated() => $pb.PbList<GetShoppingListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetShoppingListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShoppingListResponse>(create);
  static GetShoppingListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$8.ShoppingItem> get items => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
