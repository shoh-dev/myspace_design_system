import 'package:flutter/material.dart';

extension BuildContextHelpers on BuildContext {
  bool isMobilePlatform() {
    return Theme.of(this).platform == TargetPlatform.android ||
        Theme.of(this).platform == TargetPlatform.iOS;
  }
}
