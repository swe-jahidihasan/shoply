import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  final firstNameCtr = TextEditingController();
  final lastNameCtr = TextEditingController();
  final emailCtr = TextEditingController();
  final phoneCtr = TextEditingController();
  final passwordCtr = TextEditingController();

  var _isRememberMe = false.obs;

  bool get rememberMe => _isRememberMe.value;

  void toggleCheckBox(bool value){
    _isRememberMe.value = !_isRememberMe.value;
  }
}