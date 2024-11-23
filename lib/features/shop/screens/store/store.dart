import 'package:bouncy_bargains/common/widgets/appbar/appbar.dart';
import 'package:bouncy_bargains/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XAppbar(
        title: Text('Store'),
        actions: [
          XCartCounterWidget(onPressed: (){})
        ],
      ),
    );
  }
}
