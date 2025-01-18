import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class CellDef<T> {
  const CellDef({required this.value});

  final T value;

  Widget build(BuildContext context);

  DataCell buildDataCell(BuildContext context) {
    return DataCell(
      build(context),
    );
  }

  static CellDef<String> text(String value) {
    return TextCellDef(value: value);
  }

  static CellDef<num> number(num value) {
    return NumberCellDef(value: value);
  }

  static CellDef<num> currency(num value) {
    return CurrencyCellDef(value: value);
  }
}

class TextCellDef extends CellDef<String> {
  const TextCellDef({
    required super.value,
  });

  @override
  String toString() {
    return "TextCellDef: $value";
  }

  @override
  Widget build(BuildContext context) {
    return Text(value);
  }
}

class NumberCellDef extends CellDef<num> {
  const NumberCellDef({
    required super.value,
  });

  @override
  String toString() {
    return "NumberCellDef: $value";
  }

  @override
  Widget build(BuildContext context) {
    return Text(NumberFormat.decimalPattern().format(value));
  }
}

class CurrencyCellDef extends CellDef<num> {
  const CurrencyCellDef({
    required super.value,
  });

  @override
  String toString() {
    return "CurrencyCellDef: $value";
  }

  @override
  Widget build(BuildContext context) {
    return Text(NumberFormat.simpleCurrency().format(value));
  }
}
