//
//  Generated code. Do not modify.
//  source: advice/v1/advice_outing.proto
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

import 'advice_outing.pb.dart' as $0;

export 'advice_outing.pb.dart';

@$pb.GrpcServiceName('advice.v1.AdviceOutingService')
class AdviceOutingServiceClient extends $grpc.Client {
  static final _$getAdvice = $grpc.ClientMethod<$0.GetAdviceRequest, $0.GetAdviceResponse>(
      '/advice.v1.AdviceOutingService/GetAdvice',
      ($0.GetAdviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAdviceResponse.fromBuffer(value));

  AdviceOutingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetAdviceResponse> getAdvice($0.GetAdviceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAdvice, request, options: options);
  }
}

@$pb.GrpcServiceName('advice.v1.AdviceOutingService')
abstract class AdviceOutingServiceBase extends $grpc.Service {
  $core.String get $name => 'advice.v1.AdviceOutingService';

  AdviceOutingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAdviceRequest, $0.GetAdviceResponse>(
        'GetAdvice',
        getAdvice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAdviceRequest.fromBuffer(value),
        ($0.GetAdviceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetAdviceResponse> getAdvice_Pre($grpc.ServiceCall call, $async.Future<$0.GetAdviceRequest> request) async {
    return getAdvice(call, await request);
  }

  $async.Future<$0.GetAdviceResponse> getAdvice($grpc.ServiceCall call, $0.GetAdviceRequest request);
}
