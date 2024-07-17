import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: const Divider(),
          ),
        ),
        Text(text),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            child: const Divider(),
          ),
        ),
      ],
    );
  }
}
