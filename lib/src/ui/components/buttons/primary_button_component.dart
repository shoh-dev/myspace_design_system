import 'package:fcode_design_system/utils/helpers/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButtonComponent extends StatelessWidget {
  const PrimaryButtonComponent({
    super.key,
    this.onPressed,
    required this.text,
    this.icon,
  });

  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return FilledButton.icon(
        onPressed: onPressed,
        label: Text(text),
        icon: Icon(icon),
      );
    }
    return FilledButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
