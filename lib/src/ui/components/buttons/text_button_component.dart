import 'package:fcode_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:flutter/material.dart';

class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent({
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
      return _disabled(
        TextButton.icon(
          onPressed: onPressed,
          label: Text(text),
          icon: Icon(icon),
        ),
      );
    }
    return _disabled(
      TextButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }

  Widget _disabled(Widget child) {
    return DisabledComponent(
      isDisabled: onPressed == null,
      child: child,
    );
  }
}
