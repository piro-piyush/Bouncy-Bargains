import 'package:bouncy_bargains/common/widgets/products/cart/add_remove_button.dart';
import 'package:bouncy_bargains/common/widgets/products/cart/cart_item.dart';
import 'package:bouncy_bargains/common/widgets/texts/product_price_text.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class XCartItems extends StatelessWidget {
  const XCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: XSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          const XCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(
              height: XSizes.spaceBtwItems,
            ),

          if (showAddRemoveButtons)
            // Add Remove Button with Total price
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra Space
                    SizedBox(
                      width: 70,
                    ),

                    // Add Remove Buttons
                    XProductQuantityWithAddOrRemoveButton(),
                  ],
                ),
                XProductPriceText(price: '256')
              ],
            )
        ],
      ),
    );
  }
}
