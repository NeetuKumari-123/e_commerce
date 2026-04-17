



import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key, required this.title, required this.subTitle,
  });
final String title;
final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///Title
        Text(
        title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: USizes.sm),
    
        ///SubTitle
        Text(
        subTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
