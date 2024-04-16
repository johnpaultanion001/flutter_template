import 'package:flutter/material.dart';
import 'package:template/setup/environment/env.dart';

class ContainerWidget extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Decoration? decoration;

  const ContainerWidget({
    super.key,
    this.child,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration ?? BoxDecoration(color: ENV.secondaryBgColor),
      padding: padding ?? const EdgeInsets.all(50),
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      color: color,
      child: child,
    );
  }
}
