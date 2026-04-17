


import 'package:e_commerce/utils/common/widgets/button/social_button.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///Google
        SocialButton(onTap: () {}, logo: UImages.googleLogo),
    
        SizedBox(width: USizes.spaceBtwItems),
    
        ///Facebook
        SocialButton(onTap: () {}, logo: UImages.facebookLogo),
      ],
    );
  }
}

