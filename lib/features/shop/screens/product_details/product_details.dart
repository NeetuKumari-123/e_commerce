
import 'package:e_commerce/utils/helpers/app_helpers.dart';
import 'package:flutter/material.dart';

import 'widget/product_metadata.dart';
import 'widget/productthumbnail_and_slider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {

final isDark= AppHelpers.isDarkMode(context);
    return Scaffold(


body: SingleChildScrollView(
  child: Column(children: [
  
  // ------[Product Image with Slider]--------

UProductThumbnailAndSlider(),

  //---------[Product Details]--------------

  //Price, Title,, Stock and Brand

  UProductMetaData()

  // Attributes

  //CheckOutButton

  // Description
  
  
    
  ],),
),
///-----[Bottom Navigation]--------


    );
  }
}
