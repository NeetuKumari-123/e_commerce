


import 'package:e_commerce/utils/common/widgets/custom_shapes/circular_container.dart';

import 'package:e_commerce/utils/common/widgets/custom_shapes/rounded_edges_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({
    super.key, required this.child,
  });

final Widget child;
  @override
  Widget build(BuildContext context) {
    return URoundedEdges(
      child: Container(
      
        color: UColors.primary,
        height:USizes.homePrimaryHeaderHeight,
        child: Stack(children: [
      /// Circular Container
          Positioned(
            top: -150,
            right: -160,
            child: UCircularContainer(
               height:USizes.homePrimaryHeaderHeight,
              width:USizes.homePrimaryHeaderHeight,
              radius: 500,
              color: UColors.white.withValues(alpha: 0.1),
            ),
          ),
      
          /// Circular Container
           Positioned(
                top: 50,
            right: -250,
             child: UCircularContainer(
              height:USizes.homePrimaryHeaderHeight,
              width:USizes.homePrimaryHeaderHeight,
              radius: 500,
              color: UColors.white.withValues(alpha: 0.1),
            ),
           ),
      /// Child
           child
        ],),
      ),
    );
  }
}


