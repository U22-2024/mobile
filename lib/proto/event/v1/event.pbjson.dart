//
//  Generated code. Do not modify.
//  source: event/v1/event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Guid', '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'event_item', '3': 4, '4': 3, '5': 9, '10': 'eventItem'},
    {'1': 'time_table', '3': 5, '4': 1, '5': 11, '6': '.event.v1.TimeTable', '10': 'timeTable'},
    {'1': 'user_items', '3': 6, '4': 1, '5': 11, '6': '.event.v1.UserItems', '10': 'userItems'},
    {'1': 'uid', '3': 7, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIfCgJpZBgBIAEoCzIPLmNvbW1vbi52MS5HdWlkUgJpZBIUCgV0aXRsZRgCIAEoCV'
    'IFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEh0KCmV2ZW50X2l0ZW0Y'
    'BCADKAlSCWV2ZW50SXRlbRIyCgp0aW1lX3RhYmxlGAUgASgLMhMuZXZlbnQudjEuVGltZVRhYm'
    'xlUgl0aW1lVGFibGUSMgoKdXNlcl9pdGVtcxgGIAEoCzITLmV2ZW50LnYxLlVzZXJJdGVtc1IJ'
    'dXNlckl0ZW1zEiAKA3VpZBgHIAEoCzIOLmNvbW1vbi52MS5VaWRSA3VpZA==');

@$core.Deprecated('Use timeTableDescriptor instead')
const TimeTable$json = {
  '1': 'TimeTable',
  '2': [
    {'1': 'item', '3': 1, '4': 3, '5': 11, '6': '.event.v1.TimeTableItem', '10': 'item'},
    {'1': 'transit_count', '3': 2, '4': 1, '5': 13, '10': 'transitCount'},
    {'1': 'walk_distance', '3': 3, '4': 1, '5': 13, '10': 'walkDistance'},
    {'1': 'fare', '3': 4, '4': 1, '5': 13, '10': 'fare'},
  ],
};

/// Descriptor for `TimeTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeTableDescriptor = $convert.base64Decode(
    'CglUaW1lVGFibGUSKwoEaXRlbRgBIAMoCzIXLmV2ZW50LnYxLlRpbWVUYWJsZUl0ZW1SBGl0ZW'
    '0SIwoNdHJhbnNpdF9jb3VudBgCIAEoDVIMdHJhbnNpdENvdW50EiMKDXdhbGtfZGlzdGFuY2UY'
    'AyABKA1SDHdhbGtEaXN0YW5jZRISCgRmYXJlGAQgASgNUgRmYXJl');

@$core.Deprecated('Use timeTableItemDescriptor instead')
const TimeTableItem$json = {
  '1': 'TimeTableItem',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.event.v1.TimeTableType', '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'move', '3': 3, '4': 1, '5': 9, '10': 'move'},
    {'1': 'from_time', '3': 4, '4': 1, '5': 11, '6': '.event.v1.DateTime', '10': 'fromTime'},
    {'1': 'end_time', '3': 5, '4': 1, '5': 11, '6': '.event.v1.DateTime', '10': 'endTime'},
    {'1': 'distance', '3': 6, '4': 1, '5': 13, '10': 'distance'},
    {'1': 'line_name', '3': 7, '4': 1, '5': 9, '10': 'lineName'},
    {'1': 'transport', '3': 8, '4': 1, '5': 11, '6': '.event.v1.Transport', '10': 'transport'},
  ],
};

/// Descriptor for `TimeTableItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeTableItemDescriptor = $convert.base64Decode(
    'Cg1UaW1lVGFibGVJdGVtEisKBHR5cGUYASABKA4yFy5ldmVudC52MS5UaW1lVGFibGVUeXBlUg'
    'R0eXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEbW92ZRgDIAEoCVIEbW92ZRIvCglmcm9tX3Rp'
    'bWUYBCABKAsyEi5ldmVudC52MS5EYXRlVGltZVIIZnJvbVRpbWUSLQoIZW5kX3RpbWUYBSABKA'
    'syEi5ldmVudC52MS5EYXRlVGltZVIHZW5kVGltZRIaCghkaXN0YW5jZRgGIAEoDVIIZGlzdGFu'
    'Y2USGwoJbGluZV9uYW1lGAcgASgJUghsaW5lTmFtZRIxCgl0cmFuc3BvcnQYCCABKAsyEy5ldm'
    'VudC52MS5UcmFuc3BvcnRSCXRyYW5zcG9ydA==');

