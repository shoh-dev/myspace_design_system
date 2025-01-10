import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';

Widget _disabled(Widget child, VoidCallback? onPressed) {
  return DisabledComponent(
    isDisabled: onPressed == null,
    child: child,
  );
}

class IconButtonComponent extends ButtonComponent {
  const IconButtonComponent({
    super.key,
    super.onPressed,
    required IconData icon,
  }) : super(icon: icon);

  @override
  Widget build(BuildContext context) {
    return _disabled(
      IconButton(
        onPressed: onPressed,
        icon: Icon(icon!),
      ),
      onPressed,
    );
  }
}
