

import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/common/widgets/screen/success_screen.dart';

import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  
),

body: SucessScreen(
  isResendEmail: false,
  image: UImages.accountCreatedImage,
title:  UTexts.accountSucessfullyTitle,
subTitle:  UTexts.accountSucessfullySubTitle ,
mail: "neetukumari9170@gmail.com",
 buttonName:UTexts.continueText ,onTap: (){

  Get.offAll(LoginScreen());
 },

 ),
      
    );
  }
}