import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textColor;

  const ButtonWidget({
    super.key,
    this.text,
    this.onTap,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: textColor,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        textStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        shape: const StadiumBorder(),
        minimumSize: const Size.fromHeight(50),
      ),
      onPressed: onTap,
      child: Text(text!),
    );
  }
}
