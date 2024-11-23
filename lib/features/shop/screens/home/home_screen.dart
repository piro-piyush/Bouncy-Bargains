import 'package:bouncy_bargains/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:bouncy_bargains/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bouncy_bargains/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:bouncy_bargains/features/shop/screens/home/widgets/home_categories.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            XPrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  XHomeAppBar(),
                  SizedBox(
                    height: XSizes.spaceBtwSections,
                  ),

                  // Search Bar
                  XSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: XSizes.spaceBtwSections,
                  ),

                  // Categories
                  XHomeCategories()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
