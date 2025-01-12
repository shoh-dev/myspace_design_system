//Destructive Button
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Text Field Component', type: FormComponent)
Widget buildTextFieldInitialComponent(BuildContext context) {
  return FormComponent.textField(
    initialValue: context.knobs.string(label: "Initial Value"),
    enabled: context.knobs.boolean(label: "Enabled", initialValue: true),
  );
}
