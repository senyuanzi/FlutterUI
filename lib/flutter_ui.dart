library ui;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:the_flutter_ui/extension/scope_ex.dart';
import 'package:the_flutter_ui/ui/action.dart';

export 'package:the_flutter_ui/flutter_ui.dart';

export 'extension/scope_ex.dart';
export 'ui/action.dart';
export 'ui/color.dart';
export 'ui/effect/bottom_fab_location.dart';
export 'ui/effect/gradient_tab_indicator.dart';
export 'ui/layout/refresh_layout.dart';
export 'ui/rounded_rectangle.dart';
export 'ui/widget/button.dart';
export 'ui/widget/complex/blur_panel.dart';
export 'ui/widget/complex/swiper.dart';
export 'ui/widget/image.dart';
export 'ui/widget/text.dart';
export 'ui/border.dart';
export 'input.dart';

part 'ui/layout.dart';

class _UI {
  Widget operator >(Widget widget) => widget;
}

final ui = _UI();
