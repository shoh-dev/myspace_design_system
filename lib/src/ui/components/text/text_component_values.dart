import 'dart:developer';

import 'text_component.dart';

extension TextComponentValueHelpers on TextComponentValue {
  TextComponent build() => TextComponent(value: this);
}

// ---> Types

abstract class TextComponentValue {
  const TextComponentValue();

  factory TextComponentValue.hardCoded(String text, [bool ignoreLog = false]) =>
      HardCodedTextComponentValue(text, ignoreLog);

  factory TextComponentValue.number(num number) =>
      NumberTextComponentValue(number);

  factory TextComponentValue.currency(num number) =>
      CurrencyTextComponentValue(number);

  factory TextComponentValue.any(String text) =>
      AnyDataTextComponentValue(text);
}

class HardCodedTextComponentValue extends TextComponentValue {
  final String text;

  HardCodedTextComponentValue(this.text, [bool ignoreLog = false]) {
    if (!ignoreLog) {
      //file where HardCodedTextComponentValue is used
      try {
        final stackTrace = StackTrace.current;
        final fileName = stackTrace.toString().split('\n')[1];
        log("\n${fileName.replaceAll("    ", "")}",
            name: 'HardCodedTextComponentValue');
      } catch (e) {
        return;
      }
    }
  }
}

abstract class DataTextComponentValue extends TextComponentValue {
  const DataTextComponentValue();

  String string();
}

class AnyDataTextComponentValue extends DataTextComponentValue {
  final String text;

  AnyDataTextComponentValue(this.text);

  @override
  String string() => text;
}

class NumberTextComponentValue extends DataTextComponentValue {
  final num number;

  NumberTextComponentValue(this.number);

  @override
  String string() => number.toString();
}

class CurrencyTextComponentValue extends DataTextComponentValue {
  final num number;

  CurrencyTextComponentValue(this.number);

  @override
  String string() => "\$$number";
}

// ---> Types End
