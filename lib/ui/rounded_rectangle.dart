import 'package:flutter/material.dart';

extension RRectX<T extends Widget> on T {
  ///通用圆角，但不适用于有阴影等效果的微件
  ClipRRect roundedRect(double radius) {
    return ClipRRect(
      child: this,
      borderRadius: BorderRadius.circular(radius),
    );
  }

  ///通用圆角，但不适用于有阴影等效果的微件
  ClipRRect roundedRectVertical(double top, double bottom) {
    return ClipRRect(
      child: this,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(top),
          topRight: Radius.circular(top),
          bottomLeft: Radius.circular(bottom),
          bottomRight: Radius.circular(bottom)),
    );
  }

  ///通用圆角，但不适用于有阴影等效果的微件
  ClipRRect roundedRectHorizontal(double left, double right) {
    return ClipRRect(
      child: this,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(left),
          topRight: Radius.circular(right),
          bottomLeft: Radius.circular(left),
          bottomRight: Radius.circular(right)),
    );
  }
}

///圆角卡片
extension RRectCardX on Card {
  Card roundedRect(double radius) {
    return Card(
      key: key,
      color: color,
      shadowColor: shadowColor,
      elevation: elevation,
      shape: roundedRectShape,
      borderOnForeground: borderOnForeground,
      margin: margin,
      clipBehavior: clipBehavior,
      child: child,
      semanticContainer: semanticContainer,
    );
  }
}

ShapeBorder get roundedRectShape =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));

// extension RoundedRectangleButton on ButtonStyleButton {
//   roundedRect(double radius) {
//     return Card();
//   }
// }
