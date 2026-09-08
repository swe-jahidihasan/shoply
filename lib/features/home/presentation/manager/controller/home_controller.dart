import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shoply/core/constants/app_assets.dart';

class HomeController extends GetxController {
  // TODO: controller
  late PageController pageCtr;

  /// observable variable
  var _isCurrentPage = 0.obs;
  Timer? _timer;

  /// todo : getter method
  int get currentPage => _isCurrentPage.value;

  /// todo : on init method
  @override
  void onInit() {
    super.onInit();
    pageCtr = PageController(initialPage: 0);
    startAutoScroll(3);
  }

  /// time use for auto scroll

  void updatePageIndicator(int index) {
    _isCurrentPage.value = index;
  }

  void startAutoScroll(int totalBanner) {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_isCurrentPage.value < totalBanner - 1) {
        _isCurrentPage.value++;
      } else {
        _isCurrentPage.value = 0;
      }
      if (pageCtr.hasClients) {
        pageCtr.animateToPage(
          _isCurrentPage.value,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  /// todo : on close method
  @override
  void onClose() {
    _timer?.cancel();
    pageCtr.dispose();
    super.onClose();
  }

  /// dummy data
  final List<Map<String, dynamic>> popularCategories = [
    {"image": JAppImages.running, "title": "Sports"},
    {"image": JAppImages.sofa, "title": "Furniture"},
    {"image": JAppImages.cpu, "title": "Electronics"},
    {"image": JAppImages.clothes, "title": "Clothes"},
    {"image": JAppImages.running, "title": "Sports"},
    {"image": JAppImages.sofa, "title": "Furniture"},
    {"image": JAppImages.cpu, "title": "Electronics"},
  ];

  final List<Map<String, dynamic>> popularCardItem = [
    {
      "name": "Sonny Tv",
      "image": JAppImages.tv,
      "discount": 49,
      "priceMin": 390,
      "priceMax": 599,
      "brand": "Sonny",
    },
    {
      "name": "Mac mini",
      "image": JAppImages.mac,
      "discount": 49,
      "priceMin": 455,
      "priceMax": 599,
      "brand": "Apple",
    },
    {
      "name": "Hp G952",
      "image": JAppImages.laptop,
      "discount": 49,
      "priceMin": 289,
      "priceMax": 699,
      "brand": "Hp",
    },
    {
      "name": "History Book",
      "image": JAppImages.book,
      "discount": 49,
      "priceMin": 109,
      "priceMax": 259,
      "brand": "Hok",
    },
    {
      "name": "Nike Shoes",
      "image": JAppImages.nike,
      "discount": 49,
      "priceMin": 309,
      "priceMax": 259,
      "brand": "Nike",
    },
    {
      "name": "IPhone14 pro",
      "image": JAppImages.phone,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Apple",
    },
    {
      "name": "Nike shoes",
      "image": JAppImages.shoes,
      "discount": 49,
      "priceMin": 399,
      "priceMax": 599,
      "brand": "Bata",
    },
  ];

  final List<dynamic> banner = [
    JAppImages.banner1,
    JAppImages.banner2,
    JAppImages.banner,
  ];
}
