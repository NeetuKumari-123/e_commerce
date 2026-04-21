import 'package:e_commerce/utils/common/styles/shadow.dart';
import 'package:e_commerce/utils/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/utils/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/utils/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/utils/common/widgets/text/brand_title_text.dart';
import 'package:e_commerce/utils/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:e_commerce/utils/common/widgets/text/product_price_text.dart';
import 'package:e_commerce/utils/common/widgets/text/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/app_helpers.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelpers.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: UShadow.verticalProductShadow,
          borderRadius: BorderRadius.circular(USizes.productImageRadius),
          color: isDark ? UColors.darkerGrey : UColors.white,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Thumbnail, favorate button and discount tag
            URoundedContainer(
              width: 180,
              padding: EdgeInsets.all(USizes.sm),
              backgroundColor: isDark ? UColors.dark : UColors.light,
              child: Stack(
                children: [
                  // Thumbnail
                  URoundedImage(imageUrl: UImages.product1),

                  // discount tag
                  Positioned(
                    top: 12.0,

                    child: URoundedContainer(
                      radius: USizes.sm,
                      padding: EdgeInsets.symmetric(
                        horizontal: USizes.sm,
                        vertical: USizes.xs,
                      ),
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      child: Text(
                        "20%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: UColors.black),
                      ),
                    ),
                  ),

                  // Favorate Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: UCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: USizes.spaceBtwItems / 2),

            // Details
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title
                  UProductTitleText(title: "Blue Bata Shoes", smallSize: true),
                  SizedBox(height: USizes.spaceBtwItems / 2),
                  // Product Brand
                  UBrandTitleWithVerifyIcon(title: "Bata",),
                ],
              ),
            ),

            Spacer(),
            //Product Price &  Add Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Product Price
                Padding(
                  padding: const EdgeInsets.only(left: USizes.sm),
                  child: UProductPriceText(price: "65"),
                ),
                // Add Button
                Container(
                  width: USizes.iconLg * 1.2,
                  height: USizes.iconLg * 1.2,
                  decoration: BoxDecoration(
                    color: UColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(USizes.cardRadiusMd),
                      bottomRight: Radius.circular(USizes.productImageRadius),
                    ),
                  ),
                  child: Icon(Icons.add, color: UColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
