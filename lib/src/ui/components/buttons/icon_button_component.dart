import 'package:fcode_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  const IconButtonComponent({
    super.key,
    this.onPressed,
    required this.icon,
  });

  final VoidCallback? onPressed;
  final IconData icon;

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
