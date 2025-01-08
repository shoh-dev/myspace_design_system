import 'package:fcode_design_system/src/ui/components/component/component.dart';
import 'package:fcode_design_system/src/ui/components/layout/layout.dart';
import 'package:flutter/material.dart';

class StackComponent extends LayoutComponent {
  final List<Component> children;

  const StackComponent({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: key,
      children: children,
    );
  }
}
