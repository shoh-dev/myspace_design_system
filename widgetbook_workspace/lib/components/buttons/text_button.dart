import 'dart:developer';

import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Define variables
void _onPressed() => log("Text Button Pressed");
final _icon = Icons.send_rounded;

@widgetbook.UseCase(name: 'Text', type: ButtonComponent)
Widget buildTextButtonUseCase(BuildContext context) {
  return ButtonComponent.text(
    text: "Text Button",
    onPressed: _onPressed,
  );
}

@widgetbook.UseCase(name: 'Text with Icon', type: ButtonComponent)
Widget buildIconTextButtonUseCase(BuildContext context) {
  return ButtonComponent.text(
    text: "Text Button with Icon",
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Text Disabled', type: ButtonComponent)
Widget buildDisabledTextButtonUseCase(BuildContext context) {
  return ButtonComponent.text(
    text: "Text Button Disabled",
  );
}

//Text Disabled with Icon
@widgetbook.UseCase(name: 'Text Disabled with Icon', type: ButtonComponent)
Widget buildDisabledIconTextButtonUseCase(BuildContext context) {
  return ButtonComponent.text(
    text: "Text Button Disabled with Icon",
    icon: _icon,
  );
}
