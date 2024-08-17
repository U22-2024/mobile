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

import 'remind_group.pb.dart' as $2;

export 'remind_group.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
class RemindGroupServiceClient extends $grpc.Client {
  static final _$getRemindGroup = $grpc.ClientMethod<$2.GetRemindGroupRequest, $2.GetRemindGroupResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroup',
      ($2.GetRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetRemindGroupResponse.fromBuffer(value));
  static final _$getRemindGroups = $grpc.ClientMethod<$2.GetRemindGroupsRequest, $2.GetRemindGroupsResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroups',
      ($2.GetRemindGroupsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetRemindGroupsResponse.fromBuffer(value));
  static final _$createRemindGroup = $grpc.ClientMethod<$2.CreateRemindGroupRequest, $2.CreateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/CreateRemindGroup',
      ($2.CreateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateRemindGroupResponse.fromBuffer(value));
  static final _$updateRemindGroup = $grpc.ClientMethod<$2.UpdateRemindGroupRequest, $2.UpdateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/UpdateRemindGroup',
      ($2.UpdateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateRemindGroupResponse.fromBuffer(value));
  static final _$deleteRemindGroup = $grpc.ClientMethod<$2.DeleteRemindGroupRequest, $2.DeleteRemindGroupResponse>(
      '/remind.v1.RemindGroupService/DeleteRemindGroup',
      ($2.DeleteRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteRemindGroupResponse.fromBuffer(value));

  RemindGroupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.GetRemindGroupResponse> getRemindGroup($2.GetRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetRemindGroupsResponse> getRemindGroups($2.GetRemindGroupsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroups, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateRemindGroupResponse> createRemindGroup($2.CreateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateRemindGroupResponse> updateRemindGroup($2.UpdateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteRemindGroupResponse> deleteRemindGroup($2.DeleteRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemindGroup, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
abstract class RemindGroupServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindGroupService';

  RemindGroupServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetRemindGroupRequest, $2.GetRemindGroupResponse>(
        'GetRemindGroup',
        getRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetRemindGroupRequest.fromBuffer(value),
        ($2.GetRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetRemindGroupsRequest, $2.GetRemindGroupsResponse>(
        'GetRemindGroups',
        getRemindGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetRemindGroupsRequest.fromBuffer(value),
        ($2.GetRemindGroupsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateRemindGroupRequest, $2.CreateRemindGroupResponse>(
        'CreateRemindGroup',
        createRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateRemindGroupRequest.fromBuffer(value),
        ($2.CreateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateRemindGroupRequest, $2.UpdateRemindGroupResponse>(
        'UpdateRemindGroup',
        updateRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateRemindGroupRequest.fromBuffer(value),
        ($2.UpdateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteRemindGroupRequest, $2.DeleteRemindGroupResponse>(
        'DeleteRemindGroup',
        deleteRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteRemindGroupRequest.fromBuffer(value),
        ($2.DeleteRemindGroupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.GetRemindGroupResponse> getRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$2.GetRemindGroupRequest> request) async {
    return getRemindGroup(call, await request);
  }

  $async.Future<$2.GetRemindGroupsResponse> getRemindGroups_Pre($grpc.ServiceCall call, $async.Future<$2.GetRemindGroupsRequest> request) async {
    return getRemindGroups(call, await request);
  }

  $async.Future<$2.CreateRemindGroupResponse> createRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$2.CreateRemindGroupRequest> request) async {
    return createRemindGroup(call, await request);
  }

  $async.Future<$2.UpdateRemindGroupResponse> updateRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateRemindGroupRequest> request) async {
    return updateRemindGroup(call, await request);
  }

  $async.Future<$2.DeleteRemindGroupResponse> deleteRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteRemindGroupRequest> request) async {
    return deleteRemindGroup(call, await request);
  }

  $async.Future<$2.GetRemindGroupResponse> getRemindGroup($grpc.ServiceCall call, $2.GetRemindGroupRequest request);
  $async.Future<$2.GetRemindGroupsResponse> getRemindGroups($grpc.ServiceCall call, $2.GetRemindGroupsRequest request);
  $async.Future<$2.CreateRemindGroupResponse> createRemindGroup($grpc.ServiceCall call, $2.CreateRemindGroupRequest request);
  $async.Future<$2.UpdateRemindGroupResponse> updateRemindGroup($grpc.ServiceCall call, $2.UpdateRemindGroupRequest request);
  $async.Future<$2.DeleteRemindGroupResponse> deleteRemindGroup($grpc.ServiceCall call, $2.DeleteRemindGroupRequest request);
}
