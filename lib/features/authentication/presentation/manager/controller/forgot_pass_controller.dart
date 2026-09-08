import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPassController extends GetxController{

  /// ==========================  controller  =============================
  final emailCtr = TextEditingController();


  /// controller dispose method
  @override
  void dispose() {
    // TODO: implement dispose
    emailCtr.dispose();
    super.dispose();
  }
}