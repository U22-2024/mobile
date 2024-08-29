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

import 'shopping.pb.dart' as $8;
import 'shopping_item.pb.dart' as $9;

export 'shopping.pb.dart';

@$pb.GrpcServiceName('shopping.v1.ShoppingService')
class ShoppingServiceClient extends $grpc.Client {
  static final _$getShoppingList = $grpc.ClientMethod<$8.GetShoppingListRequest, $8.GetShoppingListResponse>(
      '/shopping.v1.ShoppingService/GetShoppingList',
      ($8.GetShoppingListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetShoppingListResponse.fromBuffer(value));
  static final _$createShoppingItem = $grpc.ClientMethod<$9.CreateShoppingItemRequest, $9.CreateShoppingItemResponse>(
      '/shopping.v1.ShoppingService/CreateShoppingItem',
      ($9.CreateShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateShoppingItemResponse.fromBuffer(value));
  static final _$updateShoppingItem = $grpc.ClientMethod<$9.UpdateShoppingItemRequest, $9.UpdateShoppingItemResponse>(
      '/shopping.v1.ShoppingService/UpdateShoppingItem',
      ($9.UpdateShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateShoppingItemResponse.fromBuffer(value));
  static final _$deleteShoppingItem = $grpc.ClientMethod<$9.DeleteShoppingItemRequest, $9.DeleteShoppingItemResponse>(
      '/shopping.v1.ShoppingService/DeleteShoppingItem',
      ($9.DeleteShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteShoppingItemResponse.fromBuffer(value));

  ShoppingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.GetShoppingListResponse> getShoppingList($8.GetShoppingListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShoppingList, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateShoppingItemResponse> createShoppingItem($9.CreateShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createShoppingItem, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateShoppingItemResponse> updateShoppingItem($9.UpdateShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateShoppingItem, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteShoppingItemResponse> deleteShoppingItem($9.DeleteShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteShoppingItem, request, options: options);
  }
}

@$pb.GrpcServiceName('shopping.v1.ShoppingService')
abstract class ShoppingServiceBase extends $grpc.Service {
  $core.String get $name => 'shopping.v1.ShoppingService';

  ShoppingServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.GetShoppingListRequest, $8.GetShoppingListResponse>(
        'GetShoppingList',
        getShoppingList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetShoppingListRequest.fromBuffer(value),
        ($8.GetShoppingListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateShoppingItemRequest, $9.CreateShoppingItemResponse>(
        'CreateShoppingItem',
        createShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateShoppingItemRequest.fromBuffer(value),
        ($9.CreateShoppingItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateShoppingItemRequest, $9.UpdateShoppingItemResponse>(
        'UpdateShoppingItem',
        updateShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateShoppingItemRequest.fromBuffer(value),
        ($9.UpdateShoppingItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteShoppingItemRequest, $9.DeleteShoppingItemResponse>(
        'DeleteShoppingItem',
        deleteShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteShoppingItemRequest.fromBuffer(value),
        ($9.DeleteShoppingItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.GetShoppingListResponse> getShoppingList_Pre($grpc.ServiceCall call, $async.Future<$8.GetShoppingListRequest> request) async {
    return getShoppingList(call, await request);
  }

  $async.Future<$9.CreateShoppingItemResponse> createShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$9.CreateShoppingItemRequest> request) async {
    return createShoppingItem(call, await request);
  }

  $async.Future<$9.UpdateShoppingItemResponse> updateShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateShoppingItemRequest> request) async {
    return updateShoppingItem(call, await request);
  }

  $async.Future<$9.DeleteShoppingItemResponse> deleteShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteShoppingItemRequest> request) async {
    return deleteShoppingItem(call, await request);
  }

  $async.Future<$8.GetShoppingListResponse> getShoppingList($grpc.ServiceCall call, $8.GetShoppingListRequest request);
  $async.Future<$9.CreateShoppingItemResponse> createShoppingItem($grpc.ServiceCall call, $9.CreateShoppingItemRequest request);
  $async.Future<$9.UpdateShoppingItemResponse> updateShoppingItem($grpc.ServiceCall call, $9.UpdateShoppingItemRequest request);
  $async.Future<$9.DeleteShoppingItemResponse> deleteShoppingItem($grpc.ServiceCall call, $9.DeleteShoppingItemRequest request);
}
