import 'package:fcode_design_system/src/ui/components/buttons/button_component.dart';
import 'package:fcode_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:flutter/material.dart';

class IconButtonComponent extends ButtonComponent {
  const IconButtonComponent({
    super.key,
    super.onPressed,
    required super.icon,
  });

  @override
  Widget build(BuildContext context) {
    return _disabled(
      IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
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
