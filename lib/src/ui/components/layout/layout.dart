import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:flutter/material.dart';

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
  }) = _RowComponent;

  const factory LayoutComponent.column({
    required final List<Component> children,
    double? spacing,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisSize? mainAxisSize,
  }) = _ColumnComponent;

  /// Not finished yet
  const factory LayoutComponent.stack({
    required final List<Component> children,
  }) = _StackComponent;
}

class _RowComponent extends LayoutComponent {
  const _RowComponent({
    required super.children,
    super.spacing,
    super.mainAxisAlignment,
    super.crossAxisAlignment,
    super.mainAxisSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      spacing: spacing ?? 0.0,
      children: children,
    );
  }
}

class _ColumnComponent extends LayoutComponent {
  const _ColumnComponent({
    required super.children,
    super.spacing,
    super.mainAxisAlignment,
    super.crossAxisAlignment,
    super.mainAxisSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: key,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      spacing: spacing ?? 0.0,
      children: children,
    );
  }
}

class _StackComponent extends LayoutComponent {
  const _StackComponent({
    required super.children,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: key,
      children: children,
    );
  }
}