@$core.Deprecated('Use transportDescriptor instead')
const Transport$json = {
  '1': 'Transport',
  '2': [
    {'1': 'fare', '3': 1, '4': 1, '5': 13, '10': 'fare'},
    {'1': 'train_name', '3': 2, '4': 1, '5': 9, '10': 'trainName'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '10': 'color'},
    {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'destination', '3': 5, '4': 1, '5': 9, '10': 'destination'},
  ],
};

/// Descriptor for `Transport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transportDescriptor = $convert.base64Decode(
    'CglUcmFuc3BvcnQSEgoEZmFyZRgBIAEoDVIEZmFyZRIdCgp0cmFpbl9uYW1lGAIgASgJUgl0cm'
    'Fpbk5hbWUSFAoFY29sb3IYAyABKAlSBWNvbG9yEhwKCWRpcmVjdGlvbhgEIAEoCVIJZGlyZWN0'
    'aW9uEiAKC2Rlc3RpbmF0aW9uGAUgASgJUgtkZXN0aW5hdGlvbg==');

@$core.Deprecated('Use userItemsDescriptor instead')
const UserItems$json = {
  '1': 'UserItems',
  '2': [
    {'1': 'item', '3': 1, '4': 3, '5': 9, '10': 'item'},
  ],
};

/// Descriptor for `UserItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userItemsDescriptor = $convert.base64Decode(
    'CglVc2VySXRlbXMSEgoEaXRlbRgBIAMoCVIEaXRlbQ==');

@$core.Deprecated('Use getEventRequestDescriptor instead')
const GetEventRequest$json = {
  '1': 'GetEventRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
    {'1': 'id', '3': 2, '4': 1, '5': 11, '6': '.common.v1.Guid', '10': 'id'},
  ],
};

/// Descriptor for `GetEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRFdmVudFJlcXVlc3QSIAoDdWlkGAEgASgLMg4uY29tbW9uLnYxLlVpZFIDdWlkEh8KAm'
    'lkGAIgASgLMg8uY29tbW9uLnYxLkd1aWRSAmlk');

@$core.Deprecated('Use getEventResponseDescriptor instead')
const GetEventResponse$json = {
  '1': 'GetEventResponse',
  '2': [
    {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.event.v1.Event', '10': 'event'},
  ],
};

/// Descriptor for `GetEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventResponseDescriptor = $convert.base64Decode(
    'ChBHZXRFdmVudFJlc3BvbnNlEiUKBWV2ZW50GAEgASgLMg8uZXZlbnQudjEuRXZlbnRSBWV2ZW'
    '50');

@$core.Deprecated('Use getEventsRequestDescriptor instead')
const GetEventsRequest$json = {
  '1': 'GetEventsRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
  ],
};

/// Descriptor for `GetEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventsRequestDescriptor = $convert.base64Decode(
    'ChBHZXRFdmVudHNSZXF1ZXN0EiAKA3VpZBgBIAEoCzIOLmNvbW1vbi52MS5VaWRSA3VpZA==');

@$core.Deprecated('Use getEventsResponseDescriptor instead')
const GetEventsResponse$json = {
  '1': 'GetEventsResponse',
  '2': [
    {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.event.v1.Event', '10': 'events'},
  ],
};

/// Descriptor for `GetEventsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventsResponseDescriptor = $convert.base64Decode(
    'ChFHZXRFdmVudHNSZXNwb25zZRInCgZldmVudHMYASADKAsyDy5ldmVudC52MS5FdmVudFIGZX'
    'ZlbnRz');

