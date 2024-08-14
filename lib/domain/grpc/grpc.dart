import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/domain/grpc/auth_interceptor.dart';
import 'package:mobile/proto/remind/v1/remind.pbgrpc.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grpc.g.dart';

(String, int) getHostAndPort() {
  if (kDebugMode) {
    final host = Platform.isAndroid ? "10.0.2.2" : "localhost";
    return (host, int.parse(dotenv.env["GRPC_PORT"] ?? "5065"));
  } else {
    throw UnimplementedError("Production mode is not implemented yet");
  }
}

@Riverpod(keepAlive: true)
ClientChannel grpcChannel(GrpcChannelRef ref) {
  final (host, port) = getHostAndPort();

  return ClientChannel(
    host,
    port: port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}

@riverpod
RemindGroupServiceClient grpcRemindGroup(GrpcRemindGroupRef ref) {
  final channel = ref.read(grpcChannelProvider);
  return RemindGroupServiceClient(channel, interceptors: [AuthInterceptor()]);
}

@riverpod
RemindServiceClient grpcRemind(GrpcRemindRef ref) {
  final channel = ref.read(grpcChannelProvider);
  return RemindServiceClient(channel, interceptors: [AuthInterceptor()]);
}
