import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Row', type: RowComponent)
Widget buildRow(BuildContext context) {
  return LayoutComponent.row(
    spacing: 12,
    children: [
      TextComponentValue.hardCoded("Hard Coded Text", true).build(),
      TextComponentValue.number(12000).build(),
      TextComponentValue.currency(12000).build(),
      TextComponentValue.any("London, UK").build(),
    ],
  );
}

@widgetbook.UseCase(name: 'Column', type: ColumnComponent)
Widget buildColumn(BuildContext context) {
  return LayoutComponent.column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextComponentValue.hardCoded("Hard Coded Text", true).build(),
      TextComponentValue.number(12000).build(),
      TextComponentValue.currency(12000).build(),
      TextComponentValue.any("London, UK").build(),
    ],
  );
}

@widgetbook.UseCase(name: 'Stack', type: StackComponent)
Widget buildStack(BuildContext context) {
  return LayoutComponent.stack(
    children: [
      TextComponentValue.hardCoded("Hard Coded Text", true).build(),
      TextComponentValue.number(12000).build(),
      TextComponentValue.currency(12000).build(),
      TextComponentValue.any("London, UK").build(),
    ],
  );
}
