import 'package:flutter/material.dart';

extension ActionX<T extends Widget> on T {
  Material onClick(GestureTapCallback? onClick) => action(onClick: onClick);

  Material onDoubleClick(GestureTapCallback? onDoubleClick) => action(onClick: onDoubleClick);

  Material onLongPress(GestureLongPressCallback? onLongPress) => action(onClick: onLongPress);

  Material action({
    GestureTapCallback? onClick,
    GestureTapCallback? onDoubleClick,
    GestureLongPressCallback? onLongPress,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: this,
        onTap: onClick,
        onDoubleTap: onDoubleClick,
        onLongPress: onLongPress,
        highlightColor: Colors.transparent,
      ),
    );
  }
}
