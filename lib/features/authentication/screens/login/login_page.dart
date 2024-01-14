import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:hm_e_commerce/common/styles/spacing_style.dart';
import 'package:hm_e_commerce/common/widgets_login_signup/form_divider.dart';
import 'package:hm_e_commerce/common/widgets_login_signup/social_buttons.dart';
import 'package:hm_e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:hm_e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/image_strings.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/constants/text_strings.dart';
import 'package:hm_e_commerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HMSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              login_header(),

              //Form
              login_form(),

              /// Dividerr
              form_divider(dividerText: HMTexts.orSignInWith.capitalize!),

              const SizedBox(height: HMSizes.spaceBtwSections),

              /// Footer

              social_buttons(),

            ],
          ),
        ),
      ),
    );
  }
}








