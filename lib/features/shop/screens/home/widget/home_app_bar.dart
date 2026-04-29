



import 'package:e_commerce/utils/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(
    
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    /// Title
      Text(UTexts.homeAppTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: UColors.white)),
     /// SubTitle
      Text(UTexts.homeAppSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: UColors.white)),
    ],),
    
    action: [
    
     
    
    /// Bag Icon
      UCartCounterIcon()
    ],
    );
  }
}
