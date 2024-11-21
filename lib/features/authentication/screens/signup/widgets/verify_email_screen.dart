import 'package:bouncy_bargains/features/authentication/screens/login/login_screen.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(XSizes.defaultSpace),
          child: Column(
            children: [
              // Image

              // Title & Subtitle

              // Buttons
            ],
          ),
        ),
      ),
    );
  }
}
