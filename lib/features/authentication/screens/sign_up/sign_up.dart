


import 'package:e_commerce/features/authentication/screens/sign_up/sign_up_form.dart';
import 'package:e_commerce/utils/common/widgets/auth_common/auth_divider.dart';
import 'package:e_commerce/utils/common/widgets/auth_common/auth_footer.dart';
import 'package:e_commerce/utils/common/widgets/auth_common/auth_header.dart';
import 'package:e_commerce/utils/common/styles/pedding.dart';


import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(),

body: SingleChildScrollView(
  child: Padding(
    padding:UPadding.screenPadding,
    child: Column(children: [
    
      ///---------------[Header]--------------------------------
    
        
                  /// Title & SubTitle
                  AuthHeader(title: UTexts.signUpTitle,subTitle: UTexts.signUpSUbTitle),
      SizedBox(height: USizes.spaceBtwSections),
    
    ///----------------[Form]--------------------------------
    
   
    SignUpForm(),
  
  
  
  
    
    
    
       SizedBox(height: USizes.spaceBtwSections),
    
    
    ///----------------[Divider]-----------------------------
    
    AuthDivider(),
    
         SizedBox(height: USizes.spaceBtwSections),
    ///----------------[Footer]-----------------------------
    
    AuthFooter()
    
    
    
    ],),
  ),
),


    );
  }
}

