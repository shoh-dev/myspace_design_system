import 'package:fcode_design_system/src/ui/components/component/component.dart';
import 'package:fcode_design_system/src/ui/components/layout/layout.dart';
import 'package:flutter/material.dart';

class ColumnComponent extends LayoutComponent {
  final List<Component> children;
  final double? spacing;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;

  const ColumnComponent({
    super.key,
    required this.children,
    this.spacing,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: key,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      spacing: spacing ?? 0.0,
      children: children,
    );
  }
}
