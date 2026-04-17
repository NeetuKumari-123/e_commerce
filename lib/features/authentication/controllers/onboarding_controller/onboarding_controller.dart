


import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class OnboardingController  extends GetxController{

  static OnboardingController get instance => Get.find();

  /// Variables

 final pageController = PageController();
 RxInt currentIndex =0.obs;

 /// update current index when page scroll

void updatePageIndicator( index){
currentIndex.value=index;
}

/// Jump to specific dot selected page
void dotNavigationClick(index){
currentIndex.value=index;
pageController.jumpToPage(index);
}

/// Update current index and jump to the next page
void nextPage(){
  if(currentIndex.value==2){
    Get.offAll(LoginScreen());
  }

  currentIndex.value=currentIndex.value +1;
  pageController.jumpToPage(currentIndex.value);
}

/// Update current index and jump to the last page
void skip(){

  currentIndex.value=2;
  pageController.jumpToPage(currentIndex.value);
}
}