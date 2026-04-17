import 'package:e_commerce/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widget/onboarding_dot_navigator.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widget/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widget/onboarding_skip.dart';

import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:e_commerce/utils/constants/texts.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            /// Scroable Page
            PageView(
              controller: controller.pageController,
              onPageChanged:  controller.updatePageIndicator,
              children: [
                OnboardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UTexts.onboardingTitle1,
                  subTitle: UTexts.onboardingSubTitle1,
                ),
                OnboardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onboardingTitle2,
                  subTitle: UTexts.onboardingSubTitle2,
                ),
                OnboardingPage(
                  animation: UImages.onboarding3Animation,
                  title: UTexts.onboardingTitle3,
                  subTitle: UTexts.onboardingSubTitle3,
                ),
              ],
            ),

            /// Indicator
            OnBoardingDotNavigator(),

            /// Bottom Button
            OnBoardingNextButton(),

            /// Skip button
            OnboardingSkipButton(),
          ],
        ),
      ),
    );
  }
}
