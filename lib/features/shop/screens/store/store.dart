import 'package:e_commerce/features/shop/screens/store/widget/category_tab.dart';
import 'package:e_commerce/utils/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce/utils/common/widgets/brand/brand_card.dart';
import 'package:e_commerce/features/shop/screens/store/widget/store_primary_header.dart';
import 'package:e_commerce/utils/common/widgets/text/section_heading.dart';

import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 340,
                pinned: true,
                floating: false,
                automaticallyImplyLeading: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      //primary header
                      UStorePrimaryHeader(),

                      SizedBox(height: USizes.spaceBtwItems),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: USizes.defaultSpace,
                        ),
                        child: Column(
                          children: [
                            //Brands heading
                            USectionHeading(title: "Brands", onPressed: () {}),
                            //brand card
                            SizedBox(
                              height: USizes.brandCardHeight,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                     width: USizes.brandCardWidth,
                                    child: UBrandCard());
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                      return SizedBox(
                                        width: USizes.spaceBtwItems,
                                      );
                                    },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                bottom: UTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
      UCategoryTab(),
      UCategoryTab(),
      UCategoryTab(),
      UCategoryTab(),
      UCategoryTab()
            ],
          ),
        ),
      ),
    );
  }
}
