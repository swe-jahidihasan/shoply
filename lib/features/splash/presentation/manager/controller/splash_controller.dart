import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/texts.dart';

class SplashController extends GetxController {
  final List<String> page = [
    JAppImages.onboarding0,
    JAppImages.onboarding1,
    JAppImages.onboarding2,
  ];

  /// ================== controller  ===========================================

  final pageController = PageController();

  /// ================== private observable variable ===========================
  var _isCurrentPage = 0.obs;

  /// ================== public getter variable =================================
  int get currentPage => _isCurrentPage.value;

  /// ================== method ================================================
  String get titleText => switch (_isCurrentPage.value) {
    1 => JText.onboardingTitle1,
    2 => JText.onboardingTitle2,
    _ => JText.onboardingTitle0,
  };

  String get subTitleText => switch (_isCurrentPage.value) {
    1 => JText.onboardingSubTitle1,
    2 => JText.onboardingSubTitle2,
    _ => JText.onboardingSubTitle0,
  };

  // page change method
  void onPageChanged(int index) {
    _isCurrentPage.value = index;
  }

  // next page method
  void nextPage() {
    if (_isCurrentPage.value == 2) {
      _isCurrentPage.value = 0;
      AppRouter.goNamed("signIn");
    } else {
      _isCurrentPage.value++;
      pageController.animateToPage(
        _isCurrentPage.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }


  // skip method
  void skip() {
    _isCurrentPage.value = 0;
    AppRouter.goNamed("signIn");
  }

  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(Duration(seconds: 2), () {
      AppRouter.goNamed("onboarding");
    });
    super.onInit();
  }

  /// ================== dispose controller =================================

  @override
  void onClose() {
    // TODO: implement onClose
    pageController.dispose();
    super.onClose();
  }
}
