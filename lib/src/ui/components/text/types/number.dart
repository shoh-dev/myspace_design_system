import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';

class NumberTextComponent extends TextComponent {
  const NumberTextComponent(this.number, {super.key, this.style});

  final num number;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    //todo: format as number
    return Text(
      number.toString(),
      style: style,
    );
  }
}
