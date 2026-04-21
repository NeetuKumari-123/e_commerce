



import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class URoundedContainer extends StatelessWidget {
  const URoundedContainer({
    super.key,  this.height,  this.width,  this.radius=USizes.cardRadiusLg,    this.padding,  this.margin, this.child,  this.borderColor = UColors.borderPrimary,  this.backgroundColor= UColors.white,  this.showBorder=false,
  });

final double? height;
final double? width;
final double radius;
final Color borderColor, backgroundColor;
final EdgeInsetsGeometry? padding, margin;
final Widget? child;
final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: padding,
      margin: margin,
      height:height,width:  width,decoration: BoxDecoration(
    
      color: backgroundColor,
      borderRadius: BorderRadius.circular(radius),
      border: showBorder ? Border.all(color: borderColor): null
    ),child: child,);
  }
}