import 'package:bouncy_bargains/features/shop/screens/product/widgets/product_detail_image_slider.dart';
import 'package:bouncy_bargains/features/shop/screens/product/widgets/product_meta_data.dart';
import 'package:bouncy_bargains/features/shop/screens/product/widgets/rating_share_widget.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:bouncy_bargains/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 Product image slider
            XProductImageSlider(),

            // 2 Product details
            Padding(
                padding: EdgeInsets.only(
                    right: XSizes.defaultSpace,
                    left: XSizes.defaultSpace,
                    bottom: XSizes.defaultSpace),
                child: Column(
                  children: [
                    // Rating & Share
                    XRatingAndShare(),

                    // Price, title, stock & brand
                    XProductMetaData()

                    // Attributes
                    // Checkout  Button
                    // Description
                    // Reviews
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
