


import 'package:e_commerce/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      final controller = OnboardingController.instance;
    return Obx(

     () {
        return controller.currentIndex.value==2? SizedBox():  Positioned(
         right: 0,
         top: UDeviceHelper.getAppBarHeight(),
         child: TextButton(onPressed:controller.skip, child: Text("Skip")));
      }
    );
  }
}





