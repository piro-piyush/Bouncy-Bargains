import 'package:bouncy_bargains/common/widgets/appbar/appbar.dart';
import 'package:bouncy_bargains/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bouncy_bargains/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bouncy_bargains/common/widgets/images/x_circular_image.dart';
import 'package:bouncy_bargains/common/widgets/layouts/grid_layout.dart';
import 'package:bouncy_bargains/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:bouncy_bargains/common/widgets/texts/section_heading.dart';
import 'package:bouncy_bargains/common/widgets/texts/x_brand_title_text_with_verified_icon.dart';
import 'package:bouncy_bargains/utils/constants/colors.dart';
import 'package:bouncy_bargains/utils/constants/enums.dart';
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

                      XGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: XRoundedContainer(
                                padding: const EdgeInsets.all(XSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    // Icon
                                    Flexible(
                                      child: XCircularImage(
                                        backgroundColor: Colors.transparent,
                                        image: XImages.clothIcon,
                                        overlayColor: dark
                                            ? XColors.white
                                            : XColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: XSizes.spaceBtwItems / 2,
                                    ),

                                    // Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const XBrandTitleWithVerifiedIcon(
                                            title: "Nike",
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            '256 products',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
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
