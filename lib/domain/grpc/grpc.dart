import 'dart:developer';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/domain/grpc/auth_interceptor.dart';
import 'package:mobile/proto/remind/v1/remind.pbgrpc.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grpc.g.dart';

(String, int?) getHostAndPort() {
  final host = dotenv.env["BACKEND_HOST"] ??
      (Platform.isAndroid ? "10.0.2.2" : "localhost");
  final port = dotenv.env["BACKEND_PORT"];
  return (host, (port?.isEmpty ?? true) ? null : int.parse(port!));
}

@riverpod
ClientChannel grpcChannel(GrpcChannelRef ref) {
  final (host, port) = getHostAndPort();

  if (port != null) {
    return ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
  }

  // final key = await rootBundle.load("assets/grpc_call_service.crt");
  log("Connecting to $host");
  return ClientChannel(
    host,
    options: ChannelOptions(
      credentials: ChannelCredentials.secure(
        onBadCertificate: (cert, host) {
          log("Bad certificate: $cert, $host");
          return true;
        },
      ),
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
