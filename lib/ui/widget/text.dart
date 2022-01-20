import 'package:flutter/material.dart';

extension TextX on Text {
  Text colorInt(int color) {
    var newStyle = TextStyle(color: Color(color));
    return Text(
      data ?? "",
      key: key,
      style: style?.merge(newStyle) ?? newStyle,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }

  Text color(Color color) {
    var newStyle = TextStyle(color: color);
    return Text(
      data ?? "",
      key: key,
      style: style?.merge(newStyle) ?? newStyle,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }

  Text fontSize(double size) {
    var newStyle = TextStyle(fontSize: size);
    return Text(
      data ?? "",
      key: key,
      style: style?.merge(newStyle) ?? newStyle,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
