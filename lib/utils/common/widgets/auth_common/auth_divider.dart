


import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(indent: 30, endIndent: 5, thickness: 0.5),
        ),
    
        Text(
          UTexts.orSignInWith,
          style: Theme.of(context).textTheme.bodySmall,
        ),
    
        Expanded(
          child: Divider(indent: 5, endIndent: 30, thickness: 0.5),
        ),
      ],
    );
  }
}

