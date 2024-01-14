import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/image_strings.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';

class social_buttons extends StatelessWidget {
  const social_buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border:  Border.all(color: HMColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: HMSizes.iconMd,
              height: HMSizes.iconMd,
              image:  AssetImage(HMImages.facebook),
            ),
          ),
        ),

        const SizedBox(width: HMSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border:  Border.all(color: HMColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: HMSizes.iconMd,
              height: HMSizes.iconMd,
              image:  AssetImage(HMImages.google),
            ),
          ),
        ),
      ],
    );
  }
}