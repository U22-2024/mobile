import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/auth/user_repository.dart';

final _formKey = GlobalKey<FormState>();

class UserForm extends HookConsumerWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userChangesProvider);

    return user.when(
      data: (value) => value == null
          ? const Center(child: CircularProgressIndicator())
          : _DisplayNameForm(user: value),
      error: (e, stackTrace) {
        FirebaseAuth.instance.signOut();
        return const Center(child: CircularProgressIndicator());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class _DisplayNameForm extends HookConsumerWidget {
  const _DisplayNameForm({
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController(text: user.displayName);
    final pendingUpdateName = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingUpdateName.value);

    validate() {
      if (_formKey.currentState?.validate() ?? false) {
        _formKey.currentState?.save();
        return true;
      }
      return false;
    }

    update() async {
      if (validate() && user.displayName != nameController.text) {
        await user.updateDisplayName(nameController.text);
        await user.reload();
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('更新しました')),
        );
      }
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: '名前',
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return '名前を入力してください';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: snapshot.connectionState != ConnectionState.waiting
                ? () => pendingUpdateName.value = update()
                : null,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('更新'),
                if (snapshot.connectionState == ConnectionState.waiting)
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
