import 'package:bouncy_bargains/common/styles/shadows.dart';
import 'package:bouncy_bargains/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bouncy_bargains/common/widgets/icons/circular_icon.dart';
import 'package:bouncy_bargains/common/widgets/images/x_rounded_image.dart';
import 'package:bouncy_bargains/common/widgets/texts/product_title_text.dart';
import 'package:bouncy_bargains/utils/constants/colors.dart';
import 'package:bouncy_bargains/utils/constants/image_strings.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:bouncy_bargains/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class XProductCardVertical extends StatelessWidget {
  const XProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [XShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(XSizes.productImageRadius),
            color: dark ? XColors.darkerGrey : XColors.white),
        child: Column(
          children: [
            // Thumbnail, WishList Button, Discount Tag
            XRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(XSizes.sm),
              backgroundColor: dark ? XColors.dark : XColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const XRoundedImage(
                    imageUrl: XImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: XRoundedContainer(
                      radius: XSizes.sm,
                      backgroundColor: XColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: XSizes.sm, vertical: XSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: XColors.black),
                      ),
                    ),
                  ),

                  // Favourite Icon
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: XCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: XSizes.spaceBtwItems / 2,
            ),

            // Details
            Padding(
              padding: const EdgeInsets.only(left: XSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const XProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: XSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.labelMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        width: XSizes.sm,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: XColors.primary,
                        size: XSizes.iconXs,
                      )
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: XSizes.sm),
                  child: XProductPriceText(
                    price: '35.0',
                  ),
                ),

                // Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                      color: XColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(XSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(XSizes.productImageRadius))),
                  child: const SizedBox(
                      width: XSizes.iconLg * 1.2,
                      height: XSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: XColors.white,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class XProductPriceText extends StatelessWidget {
  const XProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
