import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/domain/grpc/auth_interceptor.dart';
import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remind_groups.g.dart';

@riverpod
Future<RemindGroupServiceClient> remindGroupClient(
  RemindGroupClientRef ref,
) async {
  final channel = ref.watch(grpcChannelProvider);

  return RemindGroupServiceClient(
    channel,
    interceptors: [
      AuthInterceptor(auth: FirebaseAuth.instance),
    ],
  );
}

@riverpod
class RemindGroups extends _$RemindGroups {
  @override
  List<RemindGroup> build() {
    // フェッチが終了したときに状態が更新されてUIが再描画されるため、awaitしない
    fetch();
    return [];
  }

  Future add(String title, String? description) async {
    final client = await ref.read(remindGroupClientProvider.future);
    final user = await ref.read(authStateChangeProvider.future);

    if (user == null) {
      throw Exception("User is not signed in");
    }

    final res = await client.createRemindGroup(
      CreateRemindGroupRequest(
        uid: user.uid,
        title: title,
        description: description,
      ),
    );

    state = [...state, res.remindGroup];
  }

  Future remove(String id) async {
    final client = await ref.read(remindGroupClientProvider.future);
    final user = await ref.read(authStateChangeProvider.future);

    if (user == null) {
      throw Exception("User is not signed in");
    }

    await client.deleteRemindGroup(DeleteRemindGroupRequest(id: id));
    state = state.where((g) => g.id != id).toList();
  }

  Future update(RemindGroup group) async {
    final client = await ref.read(remindGroupClientProvider.future);
    final user = await ref.read(authStateChangeProvider.future);

    if (user == null) {
      throw Exception("User is not signed in");
    }

    final res = await client.updateRemindGroup(UpdateRemindGroupRequest(
      id: group.id,
      title: group.title,
      description: group.description,
    ));

    state = state
        .map((g) => g.id == res.remindGroup.id ? res.remindGroup : g)
        .toList();
  }

  Future fetch() async {
    final client = await ref.read(remindGroupClientProvider.future);
    final user = await ref.read(authStateChangeProvider.future);

    if (user == null) {
      throw Exception("User is not signed in");
    }
    final groups = await client.getRemindGroups(
      GetRemindGroupsRequest(uid: user.uid),
    );
    state = groups.remindGroups;
  }
}
