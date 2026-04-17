
import 'package:e_commerce/features/authentication/screens/forgot/forgot.dart';
import 'package:e_commerce/features/authentication/screens/sign_up/sign_up.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/utils/common/widgets/button/oulined_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: InputDecoration(
              hintText: UTexts.email,
              labelText: UTexts.email,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
    
          SizedBox(height: USizes.spaceBtwInputFields),
    
          ///Password
          TextFormField(
            decoration: InputDecoration(
              hintText: UTexts.password,
              labelText: UTexts.password,
              prefixIcon: Icon(Iconsax.direct_right),
              suffixIcon: Icon(Iconsax.eye),
            ),
          ),
    
          SizedBox(height: USizes.spaceBtwItems / 2),
    
          /// Remember me & forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    UTexts.rememberMe,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
    
              ///forget Password
              TextButton(
                onPressed: () {    Get.off(ForgotScreen());},
                child: Text(UTexts.forgotPassword),
              ),
            ],
          ),
    
          SizedBox(height: USizes.spaceBtwItems),
    
          ///  Sign In Button
          UElevatedButton(
            onPressed: () {
                            Get.offAll(NavigationMenu());
            },
            child: Text(UTexts.signIn),
          ),
          SizedBox(height: USizes.spaceBtwItems),
    
          ///  Create Account Button
          UOutlinedButton(
            onPressed: () {
              Get.to(SignUpScreen());
            },
            child: Text(UTexts.createAccount),
          ),
        ],
      ),
    );
  }
}

