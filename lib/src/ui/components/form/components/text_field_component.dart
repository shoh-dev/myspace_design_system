import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:myspace_design_system/src/ui/components/form/components/helper_widgets/form_field_label.dart';
import 'package:myspace_design_system/src/ui/components/layout/layout.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';

class TextFieldComponent extends FormFieldComponent<String> {
  TextFieldComponent({
    super.key,
    super.initialValue,
    this.onChanged,
    super.enabled,
    this.hintText,
    super.validator,
    super.onSaved,
    this.label,
  }) : super(
          builder: (field) {
            return DisabledComponent(
              isDisabled: !enabled,
              child: LayoutComponent.column(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  if (label != null)
                    FormFieldLabel(
                      label,
                      hasError: field.hasError,
                    ),
                  TextFormField(
                    validator: validator,
                    initialValue: initialValue,
                    onChanged: onChanged,
                    decoration: InputDecoration(hintText: hintText),
                    // style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    //       color: !enabled
                    //           ? context.colorScheme.onSurface
                    //               .withValues(alpha: 0.5)
                    //           : null,
                    //     ),
                    enabled: enabled,
                  ),
                ],
              ),
            );
          },
        );

  final ValueChanged<String>? onChanged;
  final String? hintText;
  final String? label;

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
