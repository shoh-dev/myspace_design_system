import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:myspace_design_system/src/ui/components/key/key.dart';
import 'package:flutter/material.dart';

import 'types/outlined.dart';
import 'types/icon.dart';
import 'types/primary.dart';
import 'types/text.dart';
import 'types/destructive.dart';

abstract class ButtonComponent extends Component {
  const ButtonComponent({super.key, this.onPressed, this.text, this.icon});

  final VoidCallback? onPressed;
  final String? text;
  final IconData? icon;

  const factory ButtonComponent.outlined({
    ComponentKey? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) = OutlinedButtonComponent;

  const factory ButtonComponent.primary({
    ComponentKey? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) = PrimaryButtonComponent;

  const factory ButtonComponent.text({
    ComponentKey? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) = TextButtonComponent;

  const factory ButtonComponent.icon({
    ComponentKey? key,
    VoidCallback? onPressed,
    required IconData icon,
  }) = IconButtonComponent;

  const factory ButtonComponent.destructive({
    ComponentKey? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) = DestructiveButtonComponent;
}
