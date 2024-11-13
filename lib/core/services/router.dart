import 'package:fixit_app/core/services/route_names.dart';
import 'screens_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
class AppRouter{
   AppRouter._();
  // Static instance of AppRouter
  static final AppRouter _instance = AppRouter._();

  // Static method to access the router
  static GoRouter get router => _instance._router;

  final _router = GoRouter(
      initialLocation: RouteName.initialRoute,
      navigatorKey: _rootNavigatorKey,
      routes: [
         GoRoute(
          name: RouteName.initialRoute,
          path: RouteName.initialRoute,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          name: RouteName.onboardingScreenOne,
          path: RouteName.onboardingScreenOne,
          builder: (context, state) => const OnBoardingScreenOne(),
        ),
        GoRoute(
          name: RouteName.onBoardingScreenTwo,
          path: RouteName.onBoardingScreenTwo,
          builder: (context, state) => const OnBoardingScreenTwo(),
        ),
        GoRoute(
          name: RouteName.onBoardingScreenThree,
          path: RouteName.onBoardingScreenThree,
          builder: (context, state) => const OnBoardingScreenThree(),
        ),
        GoRoute(
          name: RouteName.loginScreen,
          path: RouteName.loginScreen,
          builder: (context, state) => const LoginScreen()
        )


      ]);
}