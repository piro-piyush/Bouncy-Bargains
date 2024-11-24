import 'package:bouncy_bargains/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:bouncy_bargains/common/widgets/texts/section_heading.dart';
import 'package:bouncy_bargains/utils/constants/colors.dart';
import 'package:bouncy_bargains/utils/constants/image_strings.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class XHomeCategories extends StatelessWidget {
  const XHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: XSizes.defaultSpace),
      child: Column(
        children: [
          // Heading
          const XSectionHeading(
            title: 'Popular Categories',
            textColor: XColors.white,
            showActionButton: false,
          ),
          const SizedBox(
            height: XSizes.spaceBtwItems,
          ),

          // List of Categories
          SizedBox(
            height: 80,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return XVerticalImageText(
                    image: XImages.shoeIcon,
                    title: 'Shoes',
                    onTapped: () {},
                  );
                }),
          )
        ],
      ),
    );
  }
}
