import 'package:bouncy_bargains/common/styles/spacing_styles.dart';
import 'package:bouncy_bargains/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:bouncy_bargains/utils/constants/colors.dart';
import 'package:bouncy_bargains/utils/constants/image_strings.dart';
import 'package:bouncy_bargains/utils/constants/sizes.dart';
import 'package:bouncy_bargains/utils/constants/text_strings.dart';
import 'package:bouncy_bargains/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: XSpacingStyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Logo, Title & Sub-Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                    height: 150,
                    image: AssetImage(
                        dark ? XImages.lightAppLogo : XImages.darkAppLogo)),
                Text(
                  XTexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: XSizes.sm,
                ),
                Text(
                  XTexts.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),

            /// Form
            Form(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: XSizes.spaceBtwSections),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: XTexts.email),
                  ),
                  const SizedBox(
                    height: XSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: XTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(
                    height: XSizes.spaceBtwInputFields / 2,
                  ),

                  /// Remember Me & Forget Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Remember Me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(XTexts.rememberMe)
                        ],
                      ),

                      ///Forget Password
                      TextButton(
                          onPressed: () {},
                          child: const Text(XTexts.forgetPassword))
                    ],
                  ),
                  const SizedBox(
                    height: XSizes.spaceBtwSections,
                  ),

                  // SignIn Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(XTexts.signIn))),
                  const SizedBox(
                    height: XSizes.spaceBtwItems,
                  ),

                  // Create Account Button
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(XTexts.createAccount))),
                  const SizedBox(
                    height: XSizes.spaceBtwItems,
                  ),
                ],
              ),
            )
            ),

            /// Divider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Flexible(
                child: Divider(
                  color: dark? XColors.darkerGrey: XColors.grey,
                  thickness: 0.5,indent: 60,endIndent: 5,
                ),
              ),
                 Text(XTexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium,),
                Flexible(
                child: Divider(
                  color: dark? XColors.darkerGrey: XColors.grey,
                  thickness: 0.5,indent: 5,endIndent: 60,
                ),
              )
              ],
            )
          ],
        ),
      )),
    );
  }
}
