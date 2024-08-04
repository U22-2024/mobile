import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grpc_provider.g.dart';

@Riverpod(keepAlive: true)
ClientChannel grpcChannel(GrpcChannelRef ref) {
  final host = switch (defaultTargetPlatform) {
    TargetPlatform.android => "10.0.2.2",
    TargetPlatform.windows => "localhost",
    TargetPlatform.linux => "localhost",
    _ => "localhost"
  };

  final channel = ClientChannel(
    host,
    port: 5065,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  ref.onDispose(channel.shutdown);
  return channel;
}
