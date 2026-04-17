
import 'package:e_commerce/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigator extends StatelessWidget {
  const OnBoardingDotNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
final controller = OnboardingController.instance;
    return Positioned(
      left: UDeviceHelper.getScreenWidth(context) / 3,
      right:  UDeviceHelper.getScreenWidth(context)/ 3,
      bottom:UDeviceHelper.getBottomNavigationBarHeight()*4,
      child: SmoothPageIndicator(    
        
       controller: controller.pageController,  // PageController    
       count:  3,    
       effect:  ExpandingDotsEffect(dotHeight: 6),  // your preferred effect    
       onDotClicked: controller.dotNavigationClick
    ));
  }
}



