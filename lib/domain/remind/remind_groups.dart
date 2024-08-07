import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remind_groups.g.dart';

@riverpod
class RemindGroups extends _$RemindGroups {
  @override
  List<RemindGroup> build() {
    return [];
  }

  void add(RemindGroup group) {
    state = [...state, group];
  }

  void remove(RemindGroup group) {
    state = state.where((g) => g.id != group.id).toList();
  }

  void update(RemindGroup group) {
    state = state.map((g) => g.id == group.id ? group : g).toList();
  }

  Future fetch() async {
    final channel = ref.read(grpcChannelProvider);
    final client = RemindGroupServiceClient(channel);

    final user = await ref.read(authStateChangeProvider.future);
    if (user == null) {
      throw Exception("User is not signed in");
    }
    final groups =
        await client.getRemindGroups(GetRemindGroupsRequest(uid: user.uid));
    state = groups.remindGroups;
  }
}
