import 'package:fcode_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:flutter/material.dart';

class OutlinedButtonComponent extends StatelessWidget {
  const OutlinedButtonComponent({
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
        OutlinedButton.icon(
          onPressed: onPressed,
          label: Text(text),
          icon: Icon(icon),
        ),
      );
    }
    return _disabled(
      OutlinedButton(
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
