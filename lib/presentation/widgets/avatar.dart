import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/presentation/router/router.dart';
import 'package:mobile/screens/profile/profile_route.dart';

class UserAvatar extends HookConsumerWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateChangeProvider);

    final menuActions = [
      _MenuAction(
        title: "プロフィール",
        icon: Icons.person,
        onTap: () {
          const ProfileRoute().go(context);
        },
      ),
      _MenuAction(
        title: "ログアウト",
        icon: Icons.logout,
        onTap: () {
          FirebaseAuth.instance.signOut();
        },
      ),
    ];

    return SizedBox(
      width: 58,
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        icon: _buildAvatar(context, user),
        itemBuilder: (context) => menuActions
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
