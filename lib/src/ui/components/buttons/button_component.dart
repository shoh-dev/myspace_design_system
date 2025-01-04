import 'package:fcode_design_system/src/ui/components/buttons/icon_button_component.dart';
import 'package:fcode_design_system/src/ui/components/buttons/outlined_button_component.dart';
import 'package:fcode_design_system/src/ui/components/buttons/primary_button_component.dart';
import 'package:fcode_design_system/src/ui/components/buttons/text_button_component.dart';
import 'package:fcode_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key,
    this.onPressed,
    this.text,
    this.icon,
  });

  final VoidCallback? onPressed;
  final String? text;
  final IconData? icon;

  factory ButtonComponent.outlined({
    Key? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) {
    return OutlinedButtonComponent(
      key: key,
      onPressed: onPressed,
      text: text,
      icon: icon,
    );
  }

  factory ButtonComponent.text({
    Key? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) {
    return TextButtonComponent(
      key: key,
      onPressed: onPressed,
      text: text,
      icon: icon,
    );
  }

  factory ButtonComponent.icon({
    Key? key,
    VoidCallback? onPressed,
    required IconData icon,
  }) {
    return IconButtonComponent(
      key: key,
      onPressed: onPressed,
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DisabledComponent(
      isDisabled: onPressed == null,
      child: PrimaryButtonComponent(
        key: key,
        onPressed: onPressed,
        text: text,
        icon: icon,
      ),
    );
  }
}
