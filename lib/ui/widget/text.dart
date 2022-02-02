import 'package:flutter/material.dart';

extension TextX on Text {
  ///字体
  ///配置中先注册family
  ///
  ///config text fontFamily
  Text fontFamily(String family) {
    var newStyle = TextStyle(fontFamily: family);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///粗体
  ///
  Text bold() {
    var newStyle = const TextStyle(fontWeight: FontWeight.bold);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///斜体
  ///
  Text italic() {
    var newStyle = const TextStyle(fontStyle: FontStyle.italic);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///删除线
  ///
  Text lineThrough() {
    var newStyle = const TextStyle(decoration: TextDecoration.lineThrough);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///下划线
  ///
  Text underLine() {
    var newStyle = const TextStyle(decoration: TextDecoration.underline);
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

  Text fontWeight(FontWeight? weight) {
    var newStyle = TextStyle(fontWeight: weight);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  Text maxLines(int num, {TextOverflow? overflow = TextOverflow.ellipsis}) {
    return copyWith(maxLines: num, overflow: overflow);
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
