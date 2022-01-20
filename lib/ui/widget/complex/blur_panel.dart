import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_flutter_ui/ui/layout.dart';

class BlurPanel extends StatelessWidget {
  const BlurPanel({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4), child: child),
    );
  }
}

extension BlurEx<T extends Widget> on T {
  BlurPanel blur() {
    return BlurPanel(child: this);
  }
  Expanded blurExpanded() {
    return BlurPanel(child: this).expanded();
  }
}
