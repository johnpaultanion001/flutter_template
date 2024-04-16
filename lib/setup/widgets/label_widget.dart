import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final double fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const LabelWidget.xs({
    super.key,
    this.text,
    this.textColor = Colors.black,
    this.fontSize = 12,
    this.textAlign,
    this.fontWeight,
  });

  const LabelWidget.sm({
    super.key,
    this.text,
    this.textColor = Colors.black,
    this.fontSize = 16,
    this.textAlign,
    this.fontWeight,
  });

  const LabelWidget.md({
    super.key,
    this.text,
    this.textColor = Colors.black,
    this.fontSize = 20,
    this.textAlign,
    this.fontWeight,
  });

  const LabelWidget.lg({
    super.key,
    this.text,
    this.textColor = Colors.black,
    this.fontSize = 30,
    this.textAlign,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight,
      ),
      child: Text(
        text!,
        softWrap: true,
        textAlign: textAlign,
      ),
    );
  }
}
