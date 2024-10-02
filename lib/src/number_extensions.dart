import 'package:flutter/material.dart';

extension NumberExtension on num {
  /// Creates an empty SizedBox with height as the given number.
  ///
  SizedBox get hSizedBox => SizedBox(height: toDouble());

  /// Creates an empty SizedBox with width as the given number.
  ///
  SizedBox get wSizedBox => SizedBox(width: toDouble());

  /// Converts the number to uniform EdgeInsets.
  EdgeInsets get edgeInsetAll => EdgeInsets.all(toDouble());

  /// Converts the number to symmetric horizontal edgeInset.
  EdgeInsets get edgeInsetHorizontal =>
      EdgeInsets.symmetric(horizontal: toDouble());

  /// Converts the number to symmetric vertical edgeInset.
  EdgeInsets get edgeInsetVertical =>
      EdgeInsets.symmetric(vertical: toDouble());
}
