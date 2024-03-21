import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
class HMVerticalImageText extends StatelessWidget {
  const HMVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor=HMColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.only(right: HMSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(HMSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: HMColors.dark,
              ),
            ),

            /// Text
            SizedBox(
              height: HMSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
