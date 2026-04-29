

import 'package:e_commerce/utils/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/utils/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:e_commerce/utils/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/common/widgets/brand/brand_showcase.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    children: [
    
        Padding(
              padding: const EdgeInsets.symmetric(horizontal:  USizes.defaultSpace),
              child: Column(
                children: [
                  // Brand showcase 1
                  UBrandShowcase(
                    images: [
                      UImages.product1,
                      UImages.product1,
                      UImages.product1,
                    ],
                  ),
                           // Brand showcase 2
                  UBrandShowcase(
                    images: [
                      UImages.product1,
                      UImages.product1,
                      UImages.product1,
                    ],
                  ),
         
    
          SizedBox(height: USizes.spaceBtwItems),
    // you might like section heading
          USectionHeading(title: "You might like"),

          // gridlayout product
          UGridLayout(itemCount: 4, itemBuilder: (context, index){
    
            return UProductCardVertical();
          }),
          SizedBox(height: USizes.spaceBtwSections,)


          
               
                ],
              ),
            ),
         
         
    ],
    
    );
  }
}
