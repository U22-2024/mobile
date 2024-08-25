//
//  Generated code. Do not modify.
//  source: remind/v1/remind_predict.proto
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

import 'remind_predict.pb.dart' as $5;

export 'remind_predict.pb.dart';

@$pb.GrpcServiceName('remind.v1.RemindPredictService')
class RemindPredictServiceClient extends $grpc.Client {
  static final _$predictByTitle = $grpc.ClientMethod<$5.PredictByTitleRequest, $5.PredictByTitleResponse>(
      '/remind.v1.RemindPredictService/PredictByTitle',
      ($5.PredictByTitleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.PredictByTitleResponse.fromBuffer(value));

  RemindPredictServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.PredictByTitleResponse> predictByTitle($5.PredictByTitleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predictByTitle, request, options: options);
  }
}

@$pb.GrpcServiceName('remind.v1.RemindPredictService')
abstract class RemindPredictServiceBase extends $grpc.Service {
  $core.String get $name => 'remind.v1.RemindPredictService';

  RemindPredictServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.PredictByTitleRequest, $5.PredictByTitleResponse>(
        'PredictByTitle',
        predictByTitle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.PredictByTitleRequest.fromBuffer(value),
        ($5.PredictByTitleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.PredictByTitleResponse> predictByTitle_Pre($grpc.ServiceCall call, $async.Future<$5.PredictByTitleRequest> request) async {
    return predictByTitle(call, await request);
  }

  $async.Future<$5.PredictByTitleResponse> predictByTitle($grpc.ServiceCall call, $5.PredictByTitleRequest request);
}
