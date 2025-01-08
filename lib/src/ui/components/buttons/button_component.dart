import 'package:fcode_design_system/src/ui/components/buttons/icon_button_component.dart';
import 'package:fcode_design_system/src/ui/components/buttons/outlined_button_component.dart';
import 'package:fcode_design_system/src/ui/components/buttons/primary_button_component.dart';
import 'package:fcode_design_system/src/ui/components/buttons/text_button_component.dart';
import 'package:fcode_design_system/src/ui/components/component/component.dart';
import 'package:fcode_design_system/src/ui/components/key/key.dart';
import 'package:flutter/material.dart';

export 'icon_button_component.dart';
export 'outlined_button_component.dart';
export 'primary_button_component.dart';
export 'text_button_component.dart';

class ButtonComponent extends Component {
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
    ComponentKey? key,
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
    ComponentKey? key,
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
    ComponentKey? key,
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
    return PrimaryButtonComponent(
      key: key is ComponentKey ? key as ComponentKey : null,
      onPressed: onPressed,
      text: text,
      icon: icon,
    );
  }
}
