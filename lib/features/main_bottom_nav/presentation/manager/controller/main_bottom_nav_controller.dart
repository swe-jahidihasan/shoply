import 'package:get/get.dart';

class MainBottomNavController extends GetxController {


  var _isSelectedIndex = 0.obs;


  int get selectedIndex => _isSelectedIndex.value;


  void onTapPage(int index){
    _isSelectedIndex.value = index;
    update();
  }
  // TODO: Add your observable variables here
  
  // TODO: Add your methods here
}
