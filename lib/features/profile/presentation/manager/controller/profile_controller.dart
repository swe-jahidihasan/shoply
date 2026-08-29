import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {

  final nameCtr = TextEditingController();
  final phoneCtr = TextEditingController();
  final streetCtr = TextEditingController();
  final postalCodeCtr = TextEditingController();
  final cityCtr = TextEditingController();
  final stateCtr = TextEditingController();
  final countryCtr = TextEditingController();


  // TODO: Add your observable variables here

  var isSelectedCard = 0.obs;


  int get  selectedCard => isSelectedCard.value;


  void onSelectAddressCard(int index){
    isSelectedCard.value = index;
  }


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
