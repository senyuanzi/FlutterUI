import 'package:flutter/material.dart';

extension WidgetEx<T extends Widget> on T {
  onClick(GestureTapCallback? onClick) => action(onClick: onClick);

  onDoubleClick(GestureTapCallback? onDoubleClick) => action(onClick: onDoubleClick);

  onLongPress(GestureLongPressCallback? onLongPress) => action(onClick: onLongPress);

  Material action({
    GestureTapCallback? onClick,
    GestureTapCallback? onDoubleClick,
    GestureLongPressCallback? onLongPress,
  }) {
    return Material(
      child: InkWell(
        child: this,
        onTap: onClick,
        onDoubleTap: onDoubleClick,
        onLongPress: onLongPress,
      ),
    );
  }
}
