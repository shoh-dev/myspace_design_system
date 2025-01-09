import 'dart:developer';

import 'package:fcode_design_system/src/ui/components/component/component.dart';
import 'package:flutter/material.dart';

abstract class TextComponent extends Component {
  const TextComponent({super.key});

  factory TextComponent.hardCoded(String text, {bool ignoreLog}) =
      HardCodedTextComponent._;

  const factory TextComponent.number(num number) = NumberTextComponent._;

  const factory TextComponent.any(dynamic value) = AnyTextComponent._;

  const factory TextComponent.currency(num number) = CurrencyTextComponent._;
}

class HardCodedTextComponent extends TextComponent {
  final String text;
  final bool ignoreLog;

  HardCodedTextComponent._(this.text, {this.ignoreLog = false}) {
    if (!ignoreLog) {
      try {
        final stackTrace = StackTrace.current;
        final fileName = stackTrace.toString().split('\n')[1];
        log("\n${fileName.replaceAll("     ", "")}",
            name: 'HardCodedTextComponentValue');
      } catch (e) {
        log("Error occurred while logging $e",
            name: 'HardCodedTextComponentValue');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class AnyTextComponent extends TextComponent {
  const AnyTextComponent._(this.value);

  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Text(value.toString());
  }
}

class NumberTextComponent extends TextComponent {
  const NumberTextComponent._(this.number);

  final num number;

  @override
  Widget build(BuildContext context) {
    //todo: format as number
    return Text(number.toString());
  }
}

class CurrencyTextComponent extends TextComponent {
  const CurrencyTextComponent._(this.number);

  final num number;

  @override
  Widget build(BuildContext context) {
    //todo: format as currency
    return Text(number.toString());
  }
}

//todo: implement date, time, etc text components
