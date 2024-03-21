

import 'package:flutter/material.dart';
import 'package:hm_e_commerce/common/widgets/image_text_widgets/HMVerticalImageText.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/image_strings.dart';
class HMHomeCategories extends StatelessWidget {
  const HMHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return HMVerticalImageText(
              image: HMImages.shoeIcon,
              title: 'Shoes',
              backgroundColor: HMColors.white,
              onTap: () {},
            );
          }),
    );
  }
}
