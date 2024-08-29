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

import 'remindtemplate.pb.dart' as $7;

export 'remindtemplate.pb.dart';

@$pb.GrpcServiceName('remind_template.v1.RemindTemplateService')
class RemindTemplateServiceClient extends $grpc.Client {
  static final _$getRemindTemplate = $grpc.ClientMethod<$7.GetRemindTemplateRequest, $7.GetRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/GetRemindTemplate',
      ($7.GetRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetRemindTemplateResponse.fromBuffer(value));
  static final _$getRemindTemplates = $grpc.ClientMethod<$7.GetRemindTemplatesRequest, $7.GetRemindTemplatesResponse>(
      '/remind_template.v1.RemindTemplateService/GetRemindTemplates',
      ($7.GetRemindTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetRemindTemplatesResponse.fromBuffer(value));
  static final _$createRemindTemplate = $grpc.ClientMethod<$7.CreateRemindTemplateRequest, $7.CreateRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/CreateRemindTemplate',
      ($7.CreateRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateRemindTemplateResponse.fromBuffer(value));
  static final _$updateRemindTemplate = $grpc.ClientMethod<$7.UpdateRemindTemplateRequest, $7.UpdateRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/UpdateRemindTemplate',
      ($7.UpdateRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateRemindTemplateResponse.fromBuffer(value));
  static final _$deleteRemindTemplate = $grpc.ClientMethod<$7.DeleteRemindTemplateRequest, $7.DeleteRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/DeleteRemindTemplate',
      ($7.DeleteRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteRemindTemplateResponse.fromBuffer(value));

  RemindTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.GetRemindTemplateResponse> getRemindTemplate($7.GetRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetRemindTemplatesResponse> getRemindTemplates($7.GetRemindTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateRemindTemplateResponse> createRemindTemplate($7.CreateRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateRemindTemplateResponse> updateRemindTemplate($7.UpdateRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteRemindTemplateResponse> deleteRemindTemplate($7.DeleteRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemindTemplate, request, options: options);
  }
}

@$pb.GrpcServiceName('remind_template.v1.RemindTemplateService')
abstract class RemindTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'remind_template.v1.RemindTemplateService';

  RemindTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetRemindTemplateRequest, $7.GetRemindTemplateResponse>(
        'GetRemindTemplate',
        getRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRemindTemplateRequest.fromBuffer(value),
        ($7.GetRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetRemindTemplatesRequest, $7.GetRemindTemplatesResponse>(
        'GetRemindTemplates',
        getRemindTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRemindTemplatesRequest.fromBuffer(value),
        ($7.GetRemindTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateRemindTemplateRequest, $7.CreateRemindTemplateResponse>(
        'CreateRemindTemplate',
        createRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateRemindTemplateRequest.fromBuffer(value),
        ($7.CreateRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateRemindTemplateRequest, $7.UpdateRemindTemplateResponse>(
        'UpdateRemindTemplate',
        updateRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateRemindTemplateRequest.fromBuffer(value),
        ($7.UpdateRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteRemindTemplateRequest, $7.DeleteRemindTemplateResponse>(
        'DeleteRemindTemplate',
        deleteRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteRemindTemplateRequest.fromBuffer(value),
        ($7.DeleteRemindTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.GetRemindTemplateResponse> getRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$7.GetRemindTemplateRequest> request) async {
    return getRemindTemplate(call, await request);
  }

  $async.Future<$7.GetRemindTemplatesResponse> getRemindTemplates_Pre($grpc.ServiceCall call, $async.Future<$7.GetRemindTemplatesRequest> request) async {
    return getRemindTemplates(call, await request);
  }

  $async.Future<$7.CreateRemindTemplateResponse> createRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$7.CreateRemindTemplateRequest> request) async {
    return createRemindTemplate(call, await request);
  }

  $async.Future<$7.UpdateRemindTemplateResponse> updateRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateRemindTemplateRequest> request) async {
    return updateRemindTemplate(call, await request);
  }

  $async.Future<$7.DeleteRemindTemplateResponse> deleteRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteRemindTemplateRequest> request) async {
    return deleteRemindTemplate(call, await request);
  }

  $async.Future<$7.GetRemindTemplateResponse> getRemindTemplate($grpc.ServiceCall call, $7.GetRemindTemplateRequest request);
  $async.Future<$7.GetRemindTemplatesResponse> getRemindTemplates($grpc.ServiceCall call, $7.GetRemindTemplatesRequest request);
  $async.Future<$7.CreateRemindTemplateResponse> createRemindTemplate($grpc.ServiceCall call, $7.CreateRemindTemplateRequest request);
  $async.Future<$7.UpdateRemindTemplateResponse> updateRemindTemplate($grpc.ServiceCall call, $7.UpdateRemindTemplateRequest request);
  $async.Future<$7.DeleteRemindTemplateResponse> deleteRemindTemplate($grpc.ServiceCall call, $7.DeleteRemindTemplateRequest request);
}
