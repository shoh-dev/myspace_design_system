import 'package:flutter/material.dart';

import 'text_component_values.dart';

export 'text_component_values.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    super.key,
    required this.value,
  });

  final TextComponentValue value;

  @override
  Widget build(BuildContext context) {
    return _buildChild(context);
  }

  TextStyle _buildTextStyle(BuildContext context) {
    return const TextStyle();
  }

  Widget _buildChild(BuildContext context) {
    return switch (value) {
      HardCodedTextComponentValue _ =>
        _text(context, (value as HardCodedTextComponentValue).text),
      NumberTextComponentValue _ =>
        _text(context, (value as NumberTextComponentValue).string()),
      CurrencyTextComponentValue _ =>
        _text(context, (value as CurrencyTextComponentValue).string()),
      AnyDataTextComponentValue _ =>
        _text(context, (value as AnyDataTextComponentValue).string()),
      _ => throw UnimplementedError(
          'Unsupported value type: ${value.runtimeType}'),
    };
  }

  Widget _text(BuildContext context, String text) {
    return Text(text, style: _buildTextStyle(context));
  }
}
