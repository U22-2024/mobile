//
//  Generated code. Do not modify.
//  source: remined/v1/remined.proto
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

import 'remined.pb.dart' as $0;

export 'remined.pb.dart';

@$pb.GrpcServiceName('remined.v1.ReminedService')
class ReminedServiceClient extends $grpc.Client {
  static final _$getRemined = $grpc.ClientMethod<$0.GetReminedRequest, $0.GetReminedResponse>(
      '/remined.v1.ReminedService/GetRemined',
      ($0.GetReminedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetReminedResponse.fromBuffer(value));
  static final _$getRemineds = $grpc.ClientMethod<$0.GetReminedsRequest, $0.GetReminedsResponse>(
      '/remined.v1.ReminedService/GetRemineds',
      ($0.GetReminedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetReminedsResponse.fromBuffer(value));
  static final _$createRemined = $grpc.ClientMethod<$0.CreateReminedRequest, $0.CreateReminedResponse>(
      '/remined.v1.ReminedService/CreateRemined',
      ($0.CreateReminedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateReminedResponse.fromBuffer(value));
  static final _$updateRemined = $grpc.ClientMethod<$0.UpdateReminedRequest, $0.UpdateReminedResponse>(
      '/remined.v1.ReminedService/UpdateRemined',
      ($0.UpdateReminedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateReminedResponse.fromBuffer(value));
  static final _$deleteRemined = $grpc.ClientMethod<$0.DeleteReminedRequest, $0.DeleteReminedResponse>(
      '/remined.v1.ReminedService/DeleteRemined',
      ($0.DeleteReminedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteReminedResponse.fromBuffer(value));

  ReminedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetReminedResponse> getRemined($0.GetReminedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemined, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetReminedsResponse> getRemineds($0.GetReminedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemineds, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateReminedResponse> createRemined($0.CreateReminedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemined, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateReminedResponse> updateRemined($0.UpdateReminedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemined, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteReminedResponse> deleteRemined($0.DeleteReminedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemined, request, options: options);
  }
}

@$pb.GrpcServiceName('remined.v1.ReminedService')
abstract class ReminedServiceBase extends $grpc.Service {
  $core.String get $name => 'remined.v1.ReminedService';

  ReminedServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetReminedRequest, $0.GetReminedResponse>(
        'GetRemined',
        getRemined_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetReminedRequest.fromBuffer(value),
        ($0.GetReminedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetReminedsRequest, $0.GetReminedsResponse>(
        'GetRemineds',
        getRemineds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetReminedsRequest.fromBuffer(value),
        ($0.GetReminedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateReminedRequest, $0.CreateReminedResponse>(
        'CreateRemined',
        createRemined_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateReminedRequest.fromBuffer(value),
        ($0.CreateReminedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateReminedRequest, $0.UpdateReminedResponse>(
        'UpdateRemined',
        updateRemined_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateReminedRequest.fromBuffer(value),
        ($0.UpdateReminedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteReminedRequest, $0.DeleteReminedResponse>(
        'DeleteRemined',
        deleteRemined_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteReminedRequest.fromBuffer(value),
        ($0.DeleteReminedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetReminedResponse> getRemined_Pre($grpc.ServiceCall call, $async.Future<$0.GetReminedRequest> request) async {
    return getRemined(call, await request);
  }

  $async.Future<$0.GetReminedsResponse> getRemineds_Pre($grpc.ServiceCall call, $async.Future<$0.GetReminedsRequest> request) async {
    return getRemineds(call, await request);
  }

  $async.Future<$0.CreateReminedResponse> createRemined_Pre($grpc.ServiceCall call, $async.Future<$0.CreateReminedRequest> request) async {
    return createRemined(call, await request);
  }

  $async.Future<$0.UpdateReminedResponse> updateRemined_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateReminedRequest> request) async {
    return updateRemined(call, await request);
  }

  $async.Future<$0.DeleteReminedResponse> deleteRemined_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteReminedRequest> request) async {
    return deleteRemined(call, await request);
  }

  $async.Future<$0.GetReminedResponse> getRemined($grpc.ServiceCall call, $0.GetReminedRequest request);
  $async.Future<$0.GetReminedsResponse> getRemineds($grpc.ServiceCall call, $0.GetReminedsRequest request);
  $async.Future<$0.CreateReminedResponse> createRemined($grpc.ServiceCall call, $0.CreateReminedRequest request);
  $async.Future<$0.UpdateReminedResponse> updateRemined($grpc.ServiceCall call, $0.UpdateReminedRequest request);
  $async.Future<$0.DeleteReminedResponse> deleteRemined($grpc.ServiceCall call, $0.DeleteReminedRequest request);
}
