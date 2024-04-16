import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/providers/onboarding/onboarding_provider.dart';
import 'package:template/routes/route.dart';
import 'package:template/setup/environment/env.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => OnboardingProvider()),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ENV.secondaryBgColor),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
