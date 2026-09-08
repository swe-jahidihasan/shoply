import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {


  /// ====================== all controller ==================================
  final nameCtr = TextEditingController();
  final phoneCtr = TextEditingController();
  final streetCtr = TextEditingController();
  final postalCodeCtr = TextEditingController();
  final cityCtr = TextEditingController();
  final stateCtr = TextEditingController();
  final countryCtr = TextEditingController();

  /// ====================== observable variable ============================
  var isSelectedCard = 0.obs;


  /// =================== getter method ==================================
  int get  selectedCard => isSelectedCard.value;


  /// =====================  method =======================================
  void onSelectAddressCard(int index){
    isSelectedCard.value = index;
  }



  /// ==================== controller dispose method =======================
  @override
  void onClose() {
    // TODO: implement onClose
    nameCtr.dispose();
    phoneCtr.dispose();
    streetCtr.dispose();
    postalCodeCtr.dispose();
    cityCtr.dispose();
    stateCtr.dispose();
    countryCtr.dispose();
    super.onClose();
  }
}
