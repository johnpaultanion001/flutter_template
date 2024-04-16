import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class CustomClipPathWidget extends StatelessWidget {
  final Widget? child;

  const CustomClipPathWidget({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(reverse: true, flip: true),
      child: child,);
  }
}

class HomeClipPathWidget extends StatelessWidget {
  final Widget? child;

  const HomeClipPathWidget({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: child,);
  }
}
