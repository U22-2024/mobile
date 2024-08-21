import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/auth/user_repository.dart';

final _menuActions = [
  _MenuAction(
    title: "プロフィール",
    icon: Icons.person,
    onTap: () {},
  ),
  _MenuAction(
    title: "ログアウト",
    icon: Icons.logout,
    onTap: () {
      FirebaseAuth.instance.signOut();
    },
  ),
];

class UserAvatar extends HookConsumerWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateChangeProvider);

    return SizedBox(
      width: 58,
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        icon: _buildAvatar(context, user),
        itemBuilder: (context) => _menuActions
            .map(
              (action) => PopupMenuItem(
                onTap: action.onTap,
                child: ListTile(
                  title: Text(action.title),
                  leading: Icon(action.icon),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildAvatar(BuildContext context, AsyncValue<User?> user) {
    return user.when(data: (value) {
      log("URL: ${value?.photoURL ?? "null"}");
      if (value == null || value.photoURL == null) {
        return const CircleAvatar(
          child: Icon(Icons.person),
        );
      }
      return CircleAvatar(
        backgroundImage: NetworkImage(value.photoURL!),
      );
    }, error: (e, stackTrace) {
      return const CircleAvatar(
        child: Icon(Icons.error),
      );
    }, loading: () {
      return const CircleAvatar(
        child: CircularProgressIndicator(),
      );
    });
  }
}

class _MenuAction {
  final String title;
  final IconData icon;
  final void Function() onTap;

  _MenuAction({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
