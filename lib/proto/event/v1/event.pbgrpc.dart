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

import 'event.pb.dart' as $1;

export 'event.pb.dart';

@$pb.GrpcServiceName('event.v1.EventService')
class EventServiceClient extends $grpc.Client {
  static final _$getEvent = $grpc.ClientMethod<$1.GetEventRequest, $1.GetEventResponse>(
      '/event.v1.EventService/GetEvent',
      ($1.GetEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetEventResponse.fromBuffer(value));
  static final _$getEvents = $grpc.ClientMethod<$1.GetEventsRequest, $1.GetEventsResponse>(
      '/event.v1.EventService/GetEvents',
      ($1.GetEventsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetEventsResponse.fromBuffer(value));
  static final _$createEvent = $grpc.ClientMethod<$1.CreateEventRequest, $1.CreateEventResponse>(
      '/event.v1.EventService/CreateEvent',
      ($1.CreateEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreateEventResponse.fromBuffer(value));
  static final _$updateEvent = $grpc.ClientMethod<$1.UpdateEventRequest, $1.UpdateEventResponse>(
      '/event.v1.EventService/UpdateEvent',
      ($1.UpdateEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateEventResponse.fromBuffer(value));
  static final _$deleteEvent = $grpc.ClientMethod<$1.DeleteEventRequest, $1.DeleteEventResponse>(
      '/event.v1.EventService/DeleteEvent',
      ($1.DeleteEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteEventResponse.fromBuffer(value));

  EventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetEventResponse> getEvent($1.GetEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEvent, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetEventsResponse> getEvents($1.GetEventsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEvents, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateEventResponse> createEvent($1.CreateEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEvent, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateEventResponse> updateEvent($1.UpdateEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEvent, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteEventResponse> deleteEvent($1.DeleteEventRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteEvent, request, options: options);
  }
}

@$pb.GrpcServiceName('event.v1.EventService')
abstract class EventServiceBase extends $grpc.Service {
  $core.String get $name => 'event.v1.EventService';

  EventServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetEventRequest, $1.GetEventResponse>(
        'GetEvent',
        getEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetEventRequest.fromBuffer(value),
        ($1.GetEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetEventsRequest, $1.GetEventsResponse>(
        'GetEvents',
        getEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetEventsRequest.fromBuffer(value),
        ($1.GetEventsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateEventRequest, $1.CreateEventResponse>(
        'CreateEvent',
        createEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateEventRequest.fromBuffer(value),
        ($1.CreateEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateEventRequest, $1.UpdateEventResponse>(
        'UpdateEvent',
        updateEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateEventRequest.fromBuffer(value),
        ($1.UpdateEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteEventRequest, $1.DeleteEventResponse>(
        'DeleteEvent',
        deleteEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteEventRequest.fromBuffer(value),
        ($1.DeleteEventResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetEventResponse> getEvent_Pre($grpc.ServiceCall call, $async.Future<$1.GetEventRequest> request) async {
    return getEvent(call, await request);
  }

  $async.Future<$1.GetEventsResponse> getEvents_Pre($grpc.ServiceCall call, $async.Future<$1.GetEventsRequest> request) async {
    return getEvents(call, await request);
  }

  $async.Future<$1.CreateEventResponse> createEvent_Pre($grpc.ServiceCall call, $async.Future<$1.CreateEventRequest> request) async {
    return createEvent(call, await request);
  }

  $async.Future<$1.UpdateEventResponse> updateEvent_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateEventRequest> request) async {
    return updateEvent(call, await request);
  }

  $async.Future<$1.DeleteEventResponse> deleteEvent_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteEventRequest> request) async {
    return deleteEvent(call, await request);
  }

  $async.Future<$1.GetEventResponse> getEvent($grpc.ServiceCall call, $1.GetEventRequest request);
  $async.Future<$1.GetEventsResponse> getEvents($grpc.ServiceCall call, $1.GetEventsRequest request);
  $async.Future<$1.CreateEventResponse> createEvent($grpc.ServiceCall call, $1.CreateEventRequest request);
  $async.Future<$1.UpdateEventResponse> updateEvent($grpc.ServiceCall call, $1.UpdateEventRequest request);
  $async.Future<$1.DeleteEventResponse> deleteEvent($grpc.ServiceCall call, $1.DeleteEventRequest request);
}
