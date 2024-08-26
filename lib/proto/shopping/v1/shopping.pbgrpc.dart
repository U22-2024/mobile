//
//  Generated code. Do not modify.
//  source: shopping/v1/shopping.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'shopping.pb.dart' as $7;
import 'shopping_item.pb.dart' as $8;

export 'shopping.pb.dart';

@$pb.GrpcServiceName('shopping.v1.ShoppingService')
class ShoppingServiceClient extends $grpc.Client {
  static final _$getShoppingList = $grpc.ClientMethod<$7.GetShoppingListRequest, $7.GetShoppingListResponse>(
      '/shopping.v1.ShoppingService/GetShoppingList',
      ($7.GetShoppingListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetShoppingListResponse.fromBuffer(value));
  static final _$createShoppingItem = $grpc.ClientMethod<$8.CreateShoppingItemRequest, $8.CreateShoppingItemResponse>(
      '/shopping.v1.ShoppingService/CreateShoppingItem',
      ($8.CreateShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateShoppingItemResponse.fromBuffer(value));
  static final _$updateShoppingItem = $grpc.ClientMethod<$8.UpdateShoppingItemRequest, $8.UpdateShoppingItemResponse>(
      '/shopping.v1.ShoppingService/UpdateShoppingItem',
      ($8.UpdateShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateShoppingItemResponse.fromBuffer(value));
  static final _$deleteShoppingItem = $grpc.ClientMethod<$8.DeleteShoppingItemRequest, $8.DeleteShoppingItemResponse>(
      '/shopping.v1.ShoppingService/DeleteShoppingItem',
      ($8.DeleteShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteShoppingItemResponse.fromBuffer(value));

  ShoppingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.GetShoppingListResponse> getShoppingList($7.GetShoppingListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShoppingList, request, options: options);
  }

  $grpc.ResponseFuture<$8.CreateShoppingItemResponse> createShoppingItem($8.CreateShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createShoppingItem, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateShoppingItemResponse> updateShoppingItem($8.UpdateShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateShoppingItem, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteShoppingItemResponse> deleteShoppingItem($8.DeleteShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteShoppingItem, request, options: options);
  }
}

@$pb.GrpcServiceName('shopping.v1.ShoppingService')
abstract class ShoppingServiceBase extends $grpc.Service {
  $core.String get $name => 'shopping.v1.ShoppingService';

  ShoppingServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetShoppingListRequest, $7.GetShoppingListResponse>(
        'GetShoppingList',
        getShoppingList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetShoppingListRequest.fromBuffer(value),
        ($7.GetShoppingListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateShoppingItemRequest, $8.CreateShoppingItemResponse>(
        'CreateShoppingItem',
        createShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateShoppingItemRequest.fromBuffer(value),
        ($8.CreateShoppingItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateShoppingItemRequest, $8.UpdateShoppingItemResponse>(
        'UpdateShoppingItem',
        updateShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateShoppingItemRequest.fromBuffer(value),
        ($8.UpdateShoppingItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteShoppingItemRequest, $8.DeleteShoppingItemResponse>(
        'DeleteShoppingItem',
        deleteShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteShoppingItemRequest.fromBuffer(value),
        ($8.DeleteShoppingItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.GetShoppingListResponse> getShoppingList_Pre($grpc.ServiceCall call, $async.Future<$7.GetShoppingListRequest> request) async {
    return getShoppingList(call, await request);
  }

  $async.Future<$8.CreateShoppingItemResponse> createShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$8.CreateShoppingItemRequest> request) async {
    return createShoppingItem(call, await request);
  }

  $async.Future<$8.UpdateShoppingItemResponse> updateShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateShoppingItemRequest> request) async {
    return updateShoppingItem(call, await request);
  }

  $async.Future<$8.DeleteShoppingItemResponse> deleteShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteShoppingItemRequest> request) async {
    return deleteShoppingItem(call, await request);
  }

  $async.Future<$7.GetShoppingListResponse> getShoppingList($grpc.ServiceCall call, $7.GetShoppingListRequest request);
  $async.Future<$8.CreateShoppingItemResponse> createShoppingItem($grpc.ServiceCall call, $8.CreateShoppingItemRequest request);
  $async.Future<$8.UpdateShoppingItemResponse> updateShoppingItem($grpc.ServiceCall call, $8.UpdateShoppingItemRequest request);
  $async.Future<$8.DeleteShoppingItemResponse> deleteShoppingItem($grpc.ServiceCall call, $8.DeleteShoppingItemRequest request);
}
