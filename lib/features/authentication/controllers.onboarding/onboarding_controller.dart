import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///varibales
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current index when page scroll
  void updatePageIndicator(index) => currentPageIndex = index;

  /// jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// update current index and jump to the last page
  void skipPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    }
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
