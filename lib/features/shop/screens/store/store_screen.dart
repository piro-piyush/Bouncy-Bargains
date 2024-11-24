import 'package:bouncy_bargains/common/widgets/appbar/appbar.dart';
import 'package:bouncy_bargains/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bouncy_bargains/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bouncy_bargains/common/widgets/images/x_circular_image.dart';
import 'package:bouncy_bargains/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:bouncy_bargains/common/widgets/texts/section_heading.dart';
import 'package:bouncy_bargains/utils/constants/colors.dart';
import 'package:bouncy_bargains/utils/constants/image_strings.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:bouncy_bargains/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: XAppbar(
        title: const Text('Store'),
        actions: [
          XCartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: dark ? XColors.black : XColors.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(XSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      // Search Bar
                      const SizedBox(
                        height: XSizes.spaceBtwItems,
                      ),
                      const XSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: XSizes.spaceBtwSections,
                      ),

                      // Feature Brands
                      XSectionHeading(
                        title: 'Feature Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: XSizes.spaceBtwItems / 1.5,
                      ),

                      XRoundedContainer(
                        padding: const EdgeInsets.all(XSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            // Icon
                            XCircularImage(
                              backgroundColor: Colors.transparent,
                              image: XImages.clothIcon,
                              overlayColor:
                                  dark ? XColors.white : XColors.black,
                            ),
                            SizedBox(
                              width: XSizes.spaceBtwItems / 2,
                            ),

                            // Text
                            Column(
                              children: [

                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
