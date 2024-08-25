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

import 'remind_group.pb.dart' as $4;

export 'remind_group.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
class RemindGroupServiceClient extends $grpc.Client {
  static final _$getRemindGroup = $grpc.ClientMethod<$4.GetRemindGroupRequest, $4.GetRemindGroupResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroup',
      ($4.GetRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRemindGroupResponse.fromBuffer(value));
  static final _$getRemindGroups = $grpc.ClientMethod<$4.GetRemindGroupsRequest, $4.GetRemindGroupsResponse>(
      '/remind.v1.RemindGroupService/GetRemindGroups',
      ($4.GetRemindGroupsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRemindGroupsResponse.fromBuffer(value));
  static final _$createRemindGroup = $grpc.ClientMethod<$4.CreateRemindGroupRequest, $4.CreateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/CreateRemindGroup',
      ($4.CreateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateRemindGroupResponse.fromBuffer(value));
  static final _$updateRemindGroup = $grpc.ClientMethod<$4.UpdateRemindGroupRequest, $4.UpdateRemindGroupResponse>(
      '/remind.v1.RemindGroupService/UpdateRemindGroup',
      ($4.UpdateRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateRemindGroupResponse.fromBuffer(value));
  static final _$deleteRemindGroup = $grpc.ClientMethod<$4.DeleteRemindGroupRequest, $4.DeleteRemindGroupResponse>(
      '/remind.v1.RemindGroupService/DeleteRemindGroup',
      ($4.DeleteRemindGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteRemindGroupResponse.fromBuffer(value));

  RemindGroupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetRemindGroupResponse> getRemindGroup($4.GetRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRemindGroupsResponse> getRemindGroups($4.GetRemindGroupsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindGroups, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateRemindGroupResponse> createRemindGroup($4.CreateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateRemindGroupResponse> updateRemindGroup($4.UpdateRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemindGroup, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteRemindGroupResponse> deleteRemindGroup($4.DeleteRemindGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemindGroup, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindGroupService')
abstract class RemindGroupServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindGroupService';

  RemindGroupServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetRemindGroupRequest, $4.GetRemindGroupResponse>(
        'GetRemindGroup',
        getRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRemindGroupRequest.fromBuffer(value),
        ($4.GetRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRemindGroupsRequest, $4.GetRemindGroupsResponse>(
        'GetRemindGroups',
        getRemindGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRemindGroupsRequest.fromBuffer(value),
        ($4.GetRemindGroupsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateRemindGroupRequest, $4.CreateRemindGroupResponse>(
        'CreateRemindGroup',
        createRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateRemindGroupRequest.fromBuffer(value),
        ($4.CreateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateRemindGroupRequest, $4.UpdateRemindGroupResponse>(
        'UpdateRemindGroup',
        updateRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateRemindGroupRequest.fromBuffer(value),
        ($4.UpdateRemindGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteRemindGroupRequest, $4.DeleteRemindGroupResponse>(
        'DeleteRemindGroup',
        deleteRemindGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteRemindGroupRequest.fromBuffer(value),
        ($4.DeleteRemindGroupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.GetRemindGroupResponse> getRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$4.GetRemindGroupRequest> request) async {
    return getRemindGroup(call, await request);
  }

  $async.Future<$4.GetRemindGroupsResponse> getRemindGroups_Pre($grpc.ServiceCall call, $async.Future<$4.GetRemindGroupsRequest> request) async {
    return getRemindGroups(call, await request);
  }

  $async.Future<$4.CreateRemindGroupResponse> createRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$4.CreateRemindGroupRequest> request) async {
    return createRemindGroup(call, await request);
  }

  $async.Future<$4.UpdateRemindGroupResponse> updateRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateRemindGroupRequest> request) async {
    return updateRemindGroup(call, await request);
  }

  $async.Future<$4.DeleteRemindGroupResponse> deleteRemindGroup_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteRemindGroupRequest> request) async {
    return deleteRemindGroup(call, await request);
  }

  $async.Future<$4.GetRemindGroupResponse> getRemindGroup($grpc.ServiceCall call, $4.GetRemindGroupRequest request);
  $async.Future<$4.GetRemindGroupsResponse> getRemindGroups($grpc.ServiceCall call, $4.GetRemindGroupsRequest request);
  $async.Future<$4.CreateRemindGroupResponse> createRemindGroup($grpc.ServiceCall call, $4.CreateRemindGroupRequest request);
  $async.Future<$4.UpdateRemindGroupResponse> updateRemindGroup($grpc.ServiceCall call, $4.UpdateRemindGroupRequest request);
  $async.Future<$4.DeleteRemindGroupResponse> deleteRemindGroup($grpc.ServiceCall call, $4.DeleteRemindGroupRequest request);
}
