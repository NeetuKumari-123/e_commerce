


import 'package:e_commerce/utils/common/styles/pedding.dart';
import 'package:e_commerce/utils/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/utils/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:e_commerce/utils/common/widgets/text/product_price_text.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/common/widgets/images/circular_image.dart';
import '../../../../../utils/common/widgets/text/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      // Sale Tag, Sale Price ,Actual Price and Share Button
      Row(
      children: [
      
        // Sale Tag
        URoundedContainer(
                              radius: USizes.sm,
                              padding: EdgeInsets.symmetric(
                                horizontal: USizes.sm,
                                vertical: USizes.xs,
                              ),
                              backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                              child: Text(
                                "20%",
                                style: Theme.of(
                                  context,
                                ).textTheme.labelLarge!.apply(color: UColors.black),
                              ),
                            ),
      
                               SizedBox(width: USizes.spaceBtwItems,),
                          // Sale Price
                        Text("\$ 120", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
      
                              SizedBox(width: USizes.spaceBtwItems,),
                               // Actual Price
                                UProductPriceText(price: "150", isLarge: true,),
    
                                Spacer(),
                                 // Share Button
                                IconButton(onPressed: (){}, icon: Icon(Icons.share))
      
      
      ],
      ),
      SizedBox(height: USizes.spaceBtwItems / 1.5),
    //Product Title
    UProductTitleText(title: "Blue Bata Shoes",),
      SizedBox(height: USizes.spaceBtwItems / 1.5),
    // Product Status
    Row(
    children: [
      UProductTitleText(title: "Status",),
           Text(" In Stock", style: Theme.of(context).textTheme.titleMedium!),
    ],
    ),
    
      SizedBox(height: USizes.spaceBtwItems / 1.5),
    

      // Product Brand Image With Title
      Row(children: [

        // Brand Image
    UCircularImage(
    padding: 0,
    image: UImages.brand1 , width: 32.0,height: 32.0,),
    SizedBox(width: USizes.spaceBtwItems,),

    // Brand Name
    UBrandTitleWithVerifyIcon(title: "Bata")
    
    
      ],)
    
    
    
    
      ],),
    );
  }
}
