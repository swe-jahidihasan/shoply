import 'package:get/get.dart';

class ProductsController extends GetxController {

  var _isCheckout = false.obs;
  var _isSelectVariation = 0.obs;

  bool get isCheckout => _isCheckout.value;

  int get isSelectedVariation => _isSelectVariation.value;


  void toggleCheckout(){
    _isCheckout.value = !_isCheckout.value;
  }

  void toggleStorageVariation(int index){
    _isSelectVariation.value = index;
  }
}
