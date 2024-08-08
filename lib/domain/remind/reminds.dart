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

  void add(Remind remind) {
    state = [...state, remind];
  }

  void remove(Remind remind) {
    state = state.where((r) => r.id != remind.id).toList();
  }

  void update(Remind remind) {
    state = state.map((r) => r.id == remind.id ? remind : r).toList();
  }

  Future fetch() async {
    final channel = ref.read(grpcChannelProvider);
    final client = RemindServiceClient(channel);

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
