import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/text_strings.dart';
import 'package:hm_e_commerce/utils/helpers/helper_function.dart';

class form_divider extends StatelessWidget {
  const form_divider({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = HMHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            // color: dark ? HMColors.darkGrey : HMColors.grey,
            color: dark ? HMColors.darkGrey : Colors.red,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText,style:  Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            // color: dark ? HMColors.darkGrey : HMColors.grey,
            color: dark ? HMColors.darkGrey : Colors.red,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),

      ],
    );
  }
}