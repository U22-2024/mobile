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

import 'remind.pb.dart' as $3;

export 'remind.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindService')
class RemindServiceClient extends $grpc.Client {
  static final _$getRemind = $grpc.ClientMethod<$3.GetRemindRequest, $3.GetRemindResponse>(
      '/remind.v1.RemindService/GetRemind',
      ($3.GetRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetRemindResponse.fromBuffer(value));
  static final _$getReminds = $grpc.ClientMethod<$3.GetRemindsRequest, $3.GetRemindsResponse>(
      '/remind.v1.RemindService/GetReminds',
      ($3.GetRemindsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetRemindsResponse.fromBuffer(value));
  static final _$createRemind = $grpc.ClientMethod<$3.CreateRemindRequest, $3.CreateRemindResponse>(
      '/remind.v1.RemindService/CreateRemind',
      ($3.CreateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateRemindResponse.fromBuffer(value));
  static final _$updateRemind = $grpc.ClientMethod<$3.UpdateRemindRequest, $3.UpdateRemindResponse>(
      '/remind.v1.RemindService/UpdateRemind',
      ($3.UpdateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateRemindResponse.fromBuffer(value));
  static final _$deleteRemind = $grpc.ClientMethod<$3.DeleteRemindRequest, $3.DeleteRemindResponse>(
      '/remind.v1.RemindService/DeleteRemind',
      ($3.DeleteRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteRemindResponse.fromBuffer(value));

  RemindServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetRemindResponse> getRemind($3.GetRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemind, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetRemindsResponse> getReminds($3.GetRemindsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReminds, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateRemindResponse> createRemind($3.CreateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemind, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateRemindResponse> updateRemind($3.UpdateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemind, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteRemindResponse> deleteRemind($3.DeleteRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemind, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindService')
abstract class RemindServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindService';

  RemindServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetRemindRequest, $3.GetRemindResponse>(
        'GetRemind',
        getRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetRemindRequest.fromBuffer(value),
        ($3.GetRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetRemindsRequest, $3.GetRemindsResponse>(
        'GetReminds',
        getReminds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetRemindsRequest.fromBuffer(value),
        ($3.GetRemindsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateRemindRequest, $3.CreateRemindResponse>(
        'CreateRemind',
        createRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateRemindRequest.fromBuffer(value),
        ($3.CreateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateRemindRequest, $3.UpdateRemindResponse>(
        'UpdateRemind',
        updateRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateRemindRequest.fromBuffer(value),
        ($3.UpdateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteRemindRequest, $3.DeleteRemindResponse>(
        'DeleteRemind',
        deleteRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteRemindRequest.fromBuffer(value),
        ($3.DeleteRemindResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetRemindResponse> getRemind_Pre($grpc.ServiceCall call, $async.Future<$3.GetRemindRequest> request) async {
    return getRemind(call, await request);
  }

  $async.Future<$3.GetRemindsResponse> getReminds_Pre($grpc.ServiceCall call, $async.Future<$3.GetRemindsRequest> request) async {
    return getReminds(call, await request);
  }

  $async.Future<$3.CreateRemindResponse> createRemind_Pre($grpc.ServiceCall call, $async.Future<$3.CreateRemindRequest> request) async {
    return createRemind(call, await request);
  }

  $async.Future<$3.UpdateRemindResponse> updateRemind_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateRemindRequest> request) async {
    return updateRemind(call, await request);
  }

  $async.Future<$3.DeleteRemindResponse> deleteRemind_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteRemindRequest> request) async {
    return deleteRemind(call, await request);
  }

  $async.Future<$3.GetRemindResponse> getRemind($grpc.ServiceCall call, $3.GetRemindRequest request);
  $async.Future<$3.GetRemindsResponse> getReminds($grpc.ServiceCall call, $3.GetRemindsRequest request);
  $async.Future<$3.CreateRemindResponse> createRemind($grpc.ServiceCall call, $3.CreateRemindRequest request);
  $async.Future<$3.UpdateRemindResponse> updateRemind($grpc.ServiceCall call, $3.UpdateRemindRequest request);
  $async.Future<$3.DeleteRemindResponse> deleteRemind($grpc.ServiceCall call, $3.DeleteRemindRequest request);
}
