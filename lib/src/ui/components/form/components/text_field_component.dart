import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/form/form_component.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:myspace_design_system/utils/helpers/theme.dart';

class TextFieldComponent extends FormComponent {
  const TextFieldComponent({
    super.key,
    this.initialValue,
    this.onChanged,
    this.enabled = false,
  });

  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return DisabledComponent(
      isDisabled: !enabled,
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Enter text here",
        ),
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: !enabled
                  ? context.colorScheme.onSurface.withValues(alpha: 0.5)
                  : null,
            ),
        enabled: enabled,
      ),
    );
  }
}
