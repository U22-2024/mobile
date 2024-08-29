//
//  Generated code. Do not modify.
//  source: event/v1/event_material.proto
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

import 'event_material.pb.dart' as $2;

export 'event_material.pb.dart';

@$pb.GrpcServiceName('event.v1.EventMaterialService')
class EventMaterialServiceClient extends $grpc.Client {
  static final _$predictEventMaterialItem = $grpc.ClientMethod<$2.PredictEventMaterialItemRequest, $2.PredictEventMaterialItemResponse>(
      '/event.v1.EventMaterialService/PredictEventMaterialItem',
      ($2.PredictEventMaterialItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PredictEventMaterialItemResponse.fromBuffer(value));
  static final _$predictPositionsFromText = $grpc.ClientMethod<$2.PredictPositionsFromTextRequest, $2.PredictPositionsFromTextResponse>(
      '/event.v1.EventMaterialService/PredictPositionsFromText',
      ($2.PredictPositionsFromTextRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PredictPositionsFromTextResponse.fromBuffer(value));
  static final _$predictTimeTable = $grpc.ClientMethod<$2.PredictTimeTableRequest, $2.PredictTimeTableResponse>(
      '/event.v1.EventMaterialService/PredictTimeTable',
      ($2.PredictTimeTableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PredictTimeTableResponse.fromBuffer(value));
  static final _$predictEventItem = $grpc.ClientMethod<$2.PredictEventItemRequest, $2.PredictEventItemResponse>(
      '/event.v1.EventMaterialService/PredictEventItem',
      ($2.PredictEventItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PredictEventItemResponse.fromBuffer(value));

  EventMaterialServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.PredictEventMaterialItemResponse> predictEventMaterialItem($2.PredictEventMaterialItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictEventMaterialItem, request, options: options);
  }

  $grpc.ResponseFuture<$2.PredictPositionsFromTextResponse> predictPositionsFromText($2.PredictPositionsFromTextRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictPositionsFromText, request, options: options);
  }

  $grpc.ResponseFuture<$2.PredictTimeTableResponse> predictTimeTable($2.PredictTimeTableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictTimeTable, request, options: options);
  }

  $grpc.ResponseFuture<$2.PredictEventItemResponse> predictEventItem($2.PredictEventItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictEventItem, request, options: options);
  }
}

@$pb.GrpcServiceName('event.v1.EventMaterialService')
abstract class EventMaterialServiceBase extends $grpc.Service {
  $core.String get $name => 'event.v1.EventMaterialService';

  EventMaterialServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.PredictEventMaterialItemRequest, $2.PredictEventMaterialItemResponse>(
        'PredictEventMaterialItem',
        predictEventMaterialItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PredictEventMaterialItemRequest.fromBuffer(value),
        ($2.PredictEventMaterialItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PredictPositionsFromTextRequest, $2.PredictPositionsFromTextResponse>(
        'PredictPositionsFromText',
        predictPositionsFromText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PredictPositionsFromTextRequest.fromBuffer(value),
        ($2.PredictPositionsFromTextResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PredictTimeTableRequest, $2.PredictTimeTableResponse>(
        'PredictTimeTable',
        predictTimeTable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PredictTimeTableRequest.fromBuffer(value),
        ($2.PredictTimeTableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PredictEventItemRequest, $2.PredictEventItemResponse>(
        'PredictEventItem',
        predictEventItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PredictEventItemRequest.fromBuffer(value),
        ($2.PredictEventItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.PredictEventMaterialItemResponse> predictEventMaterialItem_Pre($grpc.ServiceCall call, $async.Future<$2.PredictEventMaterialItemRequest> request) async {
    return predictEventMaterialItem(call, await request);
  }

  $async.Future<$2.PredictPositionsFromTextResponse> predictPositionsFromText_Pre($grpc.ServiceCall call, $async.Future<$2.PredictPositionsFromTextRequest> request) async {
    return predictPositionsFromText(call, await request);
  }

  $async.Future<$2.PredictTimeTableResponse> predictTimeTable_Pre($grpc.ServiceCall call, $async.Future<$2.PredictTimeTableRequest> request) async {
    return predictTimeTable(call, await request);
  }

  $async.Future<$2.PredictEventItemResponse> predictEventItem_Pre($grpc.ServiceCall call, $async.Future<$2.PredictEventItemRequest> request) async {
    return predictEventItem(call, await request);
  }

  $async.Future<$2.PredictEventMaterialItemResponse> predictEventMaterialItem($grpc.ServiceCall call, $2.PredictEventMaterialItemRequest request);
  $async.Future<$2.PredictPositionsFromTextResponse> predictPositionsFromText($grpc.ServiceCall call, $2.PredictPositionsFromTextRequest request);
  $async.Future<$2.PredictTimeTableResponse> predictTimeTable($grpc.ServiceCall call, $2.PredictTimeTableRequest request);
  $async.Future<$2.PredictEventItemResponse> predictEventItem($grpc.ServiceCall call, $2.PredictEventItemRequest request);
}
