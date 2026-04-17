


import 'package:e_commerce/utils/common/widgets/screen/success_screen.dart';
import 'package:e_commerce/utils/constants/images.dart';

import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  actions: [
    IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: Icon(Iconsax.close_circle))
  ],
),

body: SucessScreen(image: UImages.mailIllustrationImage,
title:  UTexts.passwordResetTile,
subTitle:  UTexts.passwordResetSubTile ,
mail: "neetukumari9170@gmail.com",
 buttonName:UTexts.done ,onTap: (){},
 onTapResendEmail: (){},
 ),
      
    );
  }
}