@$core.Deprecated('Use createEventRequestDescriptor instead')
const CreateEventRequest$json = {
  '1': 'CreateEventRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'event_item', '3': 4, '4': 3, '5': 9, '10': 'eventItem'},
    {'1': 'time_table', '3': 5, '4': 1, '5': 11, '6': '.event.v1.TimeTable', '10': 'timeTable'},
    {'1': 'user_items', '3': 6, '4': 1, '5': 11, '6': '.event.v1.UserItems', '10': 'userItems'},
  ],
};

/// Descriptor for `CreateEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEventRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVFdmVudFJlcXVlc3QSIAoDdWlkGAEgASgLMg4uY29tbW9uLnYxLlVpZFIDdWlkEh'
    'QKBXRpdGxlGAIgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24S'
    'HQoKZXZlbnRfaXRlbRgEIAMoCVIJZXZlbnRJdGVtEjIKCnRpbWVfdGFibGUYBSABKAsyEy5ldm'
    'VudC52MS5UaW1lVGFibGVSCXRpbWVUYWJsZRIyCgp1c2VyX2l0ZW1zGAYgASgLMhMuZXZlbnQu'
    'djEuVXNlckl0ZW1zUgl1c2VySXRlbXM=');

@$core.Deprecated('Use createEventResponseDescriptor instead')
const CreateEventResponse$json = {
  '1': 'CreateEventResponse',
  '2': [
    {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.event.v1.Event', '10': 'event'},
  ],
};

/// Descriptor for `CreateEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEventResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVFdmVudFJlc3BvbnNlEiUKBWV2ZW50GAEgASgLMg8uZXZlbnQudjEuRXZlbnRSBW'
    'V2ZW50');

@$core.Deprecated('Use updateEventRequestDescriptor instead')
const UpdateEventRequest$json = {
  '1': 'UpdateEventRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
    {'1': 'id', '3': 2, '4': 1, '5': 11, '6': '.common.v1.Guid', '10': 'id'},
    {'1': 'event', '3': 3, '4': 1, '5': 11, '6': '.event.v1.Event', '10': 'event'},
  ],
};

/// Descriptor for `UpdateEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEventRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVFdmVudFJlcXVlc3QSIAoDdWlkGAEgASgLMg4uY29tbW9uLnYxLlVpZFIDdWlkEh'
    '8KAmlkGAIgASgLMg8uY29tbW9uLnYxLkd1aWRSAmlkEiUKBWV2ZW50GAMgASgLMg8uZXZlbnQu'
    'djEuRXZlbnRSBWV2ZW50');

@$core.Deprecated('Use updateEventResponseDescriptor instead')
const UpdateEventResponse$json = {
  '1': 'UpdateEventResponse',
  '2': [
    {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.event.v1.Event', '10': 'event'},
  ],
};

/// Descriptor for `UpdateEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEventResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVFdmVudFJlc3BvbnNlEiUKBWV2ZW50GAEgASgLMg8uZXZlbnQudjEuRXZlbnRSBW'
    'V2ZW50');

@$core.Deprecated('Use deleteEventRequestDescriptor instead')
const DeleteEventRequest$json = {
  '1': 'DeleteEventRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 11, '6': '.common.v1.Uid', '10': 'uid'},
    {'1': 'guid', '3': 2, '4': 1, '5': 11, '6': '.common.v1.Guid', '10': 'guid'},
  ],
};

/// Descriptor for `DeleteEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEventRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVFdmVudFJlcXVlc3QSIAoDdWlkGAEgASgLMg4uY29tbW9uLnYxLlVpZFIDdWlkEi'
    'MKBGd1aWQYAiABKAsyDy5jb21tb24udjEuR3VpZFIEZ3VpZA==');

@$core.Deprecated('Use deleteEventResponseDescriptor instead')
const DeleteEventResponse$json = {
  '1': 'DeleteEventResponse',
};

/// Descriptor for `DeleteEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEventResponseDescriptor = $convert.base64Decode(
    'ChNEZWxldGVFdmVudFJlc3BvbnNl');

