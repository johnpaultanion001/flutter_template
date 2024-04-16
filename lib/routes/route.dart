import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/screens/authetication/login_screen.dart';
import 'package:template/screens/dashboard/dashboard_setup.dart';
import 'package:template/screens/dashboard/home/medical_card.dart';
import 'package:template/screens/onboarding/onboarding_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingScreen();
      },
    ),
    GoRoute(
      path: "/login",
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: "/dashboard",
      builder: (BuildContext context, GoRouterState state) {
        return DashboardSetup();
      },
    ),
    GoRoute(
      path: "/medical",
      builder: (BuildContext context, GoRouterState state) {
        return MedicalCardScreen();
      },
    ),
  ],
);
