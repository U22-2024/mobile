import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/greet/v1/greet.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greet_repository.g.dart';

@riverpod
Future<String> getMothersGreet(GetMothersGreetRef ref) async {
  final channel = ref.read(grpcChannelProvider);
  final client = GreetServiceClient(channel);

  final res = await client.getGreet(GetGreetRequest());
  return res.greet.message;
}
