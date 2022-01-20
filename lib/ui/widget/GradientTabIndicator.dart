import 'package:flutter/material.dart';
import 'package:the_flutter_ui/extension/scope_ex.dart';

class GradientTabIndicator extends Decoration {
  const GradientTabIndicator({
    this.borderSide = const BorderSide(width: 2.0, color: Colors.white),
    this.insets = EdgeInsets.zero,
    this.gradientColor,
  })  : assert(borderSide != null),
        assert(insets != null);

  final BorderSide borderSide;

  final EdgeInsetsGeometry insets;
  final List<Color>? gradientColor;

  @override
  Decoration? lerpFrom(Decoration? a, double t) {
    if (a is UnderlineTabIndicator) {
      return GradientTabIndicator(
        borderSide: BorderSide.lerp(a.borderSide, borderSide, t),
        insets: EdgeInsetsGeometry.lerp(a.insets, insets, t)!,
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  Decoration? lerpTo(Decoration? b, double t) {
    if (b is UnderlineTabIndicator) {
      return UnderlineTabIndicator(
        borderSide: BorderSide.lerp(borderSide, b.borderSide, t),
        insets: EdgeInsetsGeometry.lerp(insets, b.insets, t)!,
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _UnderlinePainter(this, onChanged);
  }

  Rect _indicatorRectFor(Rect rect, TextDirection textDirection) {
    assert(rect != null);
    assert(textDirection != null);
    final Rect indicator = insets.resolve(textDirection).deflateRect(rect);
    return Rect.fromLTWH(
      indicator.left,
      indicator.bottom - borderSide.width,
      indicator.width,
      borderSide.width,
    );
  }

  @override
  Path getClipPath(Rect rect, TextDirection textDirection) {
    return Path()..addRect(_indicatorRectFor(rect, textDirection));
  }
}

class _UnderlinePainter extends BoxPainter {
  _UnderlinePainter(this.decoration, VoidCallback? onChanged)
      : assert(decoration != null),
        super(onChanged);

  final GradientTabIndicator decoration;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size!;
    final TextDirection textDirection = configuration.textDirection!;
    final Rect indicator = decoration
        ._indicatorRectFor(rect, textDirection)
        .deflate(decoration.borderSide.width / 2.0);
    final Paint paint = decoration.borderSide.toPaint()
      ..strokeCap = StrokeCap.square
      ..shader = decoration.gradientColor?.let((it) =>
          LinearGradient(colors: decoration.gradientColor!)
              .createShader(indicator));

    canvas.drawLine(indicator.bottomLeft, indicator.bottomRight, paint);
  }
}
