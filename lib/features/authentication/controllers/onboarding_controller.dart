import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

/// Controls onboarding page index, dot navigation, skip, and next actions.
class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///varibales
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current index when page scroll
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  /// jump to the specific dot selected page.
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.off(() => const LoginScreen());
    } else {
      pageController.jumpToPage(currentPageIndex.value + 1);
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
