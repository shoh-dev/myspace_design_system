import 'dart:developer';

import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Define variables
void _onPressed() => log("Icon Button Pressed");
final _icon = Icons.send_rounded;

@widgetbook.UseCase(name: 'Icon', type: IconButtonComponent)
Widget buildIconButtonUseCase(BuildContext context) {
  return IconButtonComponent(
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Icon Disabled', type: IconButtonComponent)
Widget buildDisabledIconButtonUseCase(BuildContext context) {
  return IconButtonComponent(
    icon: _icon,
  );
}
