//
//  Generated code. Do not modify.
//  source: remind_template/v1/remindtemplate.proto
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

import 'remindtemplate.pb.dart' as $6;

export 'remindtemplate.pb.dart';

@$pb.GrpcServiceName('remind_template.v1.RemindTemplateService')
class RemindTemplateServiceClient extends $grpc.Client {
  static final _$getRemindTemplate = $grpc.ClientMethod<$6.GetRemindTemplateRequest, $6.GetRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/GetRemindTemplate',
      ($6.GetRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetRemindTemplateResponse.fromBuffer(value));
  static final _$getRemindTemplates = $grpc.ClientMethod<$6.GetRemindTemplatesRequest, $6.GetRemindTemplatesResponse>(
      '/remind_template.v1.RemindTemplateService/GetRemindTemplates',
      ($6.GetRemindTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetRemindTemplatesResponse.fromBuffer(value));
  static final _$createRemindTemplate = $grpc.ClientMethod<$6.CreateRemindTemplateRequest, $6.CreateRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/CreateRemindTemplate',
      ($6.CreateRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateRemindTemplateResponse.fromBuffer(value));
  static final _$updateRemindTemplate = $grpc.ClientMethod<$6.UpdateRemindTemplateRequest, $6.UpdateRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/UpdateRemindTemplate',
      ($6.UpdateRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateRemindTemplateResponse.fromBuffer(value));
  static final _$deleteRemindTemplate = $grpc.ClientMethod<$6.DeleteRemindTemplateRequest, $6.DeleteRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/DeleteRemindTemplate',
      ($6.DeleteRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteRemindTemplateResponse.fromBuffer(value));

  RemindTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.GetRemindTemplateResponse> getRemindTemplate($6.GetRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetRemindTemplatesResponse> getRemindTemplates($6.GetRemindTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateRemindTemplateResponse> createRemindTemplate($6.CreateRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateRemindTemplateResponse> updateRemindTemplate($6.UpdateRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteRemindTemplateResponse> deleteRemindTemplate($6.DeleteRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemindTemplate, request, options: options);
  }
}

@$pb.GrpcServiceName('remind_template.v1.RemindTemplateService')
abstract class RemindTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'remind_template.v1.RemindTemplateService';

  RemindTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.GetRemindTemplateRequest, $6.GetRemindTemplateResponse>(
        'GetRemindTemplate',
        getRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetRemindTemplateRequest.fromBuffer(value),
        ($6.GetRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetRemindTemplatesRequest, $6.GetRemindTemplatesResponse>(
        'GetRemindTemplates',
        getRemindTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetRemindTemplatesRequest.fromBuffer(value),
        ($6.GetRemindTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateRemindTemplateRequest, $6.CreateRemindTemplateResponse>(
        'CreateRemindTemplate',
        createRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateRemindTemplateRequest.fromBuffer(value),
        ($6.CreateRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateRemindTemplateRequest, $6.UpdateRemindTemplateResponse>(
        'UpdateRemindTemplate',
        updateRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateRemindTemplateRequest.fromBuffer(value),
        ($6.UpdateRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRemindTemplateRequest, $6.DeleteRemindTemplateResponse>(
        'DeleteRemindTemplate',
        deleteRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRemindTemplateRequest.fromBuffer(value),
        ($6.DeleteRemindTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.GetRemindTemplateResponse> getRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$6.GetRemindTemplateRequest> request) async {
    return getRemindTemplate(call, await request);
  }

  $async.Future<$6.GetRemindTemplatesResponse> getRemindTemplates_Pre($grpc.ServiceCall call, $async.Future<$6.GetRemindTemplatesRequest> request) async {
    return getRemindTemplates(call, await request);
  }

  $async.Future<$6.CreateRemindTemplateResponse> createRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$6.CreateRemindTemplateRequest> request) async {
    return createRemindTemplate(call, await request);
  }

  $async.Future<$6.UpdateRemindTemplateResponse> updateRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateRemindTemplateRequest> request) async {
    return updateRemindTemplate(call, await request);
  }

  $async.Future<$6.DeleteRemindTemplateResponse> deleteRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRemindTemplateRequest> request) async {
    return deleteRemindTemplate(call, await request);
  }

  $async.Future<$6.GetRemindTemplateResponse> getRemindTemplate($grpc.ServiceCall call, $6.GetRemindTemplateRequest request);
  $async.Future<$6.GetRemindTemplatesResponse> getRemindTemplates($grpc.ServiceCall call, $6.GetRemindTemplatesRequest request);
  $async.Future<$6.CreateRemindTemplateResponse> createRemindTemplate($grpc.ServiceCall call, $6.CreateRemindTemplateRequest request);
  $async.Future<$6.UpdateRemindTemplateResponse> updateRemindTemplate($grpc.ServiceCall call, $6.UpdateRemindTemplateRequest request);
  $async.Future<$6.DeleteRemindTemplateResponse> deleteRemindTemplate($grpc.ServiceCall call, $6.DeleteRemindTemplateRequest request);
}
