

import 'package:e_commerce/features/authentication/screens/sign_up/account_created.dart';

import 'package:e_commerce/utils/common/widgets/screen/success_screen.dart';

import 'package:e_commerce/utils/constants/images.dart';

import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:iconsax/iconsax.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  actions: [
    IconButton(onPressed: (){}, icon: Icon(Iconsax.close_circle))
  ],
),

body: SucessScreen(image: UImages.mailIllustrationImage,
title:  UTexts.verifyEmailTitle,
subTitle:  UTexts.verifyEmailSubTitle ,
mail: "neetukumari9170@gmail.com",
 buttonName:UTexts.continueText ,onTap: (){

  Get.off(AccountCreatedScreen());
 },
 onTapResendEmail: (){},
 ),
      
    );
  }
}


