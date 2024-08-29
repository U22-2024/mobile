//
//  Generated code. Do not modify.
//  source: greet/v1/greet.proto
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

import 'greet.pb.dart' as $3;

export 'greet.pb.dart';

@$pb.GrpcServiceName('greet.v1.GreetService')
class GreetServiceClient extends $grpc.Client {
  static final _$getGreet = $grpc.ClientMethod<$3.GetGreetRequest, $3.GetGreetResponse>(
      '/greet.v1.GreetService/GetGreet',
      ($3.GetGreetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetGreetResponse.fromBuffer(value));

  GreetServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetGreetResponse> getGreet($3.GetGreetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGreet, request, options: options);
  }
}

@$pb.GrpcServiceName('greet.v1.GreetService')
abstract class GreetServiceBase extends $grpc.Service {
  $core.String get $name => 'greet.v1.GreetService';

  GreetServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetGreetRequest, $3.GetGreetResponse>(
        'GetGreet',
        getGreet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetGreetRequest.fromBuffer(value),
        ($3.GetGreetResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetGreetResponse> getGreet_Pre($grpc.ServiceCall call, $async.Future<$3.GetGreetRequest> request) async {
    return getGreet(call, await request);
  }

  $async.Future<$3.GetGreetResponse> getGreet($grpc.ServiceCall call, $3.GetGreetRequest request);
}
