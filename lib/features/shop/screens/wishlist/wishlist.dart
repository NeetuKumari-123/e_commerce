
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/utils/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/utils/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: UAppBar(title:Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
 action: [UCircularIcon(icon: Iconsax.add , onPressed: ()=> NavigationMenuController.instance.selectedIndex.value=0,)],
 ),

body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(USizes.defaultSpace),
    child: UGridLayout(
      
      itemCount: 10, itemBuilder: (context, index){
    
      return UProductCardVertical();
    }),
  ),
),
    );
  }
}