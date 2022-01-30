library ui;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:the_flutter_ui/ui/action.dart';

export 'package:the_flutter_ui/flutter_ui.dart';

export 'extension/scope_ex.dart';
export 'ui/action.dart';
export 'ui/color.dart';
export 'ui/rounded_rectangle.dart';
export 'ui/widget/gradient_tab_indicator.dart';
export 'ui/widget/button.dart';
export 'ui/widget/complex/blur_panel.dart';
export 'ui/widget/complex/swiper.dart';
export 'ui/widget/image.dart';
export 'ui/widget/text.dart';

part 'ui/layout.dart';



class _UI {
  Widget operator >(Widget widget) => widget;
}

final ui = _UI();
