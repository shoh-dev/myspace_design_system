import 'dart:developer';

import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

void _onPressed() => log("Button Pressed");

const _icon = Icons.send_rounded;

@widgetbook.UseCase(name: 'Icon Button', type: ButtonComponent)
Widget buildIconButtonUseCase(BuildContext context) {
  return const ButtonComponent.icon(
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Icon Button Disabled', type: ButtonComponent)
Widget buildDisabledIconButtonUseCase(BuildContext context) {
  return const ButtonComponent.icon(
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Outlined Button', type: ButtonComponent)
Widget buildOutlinedButtonUseCase(BuildContext context) {
  return const ButtonComponent.outlined(
    text: "Outlined Button",
    onPressed: _onPressed,
  );
}

@widgetbook.UseCase(name: 'Outlined Button with Icon', type: ButtonComponent)
Widget buildIconOutlinedButtonUseCase(BuildContext context) {
  return const ButtonComponent.outlined(
    text: "Outlined Button with Icon",
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Outlined Button Disabled', type: ButtonComponent)
Widget buildDisabledOutlinedButtonUseCase(BuildContext context) {
  return const ButtonComponent.outlined(
    text: "Outlined Button Disabled",
  );
}

//Outlined Disabled with Icon
@widgetbook.UseCase(
    name: 'Outlined Button Disabled with Icon', type: ButtonComponent)
Widget buildDisabledIconOutlinedButtonUseCase(BuildContext context) {
  return const ButtonComponent.outlined(
    text: "Outlined Button Disabled with Icon",
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Primary Button', type: ButtonComponent)
Widget buildPrimaryButtonUseCase(BuildContext context) {
  return const ButtonComponent.primary(
    text: "Primary Button",
    onPressed: _onPressed,
  );
}

@widgetbook.UseCase(name: 'Primary Button with Icon', type: ButtonComponent)
Widget buildIconPrimaryButtonUseCase(BuildContext context) {
  return const ButtonComponent.primary(
    text: "Primary Button with Icon",
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Primary Button Disabled', type: ButtonComponent)
Widget buildDisabledPrimaryButtonUseCase(BuildContext context) {
  return const ButtonComponent.primary(
    text: "Primary Button Disabled",
  );
}

//Primary Disabled with Icon
@widgetbook.UseCase(
    name: 'Primary Button Disabled with Icon', type: ButtonComponent)
Widget buildDisabledIconPrimaryButtonUseCase(BuildContext context) {
  return const ButtonComponent.primary(
    text: "Primary Button Disabled with Icon",
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Text Button', type: ButtonComponent)
Widget buildTextButtonUseCase(BuildContext context) {
  return const ButtonComponent.text(
    text: "Text Button",
    onPressed: _onPressed,
  );
}

@widgetbook.UseCase(name: 'Text Button with Icon', type: ButtonComponent)
Widget buildIconTextButtonUseCase(BuildContext context) {
  return const ButtonComponent.text(
    text: "Text Button with Icon",
    onPressed: _onPressed,
    icon: _icon,
  );
}

@widgetbook.UseCase(name: 'Text Button Disabled', type: ButtonComponent)
Widget buildDisabledTextButtonUseCase(BuildContext context) {
  return const ButtonComponent.text(
    text: "Text Button Disabled",
  );
}

//Text Disabled with Icon
@widgetbook.UseCase(
    name: 'Text Button Disabled with Icon', type: ButtonComponent)
Widget buildDisabledIconTextButtonUseCase(BuildContext context) {
  return const ButtonComponent.text(
    text: "Text Button Disabled with Icon",
    icon: _icon,
  );
}
