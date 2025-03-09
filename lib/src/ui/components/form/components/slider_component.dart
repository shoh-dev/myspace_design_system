import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_design_system/src/ui/components/form/components/helper_widgets/form_field_label.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';

import 'helper_widgets/form_field_error_text.dart';

class SliderComponent extends FormField<double> {
  SliderComponent({
    super.key,
    this.onChanged,
    super.enabled,
    super.initialValue,
    super.onSaved,
    super.validator,
    this.label,
    this.max,
    this.min,
  }) : super(
          builder: (field) {
            final hasError = field.hasError;
            final errorText = field.errorText;
            final _max = max ?? 1.0;
            final _min = min ?? 0.0;
            return LayoutComponent.column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (label != null)
                  FormFieldLabel(
                    "$label (${field.value?.toStringAsFixed(2) ?? 0})",
                    hasError: hasError,
                  )
                else
                  FormFieldLabel(
                    "${field.value?.toStringAsFixed(2) ?? 0}",
                    hasError: hasError,
                  ),
                LayoutComponent.row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: DisabledComponent(
                        isDisabled: !enabled,
                        child: Slider(
                          divisions: _max.truncate(),
                          value: field.value ?? 0.0,
                          label: field.value?.toStringAsFixed(2),
                          min: _min,
                          max: _max,
                          onChanged: enabled
                              ? (value) {
                                  field.didChange(value);
                                  onChanged?.call(value);
                                }
                              : null,
                          thumbColor: hasError
                              ? Colors.red
                              : field.context.colorScheme.primary,
                          activeColor: hasError ? Colors.red : null,
                        ),
                      ),
                    ),
                    // Text(
                    //   (field.value ?? 0.0).toStringAsFixed(2),
                    //   style: field.context.textTheme.titleSmall,
                    // ),
                  ],
                ),
                if (hasError) FormFieldErrorText(errorText!),
              ],
            );
          },
        );

  final ValueChanged<double?>? onChanged;
  final double? min;
  final double? max;
  final String? label;

  @override
  FormFieldState<double> createState() => _SliderComponentState();
}

class _SliderComponentState extends FormFieldState<double> {
  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) setValue(widget.initialValue);
  }
}
