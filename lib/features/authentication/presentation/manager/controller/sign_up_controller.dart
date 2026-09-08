import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shoply/core/router/app_router.dart';

class SignUpController extends GetxController {
  // ==========================================================================
  /// all controller
  // ==========================================================================
  final firstNameCtr = TextEditingController();
  final lastNameCtr = TextEditingController();
  final emailCtr = TextEditingController();
  final phoneCtr = TextEditingController();
  final passwordCtr = TextEditingController();
  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();

  // ==========================================================================
  /// observable variable
  // ==========================================================================
  var _isRememberMe = false.obs;
  var _isLoading = false.obs;
  var _isFormValid = false.obs;

  /// getter method
  bool get rememberMe => _isRememberMe.value;

  bool get isLoading => _isLoading.value;
  bool get isFormValid => _isFormValid.value;

  // ==========================================================================
  /// method
  // ==========================================================================
  void toggleCheckBox(bool value) {
    _isRememberMe.value = !_isRememberMe.value;
  }

  void signUpFormValidation() {
    if (firstNameCtr.text.trim().isNotEmpty &&
        lastNameCtr.text.trim().isNotEmpty &&
        emailCtr.text.trim().isNotEmpty &&
        phoneCtr.text.trim().isNotEmpty &&
        passwordCtr.text.trim().isNotEmpty) {
      _isFormValid.value = true;
    }else{
      _isFormValid.value = false;
    }
  }

  Future<void> signUp() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (signUpKey.currentState!.validate()) {
      try {
        _isLoading.value = true;
        await Future.delayed(const Duration(seconds: 2));
        AppRouter.go("signIn");
      } catch (e) {
        Get.snackbar("SignUp field!", "$e", snackPosition: SnackPosition.TOP);
      } finally {
        _isLoading.value = false;
      }
    }
  }

  String? firstNameValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "First name is required";
    }
    return null;
  }

  String? lastNameValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Last name is required";
    }
    return null;
  }

  String? emailValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Email address is required";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value.trim())) {
      return "please enter your valid email";
    }
    return null;
  }

  String? phoneValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Phone number is required";
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  // ==========================================================================
  /// controller dispose method
  // ==========================================================================
  @override
  void dispose() {
    // TODO: implement dispose
    firstNameCtr.dispose();
    lastNameCtr.dispose();
    emailCtr.dispose();
    passwordCtr.dispose();
    phoneCtr.dispose();
    super.dispose();
  }
}
