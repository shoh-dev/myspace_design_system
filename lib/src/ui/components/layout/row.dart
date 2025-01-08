import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:fcode_design_system/src/ui/components/component/component.dart';
import 'package:flutter/material.dart';

class RowComponent extends LayoutComponent {
  final List<Component> children;
  final double? spacing;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;

  const RowComponent({
    super.key,
    required this.children,
    this.spacing,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      spacing: spacing ?? 0.0,
      children: children,
    );
  }
}
