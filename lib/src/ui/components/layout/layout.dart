import 'package:fcode_design_system/src/ui/components/component/component.dart';
import 'package:fcode_design_system/src/ui/components/key/key.dart';
import 'package:fcode_design_system/src/ui/components/layout/column.dart';
import 'package:fcode_design_system/src/ui/components/layout/row.dart';
import 'package:fcode_design_system/src/ui/components/layout/stack.dart';
import 'package:flutter/material.dart';

export 'row.dart';
export 'column.dart';
export 'stack.dart';

abstract class LayoutComponent extends Component {
  const LayoutComponent({super.key});

  /// Not finished yet
  factory LayoutComponent.stack({
    ComponentKey? key,
    required final List<Component> children,
  }) {
    return StackComponent(
      key: key,
      children: children,
    );
  }

  factory LayoutComponent.column({
    required final List<Component> children,
    double? spacing,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisSize? mainAxisSize,
  }) {
    return ColumnComponent(
      spacing: spacing,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }

  factory LayoutComponent.row({
    required final List<Component> children,
    double? spacing,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisSize? mainAxisSize,
  }) {
    return RowComponent(
      spacing: spacing,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }
}
