import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<List<String>> showUserItemModal(BuildContext context) async {
  final items = <String>[];

  await showBarModalBottomSheet(
    context: context,
    builder: (context) {
      return SafeArea(
        top: true,
        child: ProviderScope(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: UserItemModal(items: items),
          ),
        ),
      );
    },
  );

  return items;
}

final _formKey = GlobalKey<FormState>();

class UserItemModal extends HookConsumerWidget {
  const UserItemModal({super.key, required this.items});

  final List<String> items;

  Widget _buildAddButton(
    BuildContext context,
    ValueNotifier<List<String>> itemsState,
    TextEditingController controller,
  ) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: mediaQuery.size.width - 100,
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'アイテムを追加',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'アイテムを入力しなさい';
                  }
                  return null;
                },
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                itemsState.value = List.from(itemsState.value)
                  ..add(controller.text);
              }
            },
            icon: const Icon(Icons.add),
            style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(theme.colorScheme.primaryContainer),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsState = useState<List<String>>([]);
    final textController = useTextEditingController();
    useEffect(() {
      return () {
        items.clear();
        items.addAll(itemsState.value);
      };
    });
    final mediaQuery = MediaQuery.of(context);

    return SizedBox(
      height: min(mediaQuery.size.height - 100, 600),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("追加でメモしておきたいことを入力してね"),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("完了"),
                ),
              ],
            ),
          ),
          _buildAddButton(context, itemsState, textController),
          const SizedBox(height: 16),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, idx) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(),
            ),
            itemBuilder: (context, idx) {
              return ListTile(
                title: Text(itemsState.value[idx]),
                trailing: IconButton(
                  onPressed: () {
                    itemsState.value = List.from(itemsState.value)
                      ..removeAt(idx);
                  },
                  icon: const Icon(Icons.delete),
                ),
              );
            },
            itemCount: itemsState.value.length,
          ),
        ],
      ),
    );
  }
}
