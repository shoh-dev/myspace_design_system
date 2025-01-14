import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:myspace_design_system/utils/helpers/theme.dart';

class CheckboxComponent extends FormFieldComponent<bool> {
  CheckboxComponent({
    super.key,
    this.onChanged,
    super.enabled,
    super.initialValue,
    super.onSaved,
    super.validator,
  }) : super(
          builder: (field) {
            final hasError = field.hasError;
            final errorText = field.errorText;
            final context = field.context;
            return LayoutComponent.column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DisabledComponent(
                  isDisabled: !enabled,
                  child: Checkbox(
                    value: field.value,
                    onChanged: enabled
                        ? (value) {
                            field.didChange(value);
                            onChanged?.call(value);
                          }
                        : null,
                  ),
                ),
                if (hasError)
                  Text(
                    errorText!,
                    style: context.textTheme.bodySmall!
                        .copyWith(color: context.colorScheme.error),
                  ),
              ],
            );
          },
        );

  final ValueChanged<bool?>? onChanged;

  @override
  FormFieldState<bool> createState() => _CheckboxComponentState();
}

class _CheckboxComponentState extends FormFieldComponentState<bool> {
  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) setValue(widget.initialValue);
  }
}
