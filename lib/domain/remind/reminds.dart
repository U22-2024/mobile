import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/remind/v1/remind.pbgrpc.dart';
import 'package:mobile/proto/remind/v1/remind_group.pb.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reminds.g.dart';

/// リマインドグループに関わらず全てのリマインドを管理するリポジトリ
@riverpod
class Reminds extends _$Reminds {
  @override
  List<Remind> build() {
    // フェッチが終了したときに状態が更新されてUIが再描画されるため、awaitしない
    fetch();
    return [];
  }

  Future<void> add(String title, String desc, String groupId) async {
    final client = ref.read(grpcRemindProvider);
    final user = await ref.read(authStateChangeProvider.future);

    if (title.isEmpty) {
      throw Exception("Title is empty");
    }
    if (groupId.isEmpty) {
      throw Exception("Group ID is empty");
    }
    if (user == null) {
      throw Exception("User is not signed in");
    }

    final res = await client.createRemind(CreateRemindRequest(
      title: title,
      description: desc,
      groupId: groupId,
      uid: user.uid,
    ));

    state = [...state, res.remind];
  }

  Future<void> remove(String remindId) async {
    final client = ref.read(grpcRemindProvider);
    final user = await ref.read(authStateChangeProvider.future);

    if (remindId.isEmpty) {
      throw Exception("Remind ID is empty");
    }
    if (user == null) {
      throw Exception("User is not signed in");
    }

    await client.deleteRemind(DeleteRemindRequest(id: remindId));

    state = state.where((r) => r.id != remindId).toList();
  }

  Future<void> update(Remind remind) async {
    final client = ref.read(grpcRemindProvider);
    final user = await ref.read(authStateChangeProvider.future);

    if (user == null) {
      throw Exception("User is not signed in");
    }
    if (remind.id.isEmpty) {
      throw Exception("Remind ID is empty");
    }
    if (remind.title.isEmpty) {
      throw Exception("Title is empty");
    }
    if (remind.groupId.isEmpty) {
      throw Exception("Group ID is empty");
    }

    final res = await client.updateRemind(UpdateRemindRequest(
      id: remind.id,
      title: remind.title,
      description: remind.description,
      groupId: remind.groupId,
    ));
    state = state.map((r) => r.id == res.remind.id ? res.remind : r).toList();
  }

  Future fetch() async {
    final client = ref.read(grpcRemindProvider);

    final user = await ref.read(authStateChangeProvider.future);
    if (user == null) {
      throw Exception("User is not signed in");
    }
    final reminds = await client.getReminds(GetRemindsRequest(uid: user.uid));
    state = reminds.reminds;
  }
}

/// リマインドグループごとのリマインド
@riverpod
List<Remind> remindsPerGroup(RemindsPerGroupRef ref, RemindGroup group) {
  final reminds = ref.watch(remindsProvider);
  return reminds.where((r) => r.groupId == group.id).toList();
}
