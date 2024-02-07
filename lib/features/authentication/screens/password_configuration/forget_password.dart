import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hm_e_commerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(HMSizes.defaultSpace),
        child: Column(children: [
          /// Heading
          Text(
            HMTexts.forgetPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: HMSizes.spaceBtwItems),
          Text(
            HMTexts.forgetPasswordSubTitle,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: HMSizes.spaceBtwSections * 2),
          ///Text Field 
          TextFormField(
            decoration:  const InputDecoration(
              labelText: HMTexts.email,
              prefixIcon: Icon(Iconsax.direct_right)
            ),
          ),
          const SizedBox(height: HMSizes.spaceBtwSections),

          /// Submit Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> Get.to(()=> const ResetPassword()),
                child: const Text(HMTexts.submit),
              )),
        ] ),
      ),
    );
  }
}
