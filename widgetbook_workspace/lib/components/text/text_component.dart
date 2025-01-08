import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Hard Coded Text', type: TextComponent)
Widget buildHardCodedText(BuildContext context) {
  return TextComponentValue.hardCoded("Hard Coded Text").build();
}

@widgetbook.UseCase(name: 'Number Text', type: TextComponent)
Widget buildNumberText(BuildContext context) {
  return TextComponentValue.number(12000).build();
}

@widgetbook.UseCase(name: 'Currency Text', type: TextComponent)
Widget buildCurrencyText(BuildContext context) {
  return TextComponentValue.currency(12000).build();
}

@widgetbook.UseCase(name: 'Any Data Text', type: TextComponent)
Widget buildAnyDataText(BuildContext context) {
  return TextComponentValue.any("London, UK").build();
}
