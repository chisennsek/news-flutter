import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    super.key,
    this.style,
    this.padding,
    this.margin,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.fontSize,
    this.color,
    this.fontWeight,
  });

  final String? text;
  final TextStyle? style;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: Text(
        text ?? '',
        style: style ??
            TextStyle(
              fontSize: fontSize,
              color: color,
              fontWeight: fontWeight,
              fontFamily: 'Nunito',
            ),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      ),
    );
  }
}
