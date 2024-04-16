import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final double height;
  final double width;
    final double border;
  final String imageUrl;

  const ImageWidget({
    super.key,
    this.height = 210,
    this.width = 210,
    this.border = 0,
    this.imageUrl = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
