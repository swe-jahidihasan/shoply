import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/router/app_router.dart';

class SignInController extends GetxController {
  // form key
  final formKey = GlobalKey<FormState>();

  // ===========================================================================
  /// Text Controllers
  // ===========================================================================

  final emailCtr = TextEditingController();
  final passwordCtr = TextEditingController();

  // ===========================================================================
  /// Reactive State Variables
  // ===========================================================================

  var _isRememberMe = false.obs;
  var _isPasswordVisible = false.obs;
  var _isLoading = false.obs;
  var _isFormValid = false.obs;

  bool get rememberMe => _isRememberMe.value;

  bool get isPasswordVisible => _isPasswordVisible.value;

  bool get isLoading => _isLoading.value;

  bool get isFormValid => _isFormValid.value;

  // ===========================================================================
  /// UI Action / State Handlers
  // ===========================================================================

  void toggleCheckBox(bool value) {
    _isRememberMe.value = !_isRememberMe.value;
  }

  void togglePasswordVisibility() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }


  void signInFormValidation() {
    if (emailCtr.text.trim().isNotEmpty && passwordCtr.text.trim().isNotEmpty && _isRememberMe.value == false) {
      _isFormValid.value = true;
    } else {
      _isFormValid.value = false;
    }
  }

  Future<void> signIn() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (formKey.currentState!.validate()) {
      try {
        _isLoading.value = true;
        await Future.delayed(const Duration(seconds: 2));
        AppRouter.pushNamed("main-bottom-nav");
      } catch (e) {
        Get.snackbar(
          "Sign In Failed",
          "$e",
          snackPosition: SnackPosition.TOP,
          backgroundColor: JColors.primary,
        );
      }
      finally {
        _isLoading.value = false;
      }
    }
  }

  // ===========================================================================

  // email validation
  String?  emailValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Email address is required";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value.trim())) {
      return "please enter your valid email";
    }
    return null;
  }

  // password validation
  String? passwordValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailCtr.dispose();
    passwordCtr.dispose();
    super.onClose();
  }
}