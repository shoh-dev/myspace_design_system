import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Row', type: RowComponent)
Widget buildRow(BuildContext context) {
  return LayoutComponent.row(
    spacing: 12,
    children: [
      TextComponent.hardCoded("Hard Coded Text"),
      const TextComponent.number(12000),
      const TextComponent.currency(12000),
      const TextComponent.any("London, UK"),
    ],
  );
}

@widgetbook.UseCase(name: 'Column', type: ColumnComponent)
Widget buildColumn(BuildContext context) {
  return LayoutComponent.column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextComponent.hardCoded("Hard Coded Text"),
      const TextComponent.number(12000),
      const TextComponent.currency(12000),
      const TextComponent.any("London, UK"),
    ],
  );
}

@widgetbook.UseCase(name: 'Stack', type: StackComponent)
Widget buildStack(BuildContext context) {
  return LayoutComponent.stack(
    children: [
      TextComponent.hardCoded("Hard Coded Text"),
      const TextComponent.number(12000),
      const TextComponent.currency(12000),
      const TextComponent.any("London, UK"),
    ],
  );
}
