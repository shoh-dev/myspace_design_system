import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:myspace_design_system/utils/helpers/theme.dart';

class TextFieldComponent extends FormFieldComponent<String> {
  TextFieldComponent({
    super.key,
    super.initialValue,
    this.onChanged,
    super.enabled,
    this.hintText,
    super.validator,
    super.onSaved,
  }) : super(
          builder: (field) {
            final context = field.context;
            return DisabledComponent(
              isDisabled: !enabled,
              child: TextFormField(
                validator: validator,
                initialValue: initialValue,
                onChanged: onChanged,
                decoration: InputDecoration(hintText: hintText),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: !enabled
                          ? context.colorScheme.onSurface.withValues(alpha: 0.5)
                          : null,
                    ),
                enabled: enabled,
              ),
            );
          },
        );

  final ValueChanged<String>? onChanged;
  final String? hintText;

  // @override
  // Widget build(BuildContext context) {
  //   return DisabledComponent(
  //     isDisabled: !enabled,
  //     child: TextFormField(
  //       initialValue: initialValue,
  //       onChanged: onChanged,
  //       decoration: InputDecoration(
  //         hintText: hintText,
  //       ),
  //       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
  //             color: !enabled
  //                 ? context.colorScheme.onSurface.withValues(alpha: 0.5)
  //                 : null,
  //           ),
  //       enabled: enabled,
  //     ),
  //   );
  // }
}
