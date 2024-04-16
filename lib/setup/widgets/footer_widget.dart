import 'package:flutter/material.dart';
import 'package:template/setup/environment/env.dart';
import 'package:template/setup/widgets/image_widget.dart';
import 'package:template/setup/widgets/label_widget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageWidget(
          imageUrl: ENV.footerLogo,
          height: 60,
        ),
        LabelWidget.xs(text: ENV.version),
      ],
    );
  }
}
