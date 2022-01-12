import 'dart:ui';
import 'package:flutter/material.dart';

final MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
final double windowWidth = mediaQuery.size.width;
final double windowHeight = mediaQuery.size.height;
final double windowTopbarH = mediaQuery.padding.top;
final double windowBotbarH = mediaQuery.padding.bottom;
final double windowPixelRatio = mediaQuery.devicePixelRatio;

// 根据ui实际情况修改
double uiWidth = 750;

/// Container(
///   width: 40.0.px,
///   height: 8.0.px,
///   color: Colors.white,
/// ),
extension UIAdaptNum on num {
  double get _ratio => windowWidth / uiWidth;
  double get px => this * _ratio;
}
