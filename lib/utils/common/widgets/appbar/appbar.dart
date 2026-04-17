




import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class UAppBar extends StatelessWidget implements PreferredSizeWidget{
  const UAppBar({super.key, this.title,  this.showBackArrow=false, this.leadingIcon,  this.action, this.leadingPressed});


final Widget? title;
final bool showBackArrow;
final IconData? leadingIcon;
final List<Widget>? action;
final VoidCallback? leadingPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: USizes.md),
      child: AppBar(

        automaticallyImplyLeading: false,
        leading:showBackArrow? IconButton(onPressed:Get.back, icon: Icon(Iconsax.arrow_left)):
        leadingIcon!=null? IconButton(onPressed: leadingPressed, icon: Icon(leadingIcon)):null
        
        
        ,
        title: title,
        actions: action,
      ),
    );
  }
  
  @override

  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}