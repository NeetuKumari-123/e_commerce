

import 'package:e_commerce/features/authentication/screens/forgot/forgot_password_form.dart';
import 'package:e_commerce/utils/common/widgets/auth_common/auth_header.dart';
import 'package:e_commerce/utils/common/styles/pedding.dart';

import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';


class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),

body: Padding(
  padding: UPadding.screenPadding,
  child: Column(children: [
  ///---------------[Header]-------------------
     AuthHeader(title: UTexts.forgotTitle,subTitle: UTexts.forgotSubTitle,),
                   SizedBox(height: USizes.spaceBtwSections),

  ///---------------[Form]---------------------
  
  ForgotPasswordForm()
  ],),
),

    );
  }
}


