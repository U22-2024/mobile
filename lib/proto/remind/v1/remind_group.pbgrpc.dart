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

import 'remind_group.pb.dart' as $1;

export 'remind_group.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
class RemindGroupServiceClient extends $grpc.Client {
  static final _$getRemindGroup = $grpc.ClientMethod<$1.GetRemindGroupRequest, $1.GetRemindGroupResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroup',
      ($1.GetRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetRemindGroupResponse.fromBuffer(value));
  static final _$getRemindGroups = $grpc.ClientMethod<$1.GetRemindGroupsRequest, $1.GetRemindGroupsResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroups',
      ($1.GetRemindGroupsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetRemindGroupsResponse.fromBuffer(value));
  static final _$createRemindGroup = $grpc.ClientMethod<$1.CreateRemindGroupRequest, $1.CreateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/CreateRemindGroup',
      ($1.CreateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreateRemindGroupResponse.fromBuffer(value));
  static final _$updateRemindGroup = $grpc.ClientMethod<$1.UpdateRemindGroupRequest, $1.UpdateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/UpdateRemindGroup',
      ($1.UpdateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateRemindGroupResponse.fromBuffer(value));
  static final _$deleteRemindGroup = $grpc.ClientMethod<$1.DeleteRemindGroupRequest, $1.DeleteRemindGroupResponse>(
      '/remind.v1.RemindGroupService/DeleteRemindGroup',
      ($1.DeleteRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteRemindGroupResponse.fromBuffer(value));

  RemindGroupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetRemindGroupResponse> getRemindGroup($1.GetRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetRemindGroupsResponse> getRemindGroups($1.GetRemindGroupsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroups, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateRemindGroupResponse> createRemindGroup($1.CreateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateRemindGroupResponse> updateRemindGroup($1.UpdateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteRemindGroupResponse> deleteRemindGroup($1.DeleteRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemindGroup, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
abstract class RemindGroupServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindGroupService';

  RemindGroupServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetRemindGroupRequest, $1.GetRemindGroupResponse>(
        'GetRemindGroup',
        getRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRemindGroupRequest.fromBuffer(value),
        ($1.GetRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetRemindGroupsRequest, $1.GetRemindGroupsResponse>(
        'GetRemindGroups',
        getRemindGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRemindGroupsRequest.fromBuffer(value),
        ($1.GetRemindGroupsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateRemindGroupRequest, $1.CreateRemindGroupResponse>(
        'CreateRemindGroup',
        createRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateRemindGroupRequest.fromBuffer(value),
        ($1.CreateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateRemindGroupRequest, $1.UpdateRemindGroupResponse>(
        'UpdateRemindGroup',
        updateRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateRemindGroupRequest.fromBuffer(value),
        ($1.UpdateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteRemindGroupRequest, $1.DeleteRemindGroupResponse>(
        'DeleteRemindGroup',
        deleteRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteRemindGroupRequest.fromBuffer(value),
        ($1.DeleteRemindGroupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetRemindGroupResponse> getRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$1.GetRemindGroupRequest> request) async {
    return getRemindGroup(call, await request);
  }

  $async.Future<$1.GetRemindGroupsResponse> getRemindGroups_Pre($grpc.ServiceCall call, $async.Future<$1.GetRemindGroupsRequest> request) async {
    return getRemindGroups(call, await request);
  }

  $async.Future<$1.CreateRemindGroupResponse> createRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$1.CreateRemindGroupRequest> request) async {
    return createRemindGroup(call, await request);
  }

  $async.Future<$1.UpdateRemindGroupResponse> updateRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateRemindGroupRequest> request) async {
    return updateRemindGroup(call, await request);
  }

  $async.Future<$1.DeleteRemindGroupResponse> deleteRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteRemindGroupRequest> request) async {
    return deleteRemindGroup(call, await request);
  }

  $async.Future<$1.GetRemindGroupResponse> getRemindGroup($grpc.ServiceCall call, $1.GetRemindGroupRequest request);
  $async.Future<$1.GetRemindGroupsResponse> getRemindGroups($grpc.ServiceCall call, $1.GetRemindGroupsRequest request);
  $async.Future<$1.CreateRemindGroupResponse> createRemindGroup($grpc.ServiceCall call, $1.CreateRemindGroupRequest request);
  $async.Future<$1.UpdateRemindGroupResponse> updateRemindGroup($grpc.ServiceCall call, $1.UpdateRemindGroupRequest request);
  $async.Future<$1.DeleteRemindGroupResponse> deleteRemindGroup($grpc.ServiceCall call, $1.DeleteRemindGroupRequest request);
}
