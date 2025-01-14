import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_design_system/utils/helpers/theme.dart';

class FormFieldLabel extends Component {
  const FormFieldLabel(
    this.label, {
    super.key,
    this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (onPressed == null) {
      return Text(label, style: context.textTheme.bodyMedium);
    }
    return GestureDetector(
      onTap: onPressed,
      child: Text(label, style: context.textTheme.bodyMedium),
    );
  }
}
