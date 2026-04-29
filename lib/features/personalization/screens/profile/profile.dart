import 'package:e_commerce/utils/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'widgets/profile_primary_header.dart';
import 'widgets/setting_menu_tile.dart';
import 'widgets/user_profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             
             //Profile Primary Header
             UProfilePrimaryHeader(),
        Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column( children: [
          
          
         // User Profile Details
          UserProfileTile(),
          SizedBox(height: USizes.spaceBtwItems,),
          // Account  Settings Heading
        USectionHeading(title: "Account Setting", showActionButton: false,),
          
        //Setting Menu
        SettingMenuTile(icon: Iconsax.safe_home, title: "My Addresss",subtitle: "Set Shopping delivery addresses",),
             
        SettingMenuTile(icon: Iconsax.shopping_cart, title: "My Cart",subtitle: "Add, remove products and move to checkout",),
        SettingMenuTile(icon: Iconsax.bag_tick, title: "My Orders",subtitle: "In-progress and Completed Orders",),
          
          SizedBox(height: USizes.spaceBtwSections,),
        //Logout
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(onPressed: (){}, child: Text("Logout"))),
        
               SizedBox(height: USizes.spaceBtwSections,),
        
          ],),
        )
             
          ],
        ),
      ),
    );
  }
}

