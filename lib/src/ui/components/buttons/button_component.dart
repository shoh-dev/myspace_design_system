import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:myspace_design_system/src/ui/components/key/key.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';
import 'package:flutter/material.dart';

Widget _disabled(Widget child, VoidCallback? onPressed) {
  return DisabledComponent(
    isDisabled: onPressed == null,
    child: child,
  );
}

abstract class ButtonComponent extends Component {
  const ButtonComponent({super.key, this.onPressed, this.text, this.icon});

  final VoidCallback? onPressed;
  final String? text;
  final IconData? icon;

  const factory ButtonComponent.outlined({
    ComponentKey? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) = _OutlinedButtonComponent;

  const factory ButtonComponent.primary({
    ComponentKey? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) = _PrimaryButtonComponent;

  const factory ButtonComponent.text({
    ComponentKey? key,
    VoidCallback? onPressed,
    required String text,
    IconData? icon,
  }) = _TextButtonComponent;

  const factory ButtonComponent.icon({
    ComponentKey? key,
    VoidCallback? onPressed,
    required IconData icon,
  }) = _IconButtonComponent;
}

class _OutlinedButtonComponent extends ButtonComponent {
  const _OutlinedButtonComponent({
    super.key,
    super.onPressed,
    required String text,
    super.icon,
  }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return _disabled(
        OutlinedButton.icon(
          onPressed: onPressed,
          label: Text(text!),
          icon: Icon(icon),
        ),
        onPressed,
      );
    }
    return _disabled(
      OutlinedButton(
        onPressed: onPressed,
        child: Text(text!),
      ),
      onPressed,
    );
  }
}

class _PrimaryButtonComponent extends ButtonComponent {
  const _PrimaryButtonComponent({
    super.key,
    super.onPressed,
    required String text,
    super.icon,
  }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return _disabled(
        FilledButton.icon(
          onPressed: onPressed,
          label: Text(text!),
          icon: Icon(icon),
        ),
        onPressed,
      );
    }
    return _disabled(
      FilledButton(
        onPressed: onPressed,
        child: Text(text!),
      ),
      onPressed,
    );
  }
}

class _TextButtonComponent extends ButtonComponent {
  const _TextButtonComponent({
    super.key,
    super.onPressed,
    required String text,
    super.icon,
  }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return _disabled(
        TextButton.icon(
          onPressed: onPressed,
          label: Text(text!),
          icon: Icon(icon),
        ),
        onPressed,
      );
    }
    return _disabled(
      TextButton(
        onPressed: onPressed,
        child: Text(text!),
      ),
      onPressed,
    );
  }
}

class _IconButtonComponent extends ButtonComponent {
  const _IconButtonComponent({
    super.key,
    super.onPressed,
    required IconData icon,
  }) : super(icon: icon);

  @override
  Widget build(BuildContext context) {
    return _disabled(
      IconButton(
        onPressed: onPressed,
        icon: Icon(icon!),
      ),
      onPressed,
    );
  }
}
