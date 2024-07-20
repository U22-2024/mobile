import 'package:flutter/material.dart';

/// バリデーション表示とスタイルをカスタムしたテキスト入力フィールド
class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.label,
    this.validateMessage,
    this.keyboardType,
    this.suffixIcon,
    this.focusNode,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final String label;
  final String? validateMessage;
  final Function(String) onChanged;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final FocusNode? focusNode;

  Widget? _suffixIcon(BuildContext context) {
    if (suffixIcon != null) {
      return suffixIcon;
    }

    if (validateMessage == null) return null;
    return Tooltip(
      message: validateMessage,
      triggerMode: TooltipTriggerMode.tap,
      child: Icon(
        Icons.error,
        color: Theme.of(context).colorScheme.error,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        fillColor: Theme.of(context).hoverColor,
        filled: true,
        errorStyle: const TextStyle(height: 0),
        suffixIcon: _suffixIcon(context),
      ),
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: (value) {
        if (validateMessage == null) {
          return null;
        }

        return "";
      },
    );
  }
}
