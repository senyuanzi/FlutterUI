import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension TextFieldX on TextField {
  ///字体
  ///配置中先注册family
  ///
  ///config TextField fontFamily
  TextField fontFamily(String family) {
    var newStyle = TextStyle(fontFamily: family);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字体粗细、正斜等
  TextField fontWeight(FontWeight? weight) {
    var newStyle = TextStyle(fontWeight: weight);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///粗体
  ///
  TextField bold() {
    var newStyle = const TextStyle(fontWeight: FontWeight.bold);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///斜体
  ///
  TextField italic() {
    var newStyle = const TextStyle(fontStyle: FontStyle.italic);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///删除线
  ///
  TextField strikethrough({bool active = true, Color? color}) {
    var newStyle = TextStyle(
        decoration: active == true ? TextDecoration.lineThrough : TextDecoration.none,
        decorationColor: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///下划线
  ///
  TextField underLine({bool active = true, Color? color}) {
    var newStyle = TextStyle(
        decoration: active == true ? TextDecoration.underline : TextDecoration.none,
        decorationColor: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///上划线
  ///
  TextField overLine({bool active = true, Color? color}) {
    var newStyle = TextStyle(
        decoration: active == true ? TextDecoration.overline : TextDecoration.none,
        decorationColor: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字母间距，可为负数
  ///
  TextField letterSpacing(double spacing) {
    var newStyle = TextStyle(letterSpacing: spacing);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///单词间距，可为负数
  ///
  TextField wordSpacing(double spacing) {
    var newStyle = TextStyle(wordSpacing: spacing);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///行间距，倍数
  ///
  TextField lineSpacing(double spacing) {
    var newStyle = TextStyle(height: spacing);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  TextField colorInt(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  TextField color(Color color) {
    var newStyle = TextStyle(color: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  TextField fontSize(double size) {
    var newStyle = TextStyle(fontSize: size);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  TextField lineLimit(int? num) {
    return copyWith(maxLines: num);
  }

  ///无行数限制
  TextField noLineLimit() {
    return lineLimit(null);
  }

  TextField singleLine() {
    return lineLimit(1);
  }

  TextField textAlignment(TextAlign align) {
    return copyWith(textAlign: align);
  }

  ///set hintText
  TextField hint(String hint) {
    return copyWith(decoration: decoration?.copyWith(hintText: hint));
  }

  TextField hintStyle(TextStyle hintStyle) {
    return copyWith(decoration: decoration?.copyWith(hintStyle: hintStyle));
  }

  TextField hintWeight(FontWeight weight) {
    var newStyle = TextStyle(fontWeight: weight);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  TextField hintColor(Color color) {
    var newStyle = TextStyle(color: color);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  TextField hintSize(double size) {
    var newStyle = TextStyle(fontSize: size);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  TextField hintFamily(String family) {
    var newStyle = TextStyle(fontFamily: family);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  TextField border(InputBorder border) {
    return copyWith(decoration: decoration?.copyWith(border: border));
  }

  ///无边框
  TextField noBorder() {
    return border(InputBorder.none);
  }

  TextField copyWith({
    Key? key,
    TextEditingController? controller,
    FocusNode? focusNode,
    InputDecoration? decoration = const InputDecoration(),
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    bool? autofocus,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    int? maxLines = 1,
    int? minLines,
    bool? expands,
    int? maxLength,
    bool? maxLengthEnforced,
    MaxLengthEnforcement? maxLengthEnforcement,
    void Function(String)? onChanged,
    void Function()? onEditingComplete,
    void Function(String)? onSubmitted,
    void Function(String, Map)? onAppPrivateCommand,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    BoxHeightStyle? selectionHeightStyle,
    BoxWidthStyle? selectionWidthStyle,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    DragStartBehavior? dragStartBehavior,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    void Function()? onTap,
    MouseCursor? mouseCursor,
    Widget? Function(BuildContext,
            {required int currentLength, required bool isFocused, required int? maxLength})?
        buildCounter,
    ScrollController? scrollController,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    Clip? clipBehavior,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
  }) {
    return TextField(
      key: key ?? this.key,
      controller: controller ?? this.controller,
      focusNode: focusNode ?? this.focusNode,
      decoration: decoration ?? this.decoration,
      keyboardType: keyboardType ?? this.keyboardType,
      textInputAction: textInputAction ?? this.textInputAction,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      style: style ?? this.style,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      textDirection: textDirection ?? this.textDirection,
      readOnly: readOnly ?? this.readOnly,
      toolbarOptions: toolbarOptions ?? this.toolbarOptions,
      showCursor: showCursor ?? this.showCursor,
      autofocus: autofocus ?? this.autofocus,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      obscureText: obscureText ?? this.obscureText,
      autocorrect: autocorrect ?? this.autocorrect,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      maxLines: maxLines ?? this.maxLines,
      minLines: minLines ?? this.minLines,
      expands: expands ?? this.expands,
      maxLength: maxLength ?? this.maxLength,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
      onChanged: onChanged ?? this.onChanged,
      onEditingComplete: onEditingComplete ?? this.onEditingComplete,
      onSubmitted: onSubmitted ?? this.onSubmitted,
      onAppPrivateCommand: onAppPrivateCommand ?? this.onAppPrivateCommand,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      enabled: enabled ?? this.enabled,
      cursorWidth: cursorWidth ?? this.cursorWidth,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      cursorRadius: cursorRadius ?? this.cursorRadius,
      cursorColor: cursorColor ?? this.cursorColor,
      selectionHeightStyle: selectionHeightStyle ?? this.selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle ?? this.selectionWidthStyle,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      enableInteractiveSelection: enableInteractiveSelection ?? this.enableInteractiveSelection,
      selectionControls: selectionControls ?? this.selectionControls,
      onTap: onTap ?? this.onTap,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      buildCounter: buildCounter ?? this.buildCounter,
      scrollController: scrollController ?? this.scrollController,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      autofillHints: autofillHints ?? this.autofillHints,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      restorationId: restorationId ?? this.restorationId,
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning ?? this.enableIMEPersonalizedLearning,
    );
  }
}
