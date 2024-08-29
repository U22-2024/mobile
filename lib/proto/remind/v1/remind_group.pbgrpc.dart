//
//  Generated code. Do not modify.
//  source: remind/v1/remind_group.proto
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

import 'remind_group.pb.dart' as $5;

export 'remind_group.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
class RemindGroupServiceClient extends $grpc.Client {
  static final _$getRemindGroup = $grpc.ClientMethod<$5.GetRemindGroupRequest, $5.GetRemindGroupResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroup',
      ($5.GetRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRemindGroupResponse.fromBuffer(value));
  static final _$getRemindGroups = $grpc.ClientMethod<$5.GetRemindGroupsRequest, $5.GetRemindGroupsResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroups',
      ($5.GetRemindGroupsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRemindGroupsResponse.fromBuffer(value));
  static final _$createRemindGroup = $grpc.ClientMethod<$5.CreateRemindGroupRequest, $5.CreateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/CreateRemindGroup',
      ($5.CreateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateRemindGroupResponse.fromBuffer(value));
  static final _$updateRemindGroup = $grpc.ClientMethod<$5.UpdateRemindGroupRequest, $5.UpdateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/UpdateRemindGroup',
      ($5.UpdateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateRemindGroupResponse.fromBuffer(value));
  static final _$deleteRemindGroup = $grpc.ClientMethod<$5.DeleteRemindGroupRequest, $5.DeleteRemindGroupResponse>(
      '/remind.v1.RemindGroupService/DeleteRemindGroup',
      ($5.DeleteRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteRemindGroupResponse.fromBuffer(value));

  RemindGroupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.GetRemindGroupResponse> getRemindGroup($5.GetRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRemindGroupsResponse> getRemindGroups($5.GetRemindGroupsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroups, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateRemindGroupResponse> createRemindGroup($5.CreateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateRemindGroupResponse> updateRemindGroup($5.UpdateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteRemindGroupResponse> deleteRemindGroup($5.DeleteRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemindGroup, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
abstract class RemindGroupServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindGroupService';

  RemindGroupServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.GetRemindGroupRequest, $5.GetRemindGroupResponse>(
        'GetRemindGroup',
        getRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRemindGroupRequest.fromBuffer(value),
        ($5.GetRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRemindGroupsRequest, $5.GetRemindGroupsResponse>(
        'GetRemindGroups',
        getRemindGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRemindGroupsRequest.fromBuffer(value),
        ($5.GetRemindGroupsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateRemindGroupRequest, $5.CreateRemindGroupResponse>(
        'CreateRemindGroup',
        createRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateRemindGroupRequest.fromBuffer(value),
        ($5.CreateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateRemindGroupRequest, $5.UpdateRemindGroupResponse>(
        'UpdateRemindGroup',
        updateRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateRemindGroupRequest.fromBuffer(value),
        ($5.UpdateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteRemindGroupRequest, $5.DeleteRemindGroupResponse>(
        'DeleteRemindGroup',
        deleteRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteRemindGroupRequest.fromBuffer(value),
        ($5.DeleteRemindGroupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.GetRemindGroupResponse> getRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$5.GetRemindGroupRequest> request) async {
    return getRemindGroup(call, await request);
  }

  $async.Future<$5.GetRemindGroupsResponse> getRemindGroups_Pre($grpc.ServiceCall call, $async.Future<$5.GetRemindGroupsRequest> request) async {
    return getRemindGroups(call, await request);
  }

  $async.Future<$5.CreateRemindGroupResponse> createRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$5.CreateRemindGroupRequest> request) async {
    return createRemindGroup(call, await request);
  }

  $async.Future<$5.UpdateRemindGroupResponse> updateRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateRemindGroupRequest> request) async {
    return updateRemindGroup(call, await request);
  }

  $async.Future<$5.DeleteRemindGroupResponse> deleteRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteRemindGroupRequest> request) async {
    return deleteRemindGroup(call, await request);
  }

  $async.Future<$5.GetRemindGroupResponse> getRemindGroup($grpc.ServiceCall call, $5.GetRemindGroupRequest request);
  $async.Future<$5.GetRemindGroupsResponse> getRemindGroups($grpc.ServiceCall call, $5.GetRemindGroupsRequest request);
  $async.Future<$5.CreateRemindGroupResponse> createRemindGroup($grpc.ServiceCall call, $5.CreateRemindGroupRequest request);
  $async.Future<$5.UpdateRemindGroupResponse> updateRemindGroup($grpc.ServiceCall call, $5.UpdateRemindGroupRequest request);
  $async.Future<$5.DeleteRemindGroupResponse> deleteRemindGroup($grpc.ServiceCall call, $5.DeleteRemindGroupRequest request);
}
