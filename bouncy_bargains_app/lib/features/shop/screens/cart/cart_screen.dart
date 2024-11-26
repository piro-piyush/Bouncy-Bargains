import 'package:bouncy_bargains/common/widgets/appbar/appbar.dart';
import 'package:bouncy_bargains/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:bouncy_bargains/features/shop/screens/checkout/checkout_screen.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XAppBar(
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
          padding: EdgeInsets.all(XSizes.defaultSpace),

          // Item in Cart
          child: XCartItems()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(XSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const CheckoutScreen());
            },
            child: const Text("Checkout \$323")),
      ),
    );
  }
}
