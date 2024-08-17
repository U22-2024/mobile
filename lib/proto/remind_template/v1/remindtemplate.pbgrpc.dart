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

import 'remindtemplate.pb.dart' as $3;

export 'remindtemplate.pb.dart';

@$pb.GrpcServiceName('remind_template.v1.RemindTemplateService')
class RemindTemplateServiceClient extends $grpc.Client {
  static final _$getRemindTemplate = $grpc.ClientMethod<$3.GetRemindTemplateRequest, $3.GetRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/GetRemindTemplate',
      ($3.GetRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetRemindTemplateResponse.fromBuffer(value));
  static final _$getRemindTemplates = $grpc.ClientMethod<$3.GetRemindTemplatesRequest, $3.GetRemindTemplatesResponse>(
      '/remind_template.v1.RemindTemplateService/GetRemindTemplates',
      ($3.GetRemindTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetRemindTemplatesResponse.fromBuffer(value));
  static final _$createRemindTemplate = $grpc.ClientMethod<$3.CreateRemindTemplateRequest, $3.CreateRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/CreateRemindTemplate',
      ($3.CreateRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateRemindTemplateResponse.fromBuffer(value));
  static final _$updateRemindTemplate = $grpc.ClientMethod<$3.UpdateRemindTemplateRequest, $3.UpdateRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/UpdateRemindTemplate',
      ($3.UpdateRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateRemindTemplateResponse.fromBuffer(value));
  static final _$deleteRemindTemplate = $grpc.ClientMethod<$3.DeleteRemindTemplateRequest, $3.DeleteRemindTemplateResponse>(
      '/remind_template.v1.RemindTemplateService/DeleteRemindTemplate',
      ($3.DeleteRemindTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteRemindTemplateResponse.fromBuffer(value));

  RemindTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetRemindTemplateResponse> getRemindTemplate($3.GetRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetRemindTemplatesResponse> getRemindTemplates($3.GetRemindTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemindTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateRemindTemplateResponse> createRemindTemplate($3.CreateRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateRemindTemplateResponse> updateRemindTemplate($3.UpdateRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRemindTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteRemindTemplateResponse> deleteRemindTemplate($3.DeleteRemindTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRemindTemplate, request, options: options);
  }
}

@$pb.GrpcServiceName('remind_template.v1.RemindTemplateService')
abstract class RemindTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'remind_template.v1.RemindTemplateService';

  RemindTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetRemindTemplateRequest, $3.GetRemindTemplateResponse>(
        'GetRemindTemplate',
        getRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetRemindTemplateRequest.fromBuffer(value),
        ($3.GetRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetRemindTemplatesRequest, $3.GetRemindTemplatesResponse>(
        'GetRemindTemplates',
        getRemindTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetRemindTemplatesRequest.fromBuffer(value),
        ($3.GetRemindTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateRemindTemplateRequest, $3.CreateRemindTemplateResponse>(
        'CreateRemindTemplate',
        createRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateRemindTemplateRequest.fromBuffer(value),
        ($3.CreateRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateRemindTemplateRequest, $3.UpdateRemindTemplateResponse>(
        'UpdateRemindTemplate',
        updateRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateRemindTemplateRequest.fromBuffer(value),
        ($3.UpdateRemindTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteRemindTemplateRequest, $3.DeleteRemindTemplateResponse>(
        'DeleteRemindTemplate',
        deleteRemindTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteRemindTemplateRequest.fromBuffer(value),
        ($3.DeleteRemindTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetRemindTemplateResponse> getRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$3.GetRemindTemplateRequest> request) async {
    return getRemindTemplate(call, await request);
  }

  $async.Future<$3.GetRemindTemplatesResponse> getRemindTemplates_Pre($grpc.ServiceCall call, $async.Future<$3.GetRemindTemplatesRequest> request) async {
    return getRemindTemplates(call, await request);
  }

  $async.Future<$3.CreateRemindTemplateResponse> createRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$3.CreateRemindTemplateRequest> request) async {
    return createRemindTemplate(call, await request);
  }

  $async.Future<$3.UpdateRemindTemplateResponse> updateRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateRemindTemplateRequest> request) async {
    return updateRemindTemplate(call, await request);
  }

  $async.Future<$3.DeleteRemindTemplateResponse> deleteRemindTemplate_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteRemindTemplateRequest> request) async {
    return deleteRemindTemplate(call, await request);
  }

  $async.Future<$3.GetRemindTemplateResponse> getRemindTemplate($grpc.ServiceCall call, $3.GetRemindTemplateRequest request);
  $async.Future<$3.GetRemindTemplatesResponse> getRemindTemplates($grpc.ServiceCall call, $3.GetRemindTemplatesRequest request);
  $async.Future<$3.CreateRemindTemplateResponse> createRemindTemplate($grpc.ServiceCall call, $3.CreateRemindTemplateRequest request);
  $async.Future<$3.UpdateRemindTemplateResponse> updateRemindTemplate($grpc.ServiceCall call, $3.UpdateRemindTemplateRequest request);
  $async.Future<$3.DeleteRemindTemplateResponse> deleteRemindTemplate($grpc.ServiceCall call, $3.DeleteRemindTemplateRequest request);
}
