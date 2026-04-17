import 'package:e_commerce/utils/common/widgets/image_text/verticle_image_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// heading
          Text(
            UTexts.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),

          SizedBox(height: USizes.spaceBtwItems),

          //
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return UVerticleImageText(
                  title: "Sports",
                  image: UImages.sportsIcon,
                  textColor: UColors.white,
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(width: USizes.spaceBtwItems),
            ),
          ),
        ],
      ),
    );
  }
}
