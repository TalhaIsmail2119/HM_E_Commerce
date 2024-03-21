import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/formatters/device_utility.dart';
import 'package:hm_e_commerce/utils/helpers/helper_function.dart';

class HMSearchContainer extends StatelessWidget {
  const HMSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBorder=true,
    this.showBackground=true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {

    final dark =HMHelperFunctions.isDarkMode(context);
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: HMSizes.defaultSpace),
      child: Container(
        width: HMDeviceUtlis.getScreenWidth(context),
        padding:  EdgeInsets.all(HMSizes.md),
        decoration: BoxDecoration(
          color: showBackground? dark? HMColors.dark :HMColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(HMSizes.cardRadiusLg),
          border: showBorder? Border.all(color: Colors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon,color:HMColors.darkGrey,),
            SizedBox(width: HMSizes.spaceBtwItems,),
            Text(text, style: Theme.of(context).textTheme.bodySmall,),


          ],
        ),
      ),
    );
  }
}