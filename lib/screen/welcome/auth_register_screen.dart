import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthRegisterScreen extends HookConsumerWidget {
  const AuthRegisterScreen({super.key});

  static const routeName = "register";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => GoRouter.of(context).pop(),
        )),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "アカウントを作成",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "メールアドレス",
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Theme.of(context).hoverColor,
                  filled: true,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "パスワード",
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Theme.of(context).hoverColor,
                  filled: true,
                ),
              ),
              const SizedBox(height: 4),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "パスワードの確認",
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Theme.of(context).hoverColor,
                  filled: true,
                ),
              )
            ],
          ),
        ));
  }
}
