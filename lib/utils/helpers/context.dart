import 'package:flutter/material.dart';

extension BuildContextHelpers on BuildContext {
  bool isMobilePlatform() {
    return Theme.of(this).platform == TargetPlatform.android || Theme.of(this).platform == TargetPlatform.iOS;
  }

  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
}
