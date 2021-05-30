import 'package:flutter/material.dart';

/// Label
/// It's a customized [Text] Widget
class Label extends Text {

  final EdgeInsets padding;

  /// Constructor
  Label(String text, {
    Key? key,
    int? maxLines,
    Color color = Colors.black45,
    double? height,
    TextAlign textAlign = TextAlign.start,
    double fontSize = 20,
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.normal,
    String fontFamily = "Inter",
    this.padding = EdgeInsets.zero,
  }): super(text, 
    key: key,
    maxLines: maxLines,
    textAlign: textAlign,
    style: TextStyle(
      decoration: TextDecoration.none,
      color: color,
      height: height,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      fontFamily: fontFamily
    ),
  );

  /// Constructor
  Label.rich(LabelSpan textSpan, { 
    Key? key,
    int? maxLines,
    Color color = Colors.black45,
    double height = 1,
    TextAlign textAlign = TextAlign.start,
    double fontSize = 20,
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.normal,
    String fontFamily = "Inter",
    this.padding = EdgeInsets.zero,
  }): super.rich(textSpan, 
    key: key,
    maxLines: maxLines,
    textAlign: textAlign,
    style: TextStyle(
      decoration: TextDecoration.none,
      color: color,
      height: height,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: super.build(context),
    );
  }
}

/// Label Span
/// It's a customized [TextSpan] Widget
class LabelSpan extends TextSpan {

  /// Contructor
  LabelSpan(String text, {
    Key? key,
    List<LabelSpan>? children,
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    String? fontFamily,
  }): super(
    text: text,
    children: children,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    ),
  );

}