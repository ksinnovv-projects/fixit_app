import 'package:fixit_app/core/services/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        // Navigate to the home screen after 3 seconds.
    Future.delayed(Duration(seconds: 3), () {
      context.go(RouteName.onboardingScreenOne);  // Go to HomeScreen
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/logo.png")),
    );
  }
}