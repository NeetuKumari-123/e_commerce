

import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class UCircularContainer extends StatelessWidget {
  const UCircularContainer({
    super.key,  this.height=400,  this.width=400,  this.radius=400,  this.color=UColors.white,  this.padding,  this.margin, this.child,
  });

final double height;
final double width;
final double radius;
final Color color;
final EdgeInsetsGeometry? padding, margin;
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: padding,
      margin: margin,
      height:height,width:  width,decoration: BoxDecoration(
    
      color: color,
      borderRadius: BorderRadius.circular(radius),
    ),child: child,);
  }
}