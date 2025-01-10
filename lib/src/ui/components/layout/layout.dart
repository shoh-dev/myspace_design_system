import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:flutter/material.dart';

import 'types/column.dart';
import 'types/row.dart';
import 'types/stack.dart';

abstract class LayoutComponent extends Component {
  const LayoutComponent({
    super.key,
    required this.children,
    this.spacing,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
  });

  final List<Component> children;
  final double? spacing;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;

  const factory LayoutComponent.row({
    required final List<Component> children,
    double? spacing,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisSize? mainAxisSize,
  }) = RowComponent;

  const factory LayoutComponent.column({
    required final List<Component> children,
    double? spacing,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisSize? mainAxisSize,
  }) = ColumnComponent;

  /// Not finished yet
  const factory LayoutComponent.stack({
    required final List<Component> children,
  }) = StackComponent;
}
