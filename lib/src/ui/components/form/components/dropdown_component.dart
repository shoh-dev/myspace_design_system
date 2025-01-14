import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:myspace_design_system/src/ui/components/form/components/helper_widgets/form_field_label.dart';
import 'package:myspace_design_system/src/ui/components/layout/layout.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';

class DropdownComponent<T> extends FormFieldComponent<DropdownItem<T>> {
  DropdownComponent({
    super.key,
    super.initialValue,
    super.validator,
    super.onSaved,
    super.enabled,
    required Iterable<DropdownItem<T>> items,
    ValueChanged<DropdownItem<T>?>? onChanged,
    String? hintText,
    String? label,

    // /// Return item index if found, otherwise return null
    // SearchCallback<DropdownItem<T>>? searchCallback,
  }) : super(
          builder: (field) {
            // final context = field.context;
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
                  DropdownMenu<DropdownItem<T>>(
                    dropdownMenuEntries: [
                      for (final item in items)
                        DropdownMenuEntry(
                          value: item,
                          label: item.label,
                        ),
                    ],
                    searchCallback: (entries, query) {
                      if (query.isEmpty) return null;
                      final index = entries.indexWhere((element) {
                        return element.label
                            .toLowerCase()
                            .contains(query.toLowerCase());
                      });
                      return index == -1 ? null : index;
                    },
                    initialSelection: initialValue,
                    hintText: hintText,
                    enabled: enabled,
                    errorText: field.errorText,
                    expandedInsets: EdgeInsets.zero,
                    enableFilter: true,
                    onSelected: (value) {
                      field.didChange(value);
                      onChanged?.call(value);
                    },
                  ),
                ],
              ),
            );
          },
        ) {
    assert(items.isNotEmpty);
    //check if labels are not duplicated
    final labels = items.map((e) => e.label);
    assert(labels.length == labels.toSet().length, 'Labels must be unique');
  }
  @override
  FormFieldState<DropdownItem<T>> createState() => _DropdownComponentState<T>();
}

class _DropdownComponentState<T>
    extends FormFieldComponentState<DropdownItem<T>> {
  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) setValue(widget.initialValue);
  }
}

class DropdownItem<T> {
  final T value;
  final String label;

  DropdownItem({
    required this.value,
    required this.label,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DropdownItem<T> && other.label == label;
  }

  @override
  int get hashCode => label.hashCode;
}
