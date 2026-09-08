import 'package:get/get.dart';

class MainBottomNavController extends GetxController {


  /// ======================== observable variable  ===================
  var _isSelectedIndex = 0.obs;


  /// ====================  getter method  ================================
  int get selectedIndex => _isSelectedIndex.value;


  /// ===================  method  ======================================
  void onTapPage(int index){
    _isSelectedIndex.value = index;
    update();
  }
}
