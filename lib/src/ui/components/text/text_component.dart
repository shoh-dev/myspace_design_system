import 'dart:developer';

import 'package:fcode_design_system/src/ui/components/component/component.dart';
import 'package:flutter/material.dart';

abstract class TextComponent extends Component {
  const TextComponent({super.key});

  factory TextComponent.hardCoded(String text, {bool ignoreLog}) =
      _HardCodedTextComponent;

  const factory TextComponent.number(num number) = _NumberTextComponent;

  const factory TextComponent.any(dynamic value) = _AnyTextComponent;

  const factory TextComponent.currency(num number) = _CurrencyTextComponent;
}

class _HardCodedTextComponent extends TextComponent {
  final String text;
  final bool ignoreLog;

  _HardCodedTextComponent(this.text, {this.ignoreLog = false}) {
    if (!ignoreLog) {
      try {
        final stackTrace = StackTrace.current;
        final fileName = stackTrace.toString().split('\n')[1];
        log("\n${fileName.replaceAll("     ", "")}",
            name: '_HardCodedTextComponentValue');
      } catch (e) {
        log("Error occurred while logging $e",
            name: '_HardCodedTextComponentValue');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class _AnyTextComponent extends TextComponent {
  const _AnyTextComponent(this.value);

  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Text(value.toString());
  }
}

class _NumberTextComponent extends TextComponent {
  const _NumberTextComponent(this.number);

  final num number;

  @override
  Widget build(BuildContext context) {
    //todo: format as number
    return Text(number.toString());
  }
}

class _CurrencyTextComponent extends TextComponent {
  const _CurrencyTextComponent(this.number);

  final num number;

  @override
  Widget build(BuildContext context) {
    //todo: format as currency
    return Text(number.toString());
  }
}

//todo: implement date, time, etc text components
