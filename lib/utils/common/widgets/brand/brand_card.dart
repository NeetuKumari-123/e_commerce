

import 'package:e_commerce/utils/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/utils/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/utils/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
   width: USizes.brandCardWidth,
      showBorder: true,
      padding: EdgeInsets.all(USizes.sm),
      backgroundColor: Colors.transparent,
      child: Row(
        
        children: [
    
          //brand Image
                         Flexible(child: URoundedImage(imageUrl: UImages.brand1, backgroundColor: Colors.transparent,)),
                      
                         SizedBox(width: USizes.spaceBtwItems/2,),
        
       Expanded(
         child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             
              //brand name & verify icon      
             UBrandTitleWithVerifyIcon(title: "Bata",brandTextSize: TextSizes.large,),
             //Text
                                        Text("172 Product", style: Theme.of(context).textTheme.labelMedium,overflow: TextOverflow.ellipsis,)
           ],
         ),
       ),
                      
                      
                      
      ],),
    );
  }
}
