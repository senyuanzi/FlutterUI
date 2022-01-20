import 'package:flutter/material.dart';
import 'package:the_flutter_ui/extension/scope_ex.dart';
import 'package:the_flutter_ui/values/colors.dart';

class RRectButton extends StatelessWidget {
  const RRectButton(
    this.text, {
    Key? key,
    this.width = 64,
    this.height = 32,
    this.radius = 12,
    this.textColor,
    this.fontSize,
    this.backgroundColor = Colors.transparent,
    this.gradientColors = const [Color(0xFF9AEDE2), Color(0xFF89D9EA)],
    this.onPressed,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final Color? textColor;
  final double? fontSize;
  final Color? backgroundColor;
  final List<Color>? gradientColors;

  final double radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: gradientColors
              ?.let((it) => LinearGradient(colors: gradientColors!)),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: textColor
                ?.let((it) => TextStyle(color: textColor, fontSize: fontSize)),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius))),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
      ),
    );
  }
}

class RRectOutlinedButton extends StatelessWidget {
  const RRectOutlinedButton(
    this.text, {
    Key? key,
    this.width = 64,
    this.height = 32,
    this.radius = 12,
    this.textColor,
    this.fontSize,
    this.backgroundColor = Colors.transparent,
    this.gradientColors,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final Color? textColor;
  final double? fontSize;
  final Color? backgroundColor;
  final List<Color>? gradientColors;

  final double radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: gradientColors
              ?.let((it) => LinearGradient(colors: gradientColors!)),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: fontSize),
          ),
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            side: BorderSide(color: ColorsValue.blue, style: BorderStyle.solid),
            backgroundColor: backgroundColor,
          ),
        ),
      ),
    );
  }
}
