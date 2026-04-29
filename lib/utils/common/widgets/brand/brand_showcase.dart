import 'package:e_commerce/utils/common/widgets/brand/brand_card.dart';
import 'package:e_commerce/utils/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/app_helpers.dart';
import 'package:flutter/material.dart';

class UBrandShowcase extends StatelessWidget {
  const UBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelpers.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      borderColor: UColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(USizes.md),
      margin: EdgeInsets.only(bottom: USizes.spaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UBrandCard(showBorder: false),
          Row(
            children: images
                .map((image) => buildBrandImage(isDark, image))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget buildBrandImage(bool isDark, String image) {
    return Expanded(
      child: URoundedContainer(
        height: 100,
        margin: const EdgeInsets.only(right: USizes.sm),
        padding: EdgeInsets.all(USizes.md),
        backgroundColor: isDark ? UColors.darkGrey : UColors.light,
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
