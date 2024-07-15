//
//  Generated code. Do not modify.
//  source: proto/user/v1/user.proto
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

import 'user.pb.dart' as $1;

export 'user.pb.dart';

@$pb.GrpcServiceName('proto.user.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$1.UserServiceCreateRequest, $1.UserServiceCreateResponse>(
      '/proto.user.v1.UserService/Create',
      ($1.UserServiceCreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UserServiceCreateResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$1.UserServiceReadRequest, $1.UserServiceReadResponse>(
      '/proto.user.v1.UserService/Read',
      ($1.UserServiceReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UserServiceReadResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.UserServiceCreateResponse> create($1.UserServiceCreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.UserServiceReadResponse> read($1.UserServiceReadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.user.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.user.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.UserServiceCreateRequest, $1.UserServiceCreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserServiceCreateRequest.fromBuffer(value),
        ($1.UserServiceCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UserServiceReadRequest, $1.UserServiceReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserServiceReadRequest.fromBuffer(value),
        ($1.UserServiceReadResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.UserServiceCreateResponse> create_Pre($grpc.ServiceCall call, $async.Future<$1.UserServiceCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.UserServiceReadResponse> read_Pre($grpc.ServiceCall call, $async.Future<$1.UserServiceReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$1.UserServiceCreateResponse> create($grpc.ServiceCall call, $1.UserServiceCreateRequest request);
  $async.Future<$1.UserServiceReadResponse> read($grpc.ServiceCall call, $1.UserServiceReadRequest request);
}
