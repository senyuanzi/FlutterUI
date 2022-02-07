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

  ///字体粗细、正斜等
  Text fontWeight(FontWeight? weight) {
    var newStyle = TextStyle(fontWeight: weight);
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
  Text strikethrough({bool active = true, Color? color}) {
    var newStyle = TextStyle(
        decoration: active == true ? TextDecoration.lineThrough : TextDecoration.none,
        decorationColor: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///下划线
  ///
  Text underLine({bool active = true, Color? color}) {
    var newStyle = TextStyle(
        decoration: active == true ? TextDecoration.underline : TextDecoration.none,
        decorationColor: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///上划线
  ///
  Text overLine({bool active = true, Color? color}) {
    var newStyle = TextStyle(
        decoration: active == true ? TextDecoration.overline : TextDecoration.none,
        decorationColor: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字母间距，可为负数
  ///
  Text letterSpacing(double spacing) {
    var newStyle = TextStyle(letterSpacing: spacing);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///单词间距，可为负数
  ///
  Text wordSpacing(double spacing) {
    var newStyle = TextStyle(wordSpacing: spacing);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///行间距，倍数
  ///
  Text lineSpacing(double spacing) {
    var newStyle = TextStyle(height: spacing);
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

  Text lineLimit(int num, {TextOverflow? overflow = TextOverflow.ellipsis}) {
    return copyWith(maxLines: num, overflow: overflow);
  }

  Text singleLine({TextOverflow? overflow = TextOverflow.ellipsis}) {
    return lineLimit(1);
  }

  Text textAlignment(TextAlign align) {
    return copyWith(textAlign: align);
  }

  ///todo 手机号中间四位省略为*号，或类似场景。正则？
  ///truncationMode leading tail middle
  // String phoneNumber = '13888888888';
  // String phoneNumberStr = phoneNumber.replaceFirst(RegExp(r'\d{4}'), '****', 3);

  ///todo 艺术字效果 边框、渐变……
  ///foreground paint

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
