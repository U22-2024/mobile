//
//  Generated code. Do not modify.
//  source: proto/todo/v1/todo.proto
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

import 'todo.pb.dart' as $0;

export 'todo.pb.dart';

@$pb.GrpcServiceName('proto.todo.v1.TodoService')
class TodoServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.TodoServiceCreateRequest, $0.TodoServiceCreateResponse>(
      '/proto.todo.v1.TodoService/Create',
      ($0.TodoServiceCreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoServiceCreateResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.TodoServiceDeleteRequest, $0.TodoServiceDeleteResponse>(
      '/proto.todo.v1.TodoService/Delete',
      ($0.TodoServiceDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoServiceDeleteResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.TodoServiceCreateResponse> create($0.TodoServiceCreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoServiceDeleteResponse> delete($0.TodoServiceDeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.todo.v1.TodoService')
abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.todo.v1.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TodoServiceCreateRequest, $0.TodoServiceCreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoServiceCreateRequest.fromBuffer(value),
        ($0.TodoServiceCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoServiceDeleteRequest, $0.TodoServiceDeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoServiceDeleteRequest.fromBuffer(value),
        ($0.TodoServiceDeleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TodoServiceCreateResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.TodoServiceCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.TodoServiceDeleteResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$0.TodoServiceDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.TodoServiceCreateResponse> create($grpc.ServiceCall call, $0.TodoServiceCreateRequest request);
  $async.Future<$0.TodoServiceDeleteResponse> delete($grpc.ServiceCall call, $0.TodoServiceDeleteRequest request);
}
