//
//  Generated code. Do not modify.
//  source: event/v1/event.proto
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

import 'event.pb.dart' as $0;

export 'event.pb.dart';

@$pb.GrpcServiceName('event.v1.EventService')
class EventServiceClient extends $grpc.Client {
  static final _$getEvent = $grpc.ClientMethod<$0.GetEventRequest, $0.GetEventResponse>(
      '/event.v1.EventService/GetEvent',
      ($0.GetEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetEventResponse.fromBuffer(value));
  static final _$getEvents = $grpc.ClientMethod<$0.GetEventsRequest, $0.GetEventsResponse>(
      '/event.v1.EventService/GetEvents',
      ($0.GetEventsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetEventsResponse.fromBuffer(value));
  static final _$createEvent = $grpc.ClientMethod<$0.CreateEventRequest, $0.CreateEventResponse>(
      '/event.v1.EventService/CreateEvent',
      ($0.CreateEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateEventResponse.fromBuffer(value));
  static final _$updateEvent = $grpc.ClientMethod<$0.UpdateEventRequest, $0.UpdateEventResponse>(
      '/event.v1.EventService/UpdateEvent',
      ($0.UpdateEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateEventResponse.fromBuffer(value));
  static final _$deleteEvent = $grpc.ClientMethod<$0.DeleteEventRequest, $0.DeleteEventResponse>(
      '/event.v1.EventService/DeleteEvent',
      ($0.DeleteEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteEventResponse.fromBuffer(value));

  EventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetEventResponse> getEvent($0.GetEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetEventsResponse> getEvents($0.GetEventsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEvents, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateEventResponse> createEvent($0.CreateEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateEventResponse> updateEvent($0.UpdateEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteEventResponse> deleteEvent($0.DeleteEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteEvent, request, options: options);
  }
}

@$pb.GrpcServiceName('event.v1.EventService')
abstract class EventServiceBase extends $grpc.Service {
  $core.String get $name => 'event.v1.EventService';

  EventServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetEventRequest, $0.GetEventResponse>(
        'GetEvent',
        getEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetEventRequest.fromBuffer(value),
        ($0.GetEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetEventsRequest, $0.GetEventsResponse>(
        'GetEvents',
        getEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetEventsRequest.fromBuffer(value),
        ($0.GetEventsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateEventRequest, $0.CreateEventResponse>(
        'CreateEvent',
        createEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateEventRequest.fromBuffer(value),
        ($0.CreateEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateEventRequest, $0.UpdateEventResponse>(
        'UpdateEvent',
        updateEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateEventRequest.fromBuffer(value),
        ($0.UpdateEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteEventRequest, $0.DeleteEventResponse>(
        'DeleteEvent',
        deleteEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteEventRequest.fromBuffer(value),
        ($0.DeleteEventResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetEventResponse> getEvent_Pre($grpc.ServiceCall call, $async.Future<$0.GetEventRequest> request) async {
    return getEvent(call, await request);
  }

  $async.Future<$0.GetEventsResponse> getEvents_Pre($grpc.ServiceCall call, $async.Future<$0.GetEventsRequest> request) async {
    return getEvents(call, await request);
  }

  $async.Future<$0.CreateEventResponse> createEvent_Pre($grpc.ServiceCall call, $async.Future<$0.CreateEventRequest> request) async {
    return createEvent(call, await request);
  }

  $async.Future<$0.UpdateEventResponse> updateEvent_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateEventRequest> request) async {
    return updateEvent(call, await request);
  }

  $async.Future<$0.DeleteEventResponse> deleteEvent_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteEventRequest> request) async {
    return deleteEvent(call, await request);
  }

  $async.Future<$0.GetEventResponse> getEvent($grpc.ServiceCall call, $0.GetEventRequest request);
  $async.Future<$0.GetEventsResponse> getEvents($grpc.ServiceCall call, $0.GetEventsRequest request);
  $async.Future<$0.CreateEventResponse> createEvent($grpc.ServiceCall call, $0.CreateEventRequest request);
  $async.Future<$0.UpdateEventResponse> updateEvent($grpc.ServiceCall call, $0.UpdateEventRequest request);
  $async.Future<$0.DeleteEventResponse> deleteEvent($grpc.ServiceCall call, $0.DeleteEventRequest request);
}
