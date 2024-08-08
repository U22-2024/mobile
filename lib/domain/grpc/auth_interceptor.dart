import 'package:firebase_auth/firebase_auth.dart';
import 'package:grpc/grpc.dart';

class AuthInterceptor extends ClientInterceptor {
  final FirebaseAuth auth;

  AuthInterceptor({required this.auth});

  Future _injectToken(Map<String, String> metadata, String uri) async {
    final user = auth.currentUser;
    if (user != null) {
      final token = await user.getIdToken();
      metadata["authorization"] = "Bearer $token";
    }
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    ClientStreamingInvoker<Q, R> invoker,
  ) {
    final modifiedOptions = options.mergedWith(
      CallOptions(
        providers: [
          _injectToken,
        ],
      ),
    );
    return super.interceptStreaming(method, requests, modifiedOptions, invoker);
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    final modifiedOptions = options.mergedWith(
      CallOptions(
        providers: [
          _injectToken,
        ],
      ),
    );
    return super.interceptUnary(method, request, modifiedOptions, invoker);
  }
}
