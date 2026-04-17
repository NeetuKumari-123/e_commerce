


import 'package:e_commerce/utils/constants/colors.dart';

import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.onTap, required this.logo});


final VoidCallback onTap;
final String logo;
  @override
  Widget build(BuildContext context) {
    return  Container(
              decoration: BoxDecoration(
        border: Border.all(color: UColors.grey,),
                borderRadius: BorderRadius.circular(100)
              ),
              child: IconButton(onPressed:onTap, icon: Image.asset(logo)),
            );
        
  }
}