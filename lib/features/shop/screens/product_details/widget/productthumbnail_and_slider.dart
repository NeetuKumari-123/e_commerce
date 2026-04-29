

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/common/widgets/appbar/appbar.dart';
import '../../../../../utils/common/widgets/icons/circular_icon.dart';
import '../../../../../utils/common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/app_helpers.dart';

class UProductThumbnailAndSlider extends StatelessWidget {
  const UProductThumbnailAndSlider({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
    final isDark= AppHelpers.isDarkMode(context);
    return Container(
      color: isDark? UColors.darkerGrey: UColors.white,
      child: Stack(children: [
      // [Image]- Main Image or Thumbnail
        SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(USizes.productImageRadius *2),
            child: Center(child: Image(image: AssetImage(UImages.product2, ))),
          ),
        ),
      
      // Image Slider
      
      
      Positioned(
        left: USizes.defaultSpace,
        right: 0,
        bottom: 30,
        child: SizedBox(
          height: 80.0,
        
          child: ListView.separated(
          
            shrinkWrap: true,
            
            itemCount: 5, scrollDirection: Axis.horizontal,  
            itemBuilder: (context, index) {
            return 
          URoundedImage(
            width: 80,
            backgroundColor: isDark? UColors.dark: UColors.white,
            padding: EdgeInsets.all(USizes.sm),
            border: Border.all(color: UColors.primary),
            imageUrl: index %2 == 0 ? UImages.product2 : UImages.product3);
          
          }, separatorBuilder: (context, index) => const SizedBox(width: USizes.spaceBtwItems),  ),
        ),
      )
     ,
     // [AppBar] - BackArrow and Favorite Icon
     UAppBar(
      showBackArrow: true,
      action: [
    
        UCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
      ],
    
     )
     
     
     
     
     
     
      ],),
    );
  }
}