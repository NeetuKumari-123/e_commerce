

 import 'package:e_commerce/utils/common/styles/shadow.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/app_helpers.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   final isDark = AppHelpers.isDarkMode(context);
    return Positioned(
    right: USizes.spaceBtwSections,
    left:  USizes.spaceBtwSections,
    bottom: 0, 
     child: Container(
       padding: EdgeInsets.symmetric(horizontal: USizes.md),
       height: USizes.searchBarHeight,
       decoration:BoxDecoration(
         borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
         color:isDark? UColors.dark: UColors.white,
         boxShadow: UShadow.searchBarShadow
       ),  
       child: Row(
         children: [
          // Search Icon
           Icon(Iconsax.search_normal, color: UColors.darkGrey,),
           SizedBox(width: USizes.spaceBtwItems,),
           // Search Bar Title
           Text(UTexts.searchBarTitle, style: Theme.of(context).textTheme.bodySmall,)
         ],
       )
        
        
        ,));
  }
}
