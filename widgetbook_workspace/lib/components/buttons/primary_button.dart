import 'dart:developer';

import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Define variables
void _onPressed() => log("Primary Button Pressed");
final _icon = Icons.send_rounded;

@widgetbook.UseCase(name: 'Primary', type: PrimaryButtonComponent)
Widget buildPrimaryButtonUseCase(BuildContext context) {
  return PrimaryButtonComponent(
    text: "Primary Button",
    onPressed: _onPressed,
  );
}

@widgetbook.UseCase(name: 'Primary with Icon', type: PrimaryButtonComponent)
Widget buildIconPrimaryButtonUseCase(BuildContext context) {
  return PrimaryButtonComponent(
    text: "Primary Button with Icon",
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Primary Disabled', type: PrimaryButtonComponent)
Widget buildDisabledPrimaryButtonUseCase(BuildContext context) {
  return PrimaryButtonComponent(
    text: "Primary Button Disabled",
  );
}

//Primary Disabled with Icon
@widgetbook.UseCase(
    name: 'Primary Disabled with Icon', type: PrimaryButtonComponent)
Widget buildDisabledIconPrimaryButtonUseCase(BuildContext context) {
  return PrimaryButtonComponent(
    text: "Primary Button Disabled with Icon",
    icon: _icon,
  );
}
