



import 'package:e_commerce/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce/utils/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      left: 0,
            right:0,
      bottom: UDeviceHelper.getBottomNavigationBarHeight() *2,
      child: UElevatedButton(onPressed: controller.nextPage, child: Obx(
 () {
          return Text( controller.currentIndex.value==2? "Get Started":'Next');
        }
      ),));
  }
}


