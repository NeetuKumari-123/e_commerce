

import 'package:e_commerce/utils/common/widgets/custom_shapes/circular_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';

import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/app_helpers.dart';
import 'package:flutter/material.dart';

class UVerticleImageText extends StatelessWidget {
  const UVerticleImageText({
    super.key, required this.title, required this.image, required this.textColor, this.backgroundColor, this.onTap,
  });

 final String title, image;
 final Color textColor;
 final Color? backgroundColor;
 final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {

    bool isDark = AppHelpers.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(children: [
              

              // Image
              UCircularContainer(
                color: backgroundColor ?? (isDark ? UColors.dark: UColors.white),
      padding: EdgeInsets.all(USizes.borderRadiusSm),
      width: 56,height: 56,child: Image(image: AssetImage(image),fit: BoxFit.cover,),),

      SizedBox(height: USizes.spaceBtwItems/2,),

/// Title
      SizedBox(
        
        width: 55,
        child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,))
              
      ],),
    );
  }
}

 