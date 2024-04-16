// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/screens/ready_made_widget/screen_container_widget.dart';

class MedicalCardScreen extends StatefulWidget {
  const MedicalCardScreen({super.key});

  @override
  State<MedicalCardScreen> createState() => _MedicalCardScreenState();
}

class _MedicalCardScreenState extends State<MedicalCardScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenContainerWidget(
      onLeadIconTap: () {
        context.go('/dashboard');
      },
      title: "Medical Card",
      isVisibleSubContainer: false,
      containerContent: Container(
        child: Text('test'),
      ),
    );
  }
}
