


import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/app_helpers.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final isDark = AppHelpers.isDarkMode(context);
    return Stack(
      children: [
    
         IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag,color: UColors.white,)),
        Positioned(
          right: 6,
    
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: isDark? UColors.dark: UColors.white,
              borderRadius: BorderRadius.circular(500)
            ),
            child: Center(child: Text("2", style: Theme.of(context).textTheme.labelSmall!.apply(color: isDark? UColors.white: UColors.dark, fontSizeFactor: 0.8),)),
          ),
        ),
      ],
    );
  }
}
