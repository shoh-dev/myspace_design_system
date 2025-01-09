import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Row', type: RowComponent)
Widget buildRow(BuildContext context) {
  return LayoutComponent.row(
    spacing: 12,
    children: [
      TextComponent(
          value:
              HardCodedTextComponentValue("Hard Coded Text", ignoreLog: true)),
      const TextComponent(value: NumberTextComponentValue(12000)),
      const TextComponent(value: CurrencyTextComponentValue(12000)),
      const TextComponent(value: AnyDataTextComponentValue("London, UK")),
    ],
  );
}

@widgetbook.UseCase(name: 'Column', type: ColumnComponent)
Widget buildColumn(BuildContext context) {
  return LayoutComponent.column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextComponent(
          value:
              HardCodedTextComponentValue("Hard Coded Text", ignoreLog: true)),
      const TextComponent(value: NumberTextComponentValue(12000)),
      const TextComponent(value: CurrencyTextComponentValue(12000)),
      const TextComponent(value: AnyDataTextComponentValue("London, UK")),
    ],
  );
}

@widgetbook.UseCase(name: 'Stack', type: StackComponent)
Widget buildStack(BuildContext context) {
  return LayoutComponent.stack(
    children: [
      TextComponent(
          value:
              HardCodedTextComponentValue("Hard Coded Text", ignoreLog: true)),
      const TextComponent(value: NumberTextComponentValue(12000)),
      const TextComponent(value: CurrencyTextComponentValue(12000)),
      const TextComponent(value: AnyDataTextComponentValue("London, UK")),
    ],
  );
}
