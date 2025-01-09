import 'dart:developer';

import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Define variables
void _onPressed() => log("Primary Button Pressed");
final _icon = Icons.send_rounded;

@widgetbook.UseCase(name: 'Primary Button', type: ButtonComponent)
Widget buildPrimaryButtonUseCase(BuildContext context) {
  return const ButtonComponent(
    text: "Primary Button",
    onPressed: _onPressed,
  );
}

@widgetbook.UseCase(name: 'Primary Button with Icon', type: ButtonComponent)
Widget buildIconPrimaryButtonUseCase(BuildContext context) {
  return ButtonComponent(
    text: "Primary Button with Icon",
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Primary Button Disabled', type: ButtonComponent)
Widget buildDisabledPrimaryButtonUseCase(BuildContext context) {
  return const ButtonComponent(
    text: "Primary Button Disabled",
  );
}

//Primary Disabled with Icon
@widgetbook.UseCase(
    name: 'Primary Button Disabled with Icon', type: ButtonComponent)
Widget buildDisabledIconPrimaryButtonUseCase(BuildContext context) {
  return ButtonComponent(
    text: "Primary Button Disabled with Icon",
    icon: _icon,
  );
}
