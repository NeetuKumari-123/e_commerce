


import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UGridLayout extends StatelessWidget {
  const UGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent=288, required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
     physics: NeverScrollableScrollPhysics(),
     shrinkWrap: true,
     itemCount: itemCount,
     padding: EdgeInsets.zero  ,
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
     
     mainAxisSpacing: USizes.gridViewSpacing,
    mainAxisExtent: mainAxisExtent,
     crossAxisSpacing:  USizes.gridViewSpacing,
     ), itemBuilder:itemBuilder);
  }
}
