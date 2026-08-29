import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:shoply/core/constants/app_assets.dart';

class StoreController extends GetxController {
  final List<Map<String, dynamic>> popularCardItem = [
    {
      "productName": "iPhone 11 64GB",
      "image": JAppImages.phone,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Apple",
    },
    {
      "name": "Shoes of Nike",
      "image": JAppImages.nike,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Nike",
    },
    {
      "name": "IPhone14 pro",
      "image": JAppImages.shoes,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Bata",
    },
    {
      "name": "iPhone 11 64GB",
      "image": JAppImages.phone,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Apple",
    },
    {
      "name": "IPhone14 pro",
      "image": JAppImages.nike,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Nike",
    },
    {
      "name": "IPhone14 pro",
      "image": JAppImages.shoes,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Bata",
    },
  ];

  final scrollCtr = ScrollController();

  var _isScroll = false.obs;

  bool get isScroll => _isScroll.value;

  @override
  void onInit() {
    // TODO: implement onInit
    scrollCtr.addListener(() {
      if (scrollCtr.position.userScrollDirection == ScrollDirection.reverse) {
        if (!_isScroll.value) {
          _isScroll.value = true;
        }
      } else if (scrollCtr.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScroll.value) {
          _isScroll.value = false;
        }
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    scrollCtr.dispose();
    super.onClose();
  }
}
