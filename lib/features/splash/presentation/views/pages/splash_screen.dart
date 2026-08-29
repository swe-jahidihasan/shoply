import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/features/splash/presentation/manager/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the splash controller
    Get.put(SplashController());

    return Scaffold(
      body: Center(child: Image.asset(JAppImages.splash, fit: BoxFit.cover)),
    );
  }
}
