import 'package:bouncy_bargains/common/widgets/appbar/appbar.dart';
import 'package:bouncy_bargains/features/shop/screens/order/widgets/orders_list.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XAppBar(
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
          padding: EdgeInsets.all(XSizes.defaultSpace),
          // Orders
          child: OrdersList()),
    );
  }
}
