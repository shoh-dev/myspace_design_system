import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_design_system/src/ui/components/form/components/helper_widgets/form_field_label.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';

class TextFieldComponent extends FormFieldComponent<String> {
  TextFieldComponent({
    super.key,
    super.initialValue,
    super.enabled,
    super.validator,
    super.onSaved,
    ValueChanged<String>? onChanged,
    String? hintText,
    String? label,
    bool canClear = false,
  }) : super(
          builder: (field) {
            return _Field(
              field: field,
              onChanged: onChanged,
              hintText: hintText,
              label: label,
              canClear: canClear,
              enabled: enabled,
              initialValue: initialValue,
              validator: validator,
            );
          },
        );

  @override
  FormFieldState<String> createState() => _FieldComponentState();
}

class _FieldComponentState extends FormFieldComponentState<String> {
  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) setValue(widget.initialValue);
  }
}

class _Field extends StatefulWidget {
  const _Field({
    required this.field,
    this.canClear = false,
    required this.enabled,
    this.hintText,
    this.label,
    this.onChanged,
    this.initialValue,
    this.validator,
  });

  final FormFieldState<String> field;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final String? label;
  final bool canClear;
  final bool enabled;
  final String? initialValue;
  final FormFieldValidator<String>? validator;

  @override
  State<_Field> createState() => __FieldState();
}

class __FieldState extends State<_Field> {
  FormFieldState<String> get field => widget.field;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    log('_Field dispose');
    super.dispose();
  }

  bool get canShowResetButton {
    return widget.canClear && _controller.text.isNotEmpty && widget.enabled;
  }

  @override
  void initState() {
    _controller.text = widget.initialValue ?? "";
    _controller.addListener(() {
      field.didChange(_controller.text);
      if (widget.canClear) {
        setState(() {});
      }
    });
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DisabledComponent(
      isDisabled: !widget.enabled,
      child: LayoutComponent.column(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          if (widget.label != null)
            FormFieldLabel(
              widget.label!,
              hasError: field.hasError,
            ),
          TextFormField(
            controller: _controller,
            validator: widget.validator,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              hintText: widget.hintText,
              suffixIcon: canShowResetButton
                  ? Transform.scale(
                      scale: .6,
                      child: ButtonComponent.iconOutlined(
                        icon: Icons.clear_rounded,
                        onPressed: () => reset(field.context),
                      ),
                    )
                  : null,
            ),
            enabled: widget.enabled,
          ),
        ],
      ),
    );
  }

  void reset(BuildContext context) {
    field.reset();
    widget.onChanged?.call("");
    _controller.clear();
    FocusScope.of(context).unfocus();
  }
}
