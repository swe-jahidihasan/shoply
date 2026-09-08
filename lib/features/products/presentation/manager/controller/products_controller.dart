import 'package:get/get.dart';

class ProductsController extends GetxController {
  /// ================== observable variable ============================
  var _isCheckout = false.obs;
  var _isSelectVariation = 0.obs;

  /// =====================  getter method ==================================
  bool get isCheckout => _isCheckout.value;

  int get isSelectedVariation => _isSelectVariation.value;

  /// =========================== method ===================================

  // check out
  void toggleCheckout() {
    _isCheckout.value = !_isCheckout.value;
  }

  // select variation
  void toggleStorageVariation(int index) {
    _isSelectVariation.value = index;
  }
}
