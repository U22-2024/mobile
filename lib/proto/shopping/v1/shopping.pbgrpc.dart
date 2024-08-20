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

import 'shopping.pb.dart' as $4;
import 'shopping_item.pb.dart' as $5;

export 'shopping.pb.dart';

@$pb.GrpcServiceName('shopping.v1.ShoppingService')
class ShoppingServiceClient extends $grpc.Client {
  static final _$getShoppingList = $grpc.ClientMethod<$4.GetShoppingListRequest, $4.GetShoppingListResponse>(
      '/shopping.v1.ShoppingService/GetShoppingList',
      ($4.GetShoppingListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetShoppingListResponse.fromBuffer(value));
  static final _$createShoppingItem = $grpc.ClientMethod<$5.CreateShoppingItemRequest, $5.CreateShoppingItemResponse>(
      '/shopping.v1.ShoppingService/CreateShoppingItem',
      ($5.CreateShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateShoppingItemResponse.fromBuffer(value));
  static final _$updateShoppingItem = $grpc.ClientMethod<$5.UpdateShoppingItemRequest, $5.UpdateShoppingItemResponse>(
      '/shopping.v1.ShoppingService/UpdateShoppingItem',
      ($5.UpdateShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateShoppingItemResponse.fromBuffer(value));
  static final _$deleteShoppingItem = $grpc.ClientMethod<$5.DeleteShoppingItemRequest, $5.DeleteShoppingItemResponse>(
      '/shopping.v1.ShoppingService/DeleteShoppingItem',
      ($5.DeleteShoppingItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteShoppingItemResponse.fromBuffer(value));

  ShoppingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetShoppingListResponse> getShoppingList($4.GetShoppingListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShoppingList, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateShoppingItemResponse> createShoppingItem($5.CreateShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createShoppingItem, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateShoppingItemResponse> updateShoppingItem($5.UpdateShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateShoppingItem, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteShoppingItemResponse> deleteShoppingItem($5.DeleteShoppingItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteShoppingItem, request, options: options);
  }
}

@$pb.GrpcServiceName('shopping.v1.ShoppingService')
abstract class ShoppingServiceBase extends $grpc.Service {
  $core.String get $name => 'shopping.v1.ShoppingService';

  ShoppingServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetShoppingListRequest, $4.GetShoppingListResponse>(
        'GetShoppingList',
        getShoppingList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetShoppingListRequest.fromBuffer(value),
        ($4.GetShoppingListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateShoppingItemRequest, $5.CreateShoppingItemResponse>(
        'CreateShoppingItem',
        createShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateShoppingItemRequest.fromBuffer(value),
        ($5.CreateShoppingItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateShoppingItemRequest, $5.UpdateShoppingItemResponse>(
        'UpdateShoppingItem',
        updateShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateShoppingItemRequest.fromBuffer(value),
        ($5.UpdateShoppingItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteShoppingItemRequest, $5.DeleteShoppingItemResponse>(
        'DeleteShoppingItem',
        deleteShoppingItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteShoppingItemRequest.fromBuffer(value),
        ($5.DeleteShoppingItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.GetShoppingListResponse> getShoppingList_Pre($grpc.ServiceCall call, $async.Future<$4.GetShoppingListRequest> request) async {
    return getShoppingList(call, await request);
  }

  $async.Future<$5.CreateShoppingItemResponse> createShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$5.CreateShoppingItemRequest> request) async {
    return createShoppingItem(call, await request);
  }

  $async.Future<$5.UpdateShoppingItemResponse> updateShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateShoppingItemRequest> request) async {
    return updateShoppingItem(call, await request);
  }

  $async.Future<$5.DeleteShoppingItemResponse> deleteShoppingItem_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteShoppingItemRequest> request) async {
    return deleteShoppingItem(call, await request);
  }

  $async.Future<$4.GetShoppingListResponse> getShoppingList($grpc.ServiceCall call, $4.GetShoppingListRequest request);
  $async.Future<$5.CreateShoppingItemResponse> createShoppingItem($grpc.ServiceCall call, $5.CreateShoppingItemRequest request);
  $async.Future<$5.UpdateShoppingItemResponse> updateShoppingItem($grpc.ServiceCall call, $5.UpdateShoppingItemRequest request);
  $async.Future<$5.DeleteShoppingItemResponse> deleteShoppingItem($grpc.ServiceCall call, $5.DeleteShoppingItemRequest request);
}
