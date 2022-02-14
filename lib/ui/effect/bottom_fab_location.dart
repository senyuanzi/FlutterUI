import 'dart:math' as math;

import 'package:flutter/material.dart';

///fab控件 底部定位
class BottomFloatingActionButtonLocation extends StandardFabLocation {
  const BottomFloatingActionButtonLocation();

  @override
  String toString() => 'FloatingActionButtonLocation.BottomFloatingActionButtonLocation';

  @override
  double getOffsetX(ScaffoldPrelayoutGeometry scaffoldGeometry, double adjustment) {
    assert(scaffoldGeometry.textDirection != null);
    switch (scaffoldGeometry.textDirection) {
      case TextDirection.rtl:
        return scaffoldGeometry.minInsets.left - adjustment;
      case TextDirection.ltr:
        return scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.minInsets.right -
            scaffoldGeometry.floatingActionButtonSize.width +
            adjustment;
    }
  }

  @override
  double getOffsetY(ScaffoldPrelayoutGeometry scaffoldGeometry, double adjustment) {
    final double contentBottom = scaffoldGeometry.contentBottom;
    final double bottomContentHeight = scaffoldGeometry.scaffoldSize.height - contentBottom;
    final double bottomSheetHeight = scaffoldGeometry.bottomSheetSize.height;
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    final double snackBarHeight = scaffoldGeometry.snackBarSize.height;
    final double safeMargin = math.max(
      kFloatingActionButtonMargin,
      scaffoldGeometry.minViewPadding.bottom - bottomContentHeight + kFloatingActionButtonMargin,
    );

    double fabY = contentBottom - fabHeight;
    if (snackBarHeight > 0.0) {
      fabY =
          math.min(fabY, contentBottom - snackBarHeight - fabHeight - kFloatingActionButtonMargin);
    }
    if (bottomSheetHeight > 0.0) {
      fabY = math.min(fabY, contentBottom - bottomSheetHeight - fabHeight / 2.0);
    }
    return fabY + adjustment;
  }
}
