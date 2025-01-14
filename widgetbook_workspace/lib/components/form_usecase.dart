//Destructive Button
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Text Field Component', type: FormFieldComponent)
Widget buildTextFieldInitialComponent(BuildContext context) {
  return TextFieldComponent(
    initialValue: context.knobs.string(label: "Initial Value"),
    enabled: context.knobs.boolean(label: "Enabled", initialValue: true),
    hintText: context.knobs
        .string(label: "Hint Text", initialValue: "Enter your text"),
    label: context.knobs.string(label: "Label", initialValue: "Text Field"),
  );
}

@UseCase(name: 'Checkbox Component', type: FormFieldComponent)
Widget buildCheckbox(BuildContext context) {
  return CheckboxComponent(
    label: context.knobs.string(label: "Label", initialValue: "Check me"),
    initialValue:
        context.knobs.boolean(label: "Initial Value", initialValue: true),
    enabled: context.knobs.boolean(label: "Enabled", initialValue: true),
    validator: (value) => value == true ? null : 'Please check the box',
  );
}
