//
//  Generated code. Do not modify.
//  source: remind/v1/remind.proto
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

import 'remind.pb.dart' as $1;

export 'remind.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindService')
class RemindServiceClient extends $grpc.Client {
  static final _$getRemind = $grpc.ClientMethod<$1.GetRemindRequest, $1.GetRemindResponse>(
      '/remind.v1.RemindService/GetRemind',
      ($1.GetRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetRemindResponse.fromBuffer(value));
  static final _$getReminds = $grpc.ClientMethod<$1.GetRemindsRequest, $1.GetRemindsResponse>(
      '/remind.v1.RemindService/GetReminds',
      ($1.GetRemindsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetRemindsResponse.fromBuffer(value));
  static final _$createRemind = $grpc.ClientMethod<$1.CreateRemindRequest, $1.CreateRemindResponse>(
      '/remind.v1.RemindService/CreateRemind',
      ($1.CreateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreateRemindResponse.fromBuffer(value));
  static final _$updateRemind = $grpc.ClientMethod<$1.UpdateRemindRequest, $1.UpdateRemindResponse>(
      '/remind.v1.RemindService/UpdateRemind',
      ($1.UpdateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateRemindResponse.fromBuffer(value));
  static final _$deleteRemind = $grpc.ClientMethod<$1.DeleteRemindRequest, $1.DeleteRemindResponse>(
      '/remind.v1.RemindService/DeleteRemind',
      ($1.DeleteRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteRemindResponse.fromBuffer(value));

  RemindServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetRemindResponse> getRemind($1.GetRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemind, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetRemindsResponse> getReminds($1.GetRemindsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReminds, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateRemindResponse> createRemind($1.CreateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemind, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateRemindResponse> updateRemind($1.UpdateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemind, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteRemindResponse> deleteRemind($1.DeleteRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemind, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindService')
abstract class RemindServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindService';

  RemindServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetRemindRequest, $1.GetRemindResponse>(
        'GetRemind',
        getRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRemindRequest.fromBuffer(value),
        ($1.GetRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetRemindsRequest, $1.GetRemindsResponse>(
        'GetReminds',
        getReminds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRemindsRequest.fromBuffer(value),
        ($1.GetRemindsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateRemindRequest, $1.CreateRemindResponse>(
        'CreateRemind',
        createRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateRemindRequest.fromBuffer(value),
        ($1.CreateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateRemindRequest, $1.UpdateRemindResponse>(
        'UpdateRemind',
        updateRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateRemindRequest.fromBuffer(value),
        ($1.UpdateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteRemindRequest, $1.DeleteRemindResponse>(
        'DeleteRemind',
        deleteRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteRemindRequest.fromBuffer(value),
        ($1.DeleteRemindResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetRemindResponse> getRemind_Pre($grpc.ServiceCall call, $async.Future<$1.GetRemindRequest> request) async {
    return getRemind(call, await request);
  }

  $async.Future<$1.GetRemindsResponse> getReminds_Pre($grpc.ServiceCall call, $async.Future<$1.GetRemindsRequest> request) async {
    return getReminds(call, await request);
  }

  $async.Future<$1.CreateRemindResponse> createRemind_Pre($grpc.ServiceCall call, $async.Future<$1.CreateRemindRequest> request) async {
    return createRemind(call, await request);
  }

  $async.Future<$1.UpdateRemindResponse> updateRemind_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateRemindRequest> request) async {
    return updateRemind(call, await request);
  }

  $async.Future<$1.DeleteRemindResponse> deleteRemind_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteRemindRequest> request) async {
    return deleteRemind(call, await request);
  }

  $async.Future<$1.GetRemindResponse> getRemind($grpc.ServiceCall call, $1.GetRemindRequest request);
  $async.Future<$1.GetRemindsResponse> getReminds($grpc.ServiceCall call, $1.GetRemindsRequest request);
  $async.Future<$1.CreateRemindResponse> createRemind($grpc.ServiceCall call, $1.CreateRemindRequest request);
  $async.Future<$1.UpdateRemindResponse> updateRemind($grpc.ServiceCall call, $1.UpdateRemindRequest request);
  $async.Future<$1.DeleteRemindResponse> deleteRemind($grpc.ServiceCall call, $1.DeleteRemindRequest request);
}
