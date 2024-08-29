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

import 'remind.pb.dart' as $4;

export 'remind.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindService')
class RemindServiceClient extends $grpc.Client {
  static final _$getRemind = $grpc.ClientMethod<$4.GetRemindRequest, $4.GetRemindResponse>(
      '/remind.v1.RemindService/GetRemind',
      ($4.GetRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRemindResponse.fromBuffer(value));
  static final _$getReminds = $grpc.ClientMethod<$4.GetRemindsRequest, $4.GetRemindsResponse>(
      '/remind.v1.RemindService/GetReminds',
      ($4.GetRemindsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRemindsResponse.fromBuffer(value));
  static final _$createRemind = $grpc.ClientMethod<$4.CreateRemindRequest, $4.CreateRemindResponse>(
      '/remind.v1.RemindService/CreateRemind',
      ($4.CreateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateRemindResponse.fromBuffer(value));
  static final _$updateRemind = $grpc.ClientMethod<$4.UpdateRemindRequest, $4.UpdateRemindResponse>(
      '/remind.v1.RemindService/UpdateRemind',
      ($4.UpdateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateRemindResponse.fromBuffer(value));
  static final _$deleteRemind = $grpc.ClientMethod<$4.DeleteRemindRequest, $4.DeleteRemindResponse>(
      '/remind.v1.RemindService/DeleteRemind',
      ($4.DeleteRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteRemindResponse.fromBuffer(value));

  RemindServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetRemindResponse> getRemind($4.GetRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemind, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRemindsResponse> getReminds($4.GetRemindsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReminds, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateRemindResponse> createRemind($4.CreateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemind, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateRemindResponse> updateRemind($4.UpdateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemind, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteRemindResponse> deleteRemind($4.DeleteRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemind, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindService')
abstract class RemindServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindService';

  RemindServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetRemindRequest, $4.GetRemindResponse>(
        'GetRemind',
        getRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRemindRequest.fromBuffer(value),
        ($4.GetRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRemindsRequest, $4.GetRemindsResponse>(
        'GetReminds',
        getReminds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRemindsRequest.fromBuffer(value),
        ($4.GetRemindsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateRemindRequest, $4.CreateRemindResponse>(
        'CreateRemind',
        createRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateRemindRequest.fromBuffer(value),
        ($4.CreateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateRemindRequest, $4.UpdateRemindResponse>(
        'UpdateRemind',
        updateRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateRemindRequest.fromBuffer(value),
        ($4.UpdateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteRemindRequest, $4.DeleteRemindResponse>(
        'DeleteRemind',
        deleteRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteRemindRequest.fromBuffer(value),
        ($4.DeleteRemindResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.GetRemindResponse> getRemind_Pre($grpc.ServiceCall call, $async.Future<$4.GetRemindRequest> request) async {
    return getRemind(call, await request);
  }

  $async.Future<$4.GetRemindsResponse> getReminds_Pre($grpc.ServiceCall call, $async.Future<$4.GetRemindsRequest> request) async {
    return getReminds(call, await request);
  }

  $async.Future<$4.CreateRemindResponse> createRemind_Pre($grpc.ServiceCall call, $async.Future<$4.CreateRemindRequest> request) async {
    return createRemind(call, await request);
  }

  $async.Future<$4.UpdateRemindResponse> updateRemind_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateRemindRequest> request) async {
    return updateRemind(call, await request);
  }

  $async.Future<$4.DeleteRemindResponse> deleteRemind_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteRemindRequest> request) async {
    return deleteRemind(call, await request);
  }

  $async.Future<$4.GetRemindResponse> getRemind($grpc.ServiceCall call, $4.GetRemindRequest request);
  $async.Future<$4.GetRemindsResponse> getReminds($grpc.ServiceCall call, $4.GetRemindsRequest request);
  $async.Future<$4.CreateRemindResponse> createRemind($grpc.ServiceCall call, $4.CreateRemindRequest request);
  $async.Future<$4.UpdateRemindResponse> updateRemind($grpc.ServiceCall call, $4.UpdateRemindRequest request);
  $async.Future<$4.DeleteRemindResponse> deleteRemind($grpc.ServiceCall call, $4.DeleteRemindRequest request);
}
