import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{
  final emailCtr = TextEditingController();
  final passwordCtr = TextEditingController();

  var _isRememberMe = false.obs;

  bool get rememberMe => _isRememberMe.value;

  void toggleCheckBox(bool value){
    _isRememberMe.value = !_isRememberMe.value;
  }
}