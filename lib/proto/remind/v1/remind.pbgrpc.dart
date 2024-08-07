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

import 'remind.pb.dart' as $0;

export 'remind.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindService')
class RemindServiceClient extends $grpc.Client {
  static final _$getRemind = $grpc.ClientMethod<$0.GetRemindRequest, $0.GetRemindResponse>(
      '/remind.v1.RemindService/GetRemind',
      ($0.GetRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRemindResponse.fromBuffer(value));
  static final _$getReminds = $grpc.ClientMethod<$0.GetRemindsRequest, $0.GetRemindsResponse>(
      '/remind.v1.RemindService/GetReminds',
      ($0.GetRemindsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetRemindsResponse.fromBuffer(value));
  static final _$createRemind = $grpc.ClientMethod<$0.CreateRemindRequest, $0.CreateRemindResponse>(
      '/remind.v1.RemindService/CreateRemind',
      ($0.CreateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateRemindResponse.fromBuffer(value));
  static final _$updateRemind = $grpc.ClientMethod<$0.UpdateRemindRequest, $0.UpdateRemindResponse>(
      '/remind.v1.RemindService/UpdateRemind',
      ($0.UpdateRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateRemindResponse.fromBuffer(value));
  static final _$deleteRemind = $grpc.ClientMethod<$0.DeleteRemindRequest, $0.DeleteRemindResponse>(
      '/remind.v1.RemindService/DeleteRemind',
      ($0.DeleteRemindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteRemindResponse.fromBuffer(value));

  RemindServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetRemindResponse> getRemind($0.GetRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemind, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRemindsResponse> getReminds($0.GetRemindsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReminds, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateRemindResponse> createRemind($0.CreateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemind, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateRemindResponse> updateRemind($0.UpdateRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemind, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteRemindResponse> deleteRemind($0.DeleteRemindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemind, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindService')
abstract class RemindServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindService';

  RemindServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetRemindRequest, $0.GetRemindResponse>(
        'GetRemind',
        getRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRemindRequest.fromBuffer(value),
        ($0.GetRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRemindsRequest, $0.GetRemindsResponse>(
        'GetReminds',
        getReminds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRemindsRequest.fromBuffer(value),
        ($0.GetRemindsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateRemindRequest, $0.CreateRemindResponse>(
        'CreateRemind',
        createRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRemindRequest.fromBuffer(value),
        ($0.CreateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRemindRequest, $0.UpdateRemindResponse>(
        'UpdateRemind',
        updateRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateRemindRequest.fromBuffer(value),
        ($0.UpdateRemindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRemindRequest, $0.DeleteRemindResponse>(
        'DeleteRemind',
        deleteRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteRemindRequest.fromBuffer(value),
        ($0.DeleteRemindResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetRemindResponse> getRemind_Pre($grpc.ServiceCall call, $async.Future<$0.GetRemindRequest> request) async {
    return getRemind(call, await request);
  }

  $async.Future<$0.GetRemindsResponse> getReminds_Pre($grpc.ServiceCall call, $async.Future<$0.GetRemindsRequest> request) async {
    return getReminds(call, await request);
  }

  $async.Future<$0.CreateRemindResponse> createRemind_Pre($grpc.ServiceCall call, $async.Future<$0.CreateRemindRequest> request) async {
    return createRemind(call, await request);
  }

  $async.Future<$0.UpdateRemindResponse> updateRemind_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateRemindRequest> request) async {
    return updateRemind(call, await request);
  }

  $async.Future<$0.DeleteRemindResponse> deleteRemind_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteRemindRequest> request) async {
    return deleteRemind(call, await request);
  }

  $async.Future<$0.GetRemindResponse> getRemind($grpc.ServiceCall call, $0.GetRemindRequest request);
  $async.Future<$0.GetRemindsResponse> getReminds($grpc.ServiceCall call, $0.GetRemindsRequest request);
  $async.Future<$0.CreateRemindResponse> createRemind($grpc.ServiceCall call, $0.CreateRemindRequest request);
  $async.Future<$0.UpdateRemindResponse> updateRemind($grpc.ServiceCall call, $0.UpdateRemindRequest request);
  $async.Future<$0.DeleteRemindResponse> deleteRemind($grpc.ServiceCall call, $0.DeleteRemindRequest request);
}
