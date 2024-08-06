import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grpc.g.dart';

(String, int) getHostAndPort() {
  if (kDebugMode) {
    final host = Platform.isAndroid ? "10.0.2.2" : "localhost";
    return (host, 5065);
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
