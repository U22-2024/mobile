import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/screens/profile/widgets/profile_avatar.dart';
import 'package:mobile/screens/profile/widgets/user_form.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 16),
              ProfileAvatar(),
              SizedBox(height: 16),
              UserForm(),
            ],
          ),
        ),
      ),
    );
  }
}
