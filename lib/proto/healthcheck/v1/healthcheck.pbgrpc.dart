//
//  Generated code. Do not modify.
//  source: healthcheck/v1/healthcheck.proto
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

import 'healthcheck.pb.dart' as $0;

export 'healthcheck.pb.dart';

@$pb.GrpcServiceName('healthcheck.v1.HealthCheckService')
class HealthCheckServiceClient extends $grpc.Client {
  static final _$healthCheck = $grpc.ClientMethod<$0.HealthCheckRequest, $0.HealthCheckResponse>(
      '/healthcheck.v1.HealthCheckService/HealthCheck',
      ($0.HealthCheckRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HealthCheckResponse.fromBuffer(value));

  HealthCheckServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.HealthCheckResponse> healthCheck($0.HealthCheckRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$healthCheck, request, options: options);
  }
}

@$pb.GrpcServiceName('healthcheck.v1.HealthCheckService')
abstract class HealthCheckServiceBase extends $grpc.Service {
  $core.String get $name => 'healthcheck.v1.HealthCheckService';

  HealthCheckServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HealthCheckRequest, $0.HealthCheckResponse>(
        'HealthCheck',
        healthCheck_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HealthCheckRequest.fromBuffer(value),
        ($0.HealthCheckResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.HealthCheckResponse> healthCheck_Pre($grpc.ServiceCall call, $async.Future<$0.HealthCheckRequest> request) async {
    return healthCheck(call, await request);
  }

  $async.Future<$0.HealthCheckResponse> healthCheck($grpc.ServiceCall call, $0.HealthCheckRequest request);
}
