import 'package:flutter/material.dart';

extension TextX on Text {





  Text demo(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字体 todo Font
  ///.title
  ///
  ///.caption
  ///
  ///    .font(.system(size: 12, weight: .light, design: .serif))
  ///config text font
  Text font(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///粗体
  ///
  Text bold(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///斜体
  ///
  Text italic(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }


  Text colorInt(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  Text color(Color color) {
    var newStyle = TextStyle(color: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  Text fontSize(double size) {
    var newStyle = TextStyle(fontSize: size);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  Text copyWith({
    String? data,
    Key? key,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) {
    return Text(data ?? this.data!,
        key: key ?? this.key,
        style: style ?? this.style,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior);
  }
}
