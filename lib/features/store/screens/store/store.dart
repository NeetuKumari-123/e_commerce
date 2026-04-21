import 'package:e_commerce/utils/common/widgets/brand/brand_card.dart';
import 'package:e_commerce/features/store/screens/store/widget/store_primary_header.dart';
import 'package:e_commerce/utils/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/utils/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/utils/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:e_commerce/utils/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              floating: true,
              automaticallyImplyLeading: false,
              flexibleSpace: Column(
                children: [
                  //primary header
                  UStorePrimaryHeader(),

                  SizedBox(height: USizes.spaceBtwItems,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
                child: Column(children: [
                
                       //Brands heading
                    USectionHeading(title: "Brands", onPressed: () {
                      
                    },),
                                    //brand card    
                           SizedBox(
                            height: USizes.brandCardHeight,
                             child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index){
                             
                return        UBrandCard();
                             }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: USizes.spaceBtwItems); },),
                           )
                 
                 
                ],),
              )
               
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
