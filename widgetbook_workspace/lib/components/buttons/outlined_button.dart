import 'dart:developer';

import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Define variables
void _onPressed() => log("Outlined Button Pressed");
final _icon = Icons.send_rounded;

@widgetbook.UseCase(name: 'Outlined', type: ButtonComponent)
Widget buildOutlinedButtonUseCase(BuildContext context) {
  return ButtonComponent.outlined(
    text: "Outlined Button",
    onPressed: _onPressed,
  );
}

@widgetbook.UseCase(name: 'Outlined with Icon', type: ButtonComponent)
Widget buildIconOutlinedButtonUseCase(BuildContext context) {
  return ButtonComponent.outlined(
    text: "Outlined Button with Icon",
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Outlined Disabled', type: ButtonComponent)
Widget buildDisabledOutlinedButtonUseCase(BuildContext context) {
  return ButtonComponent.outlined(
    text: "Outlined Button Disabled",
  );
}

//Outlined Disabled with Icon
@widgetbook.UseCase(name: 'Outlined Disabled with Icon', type: ButtonComponent)
Widget buildDisabledIconOutlinedButtonUseCase(BuildContext context) {
  return ButtonComponent.outlined(
    text: "Outlined Button Disabled with Icon",
    icon: _icon,
  );
}
