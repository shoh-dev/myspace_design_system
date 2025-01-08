import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:fcode_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:flutter/material.dart';

class PrimaryButtonComponent extends ButtonComponent {
  const PrimaryButtonComponent({
    super.key,
    super.onPressed,
    required super.text,
    super.icon,
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return _disabled(
        FilledButton.icon(
          key: key,
          onPressed: onPressed,
          label: Text(text!),
          icon: Icon(icon),
        ),
      );
    }
    return _disabled(
      FilledButton(
        onPressed: onPressed,
        child: Text(text!),
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
