
import 'package:e_commerce/features/store/controllers/home/home_controller.dart';

import 'package:e_commerce/features/store/screens/widget/home_app_bar.dart';
import 'package:e_commerce/features/store/screens/widget/home_categories.dart';
import 'package:e_commerce/features/store/screens/widget/promo_slider.dart';

import 'package:e_commerce/utils/common/widgets/custom_shapes/primary_header_container.dart';

import 'package:e_commerce/utils/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce/utils/constants/images.dart';

import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    
    return Scaffold(

body: Column(


  children: [
      /// Upper part
    Stack(
      children: [
        SizedBox(height: USizes.homePrimaryHeaderHeight +10,),
        UPrimaryHeaderContainer(child:Column(children: [
        /// AppBar
          UHomeAppBar() ,
    
    SizedBox(height: USizes.spaceBtwSections,),
    
    ///Home Categories
          HomeCategories()
    
       
        ],),),
    
    ///Search Bar
         USearchBar()
      ],
    ),

SizedBox(height: USizes.spaceBtwSections),
    /// Lower Part

     Padding(
       padding: const EdgeInsets.all(USizes.defaultSpace),
       child: UPromoSlider(banners: [UImages.banner1,UImages.banner2,UImages.banner3,UImages.banner4,UImages.banner5,UImages.banner6,],),
     )
  ],
),

    );
  }
}
