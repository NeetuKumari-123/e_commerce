



import 'package:e_commerce/features/authentication/screens/sign_up/verify_email.dart';
import 'package:e_commerce/utils/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child:
     Column(children: [
      
     /// FirstName & LastName
     Row(children: [
      
      /// First Name
    Expanded(
      child: TextFormField(
                decoration: InputDecoration(
                  hintText: UTexts.firstName,
                  labelText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
    ),
      SizedBox(width: USizes.spaceBtwInputFields),
      
      /// Last Name
             Expanded(
               child: TextFormField(
                decoration: InputDecoration(
                  hintText: UTexts.lastName,
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
                         ),
             ),
     ],),
      
      
      SizedBox(height: USizes.spaceBtwInputFields),
      
      
      
      ///Email
            TextFormField(
              decoration: InputDecoration(
                hintText: UTexts.email,
                labelText: UTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
      
            SizedBox(height: USizes.spaceBtwInputFields),
      
      
            ///Phone Number
            TextFormField(
              decoration: InputDecoration(
                hintText: UTexts.phoneNumber,
                labelText: UTexts.phoneNumber,
                prefixIcon: Icon(Iconsax.call),
               
              ),
            ),
      
            SizedBox(height: USizes.spaceBtwInputFields),
      
            ///Password
            TextFormField(
              decoration: InputDecoration(
                hintText: UTexts.password,
                labelText: UTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye),
              ),
            ),
      
            SizedBox(height: USizes.spaceBtwItems/2),
      ///CheckBox & Policies
      
      Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ///CheckBox
    Checkbox(value: true, onChanged: (value){}),
      
      ///Policies
    Text.rich(
            TextSpan(
              text: UTexts.iAgreeTo,
              style: Theme.of(context).textTheme.labelLarge,
              children: <TextSpan>[
                TextSpan(
                  text: UTexts.privacyPolicy,
                  style:  Theme.of(context).textTheme.labelLarge!.copyWith(color: UColors.primary, decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                ),
                TextSpan(text:UTexts.and,   style: Theme.of(context).textTheme.labelLarge,),
                TextSpan(
                  text: UTexts.termsOfUse,
                  style:  Theme.of(context).textTheme.labelLarge!.copyWith(color: UColors.primary, decoration: TextDecoration.underline,  fontWeight: FontWeight.bold),
                ),
               
              ],
            ),
            textAlign: TextAlign.center,
          ),
      ],)
      
      
      , SizedBox(height: USizes.spaceBtwItems),
      
      ///Create Account Button
      
      
            UElevatedButton(
              onPressed: () {
                Get.off(VerifyEmailScreen());
              },
              child: Text(UTexts.createAccount),
            ),
      
    ],));
  }
}