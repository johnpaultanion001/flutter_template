// ignore_for_file: file_names, prefer_final_fields
import 'package:flutter/cupertino.dart';
import 'package:template/models/onboarding/onboarding_model.dart';
import 'package:template/setup/environment/env.dart';

class OnboardingProvider extends ChangeNotifier {
  List<OnboardingModel> _sliders = [
    OnboardingModel(
      image: ENV.imagePage1,
      title: ENV.titlePage1,
      description: ENV.descPage1,
      buttonName: ENV.buttonPage1,
    ),
    OnboardingModel(
      image: ENV.imagePage2,
      title: ENV.titlePage2,
      description: ENV.descPage2,
      buttonName: ENV.buttonPage2,
    ),
    OnboardingModel(
      image: ENV.imagePage3,
      title: ENV.titlePage3,
      description: ENV.descPage3,
      buttonName: ENV.buttonPage3,
    ),
  ];

  List<OnboardingModel> get slides => _sliders.toList();
}
