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

import 'event_material.pb.dart' as $1;

export 'event_material.pb.dart';

@$pb.GrpcServiceName('event.v1.EventMaterialService')
class EventMaterialServiceClient extends $grpc.Client {
  static final _$predictEventMaterialItem = $grpc.ClientMethod<$1.PredictEventMaterialItemRequest, $1.PredictEventMaterialItemResponse>(
      '/event.v1.EventMaterialService/PredictEventMaterialItem',
      ($1.PredictEventMaterialItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PredictEventMaterialItemResponse.fromBuffer(value));
  static final _$predictPositionsFromText = $grpc.ClientMethod<$1.PredictPositionsFromTextRequest, $1.PredictPositionsFromTextResponse>(
      '/event.v1.EventMaterialService/PredictPositionsFromText',
      ($1.PredictPositionsFromTextRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PredictPositionsFromTextResponse.fromBuffer(value));
  static final _$predictTimeTable = $grpc.ClientMethod<$1.PredictTimeTableRequest, $1.PredictTimeTableResponse>(
      '/event.v1.EventMaterialService/PredictTimeTable',
      ($1.PredictTimeTableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PredictTimeTableResponse.fromBuffer(value));

  EventMaterialServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.PredictEventMaterialItemResponse> predictEventMaterialItem($1.PredictEventMaterialItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictEventMaterialItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.PredictPositionsFromTextResponse> predictPositionsFromText($1.PredictPositionsFromTextRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictPositionsFromText, request, options: options);
  }

  $grpc.ResponseFuture<$1.PredictTimeTableResponse> predictTimeTable($1.PredictTimeTableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictTimeTable, request, options: options);
  }
}

@$pb.GrpcServiceName('event.v1.EventMaterialService')
abstract class EventMaterialServiceBase extends $grpc.Service {
  $core.String get $name => 'event.v1.EventMaterialService';

  EventMaterialServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.PredictEventMaterialItemRequest, $1.PredictEventMaterialItemResponse>(
        'PredictEventMaterialItem',
        predictEventMaterialItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PredictEventMaterialItemRequest.fromBuffer(value),
        ($1.PredictEventMaterialItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PredictPositionsFromTextRequest, $1.PredictPositionsFromTextResponse>(
        'PredictPositionsFromText',
        predictPositionsFromText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PredictPositionsFromTextRequest.fromBuffer(value),
        ($1.PredictPositionsFromTextResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PredictTimeTableRequest, $1.PredictTimeTableResponse>(
        'PredictTimeTable',
        predictTimeTable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PredictTimeTableRequest.fromBuffer(value),
        ($1.PredictTimeTableResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.PredictEventMaterialItemResponse> predictEventMaterialItem_Pre($grpc.ServiceCall call, $async.Future<$1.PredictEventMaterialItemRequest> request) async {
    return predictEventMaterialItem(call, await request);
  }

  $async.Future<$1.PredictPositionsFromTextResponse> predictPositionsFromText_Pre($grpc.ServiceCall call, $async.Future<$1.PredictPositionsFromTextRequest> request) async {
    return predictPositionsFromText(call, await request);
  }

  $async.Future<$1.PredictTimeTableResponse> predictTimeTable_Pre($grpc.ServiceCall call, $async.Future<$1.PredictTimeTableRequest> request) async {
    return predictTimeTable(call, await request);
  }

  $async.Future<$1.PredictEventMaterialItemResponse> predictEventMaterialItem($grpc.ServiceCall call, $1.PredictEventMaterialItemRequest request);
  $async.Future<$1.PredictPositionsFromTextResponse> predictPositionsFromText($grpc.ServiceCall call, $1.PredictPositionsFromTextRequest request);
  $async.Future<$1.PredictTimeTableResponse> predictTimeTable($grpc.ServiceCall call, $1.PredictTimeTableRequest request);
}
