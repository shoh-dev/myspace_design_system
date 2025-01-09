// ---> Types

import 'dart:developer';

abstract class TextComponentValue {
  const TextComponentValue();

  // factory TextComponentValue.hardCoded(String text) =>
  //     HardCodedTextComponentValue(text);

  // factory TextComponentValue.number(num number) =>
  //     NumberTextComponentValue(number);

  // factory TextComponentValue.currency(num number) =>
  //     CurrencyTextComponentValue(number);

  // factory TextComponentValue.any(String text) =>
  //     AnyDataTextComponentValue(text);
}

class HardCodedTextComponentValue extends TextComponentValue {
  final String text;
  final bool ignoreLog;

  HardCodedTextComponentValue(this.text, {this.ignoreLog = false}) {
    if (!ignoreLog) {
      //file where HardCodedTextComponentValue is used
      try {
        final stackTrace = StackTrace.current;
        final fileName = stackTrace.toString().split('\n')[1];
        log("\n${fileName.replaceAll("     ", "")}",
            name: 'HardCodedTextComponentValue');
        // ignore: empty_catches
      } catch (e) {}
    }
  }
}

abstract class DataTextComponentValue extends TextComponentValue {
  const DataTextComponentValue();

  String string();
}

class AnyDataTextComponentValue extends DataTextComponentValue {
  final String text;

  const AnyDataTextComponentValue(this.text);

  @override
  String string() => text;
}

class NumberTextComponentValue extends DataTextComponentValue {
  final num number;

  const NumberTextComponentValue(this.number);

  @override
  String string() => number.toString();
}

class CurrencyTextComponentValue extends DataTextComponentValue {
  final num number;

  const CurrencyTextComponentValue(this.number);

  @override
  String string() => "\$$number";
}

// ---> Types End
