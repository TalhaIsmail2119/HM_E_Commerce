import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/image_strings.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/constants/text_strings.dart';
import 'package:hm_e_commerce/utils/helpers/helper_function.dart';

class login_header extends StatelessWidget {
  const login_header({
    super.key,

  });

  @override
  Widget build(BuildContext context) {

    final dark = HMHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? HMImages.lightApplogo : HMImages.darkApplogo),
        ),
        Text(HMTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: HMSizes.sm),
        Text(HMTexts.onBoardingSubTitle1,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}