
import 'package:e_commerce/features/authentication/screens/forgot/reset_password.dart';
import 'package:e_commerce/utils/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: [
    
    
    ///Email
            TextFormField(
              decoration: InputDecoration(
                hintText: UTexts.email,
                labelText: UTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
    
              ///submit button
          SizedBox(height: USizes.spaceBtwItems),
              UElevatedButton(
              onPressed: () {
                 Get.off(ResetPasswordScreen());
              },
              child: Text(UTexts.submit),
            ),
    
    ],));
  }
}