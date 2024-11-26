import 'package:bouncy_bargains/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:bouncy_bargains/features/shop/screens/sub_category/sub_category_screen.dart';
import 'package:bouncy_bargains/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XHomeCategories extends StatelessWidget {
  const XHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return XVerticalImageText(
              image: XImages.shoeIcon,
              title: 'Shoes',
              onTapped: () {
                Get.to(() => const SubCategoryScreen());
              },
            );
          }),
    );
  }
}
