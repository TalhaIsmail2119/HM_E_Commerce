import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hm_e_commerce/features/authentication/screens/login/login_page.dart';
import 'package:hm_e_commerce/features/authentication/screens/signup/success_screen.dart';
import 'package:hm_e_commerce/utils/constants/image_strings.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/constants/text_strings.dart';
import 'package:hm_e_commerce/utils/helpers/helper_function.dart';

class VarifyEmailScreen extends StatelessWidget {
  const VarifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => LogInPage()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(HMSizes.defaultSpace),
            child: Column(
              children: [
                /// Image
                Image(
                  image: const AssetImage(HMImages.deliveredEmailIllustration),
                  width: HMHelperFunctions.screenWidth() * 0.6,
                  //   width: double.infinity * 0.6,
                ),
                const SizedBox(
                  height: HMSizes.spaceBtwSections,
                ),

                /// Title & SubTittle
                Text(
                  HMTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: HMSizes.spaceBtwItems),
                Text(
                  'support@hmcommerce.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: HMSizes.spaceBtwItems),
                Text(
                  HMTexts.confirmEmailSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: HMSizes.spaceBtwSections),

                /// Buttons
                const SizedBox(height: HMSizes.spaceBtwSections),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: HMImages.staticSuccessIllustration,
                            title: HMTexts.yourAccountCreatedtitle,
                            subtitle: HMTexts.yourAccountCreatedSubtitle,
                            onPressed: ()=> Get.to(() => LogInPage()),
                          )),
                      child: const Text(HMTexts.Scontinue),
                    )),
                const SizedBox(height: HMSizes.spaceBtwItems),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(HMTexts.resendEmail),
                    )),
              ],
            ),
          ),
        ));
  }
}
