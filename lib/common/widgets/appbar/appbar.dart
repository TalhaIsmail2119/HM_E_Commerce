import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/formatters/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class HMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HMAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow=true,


  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: HMSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
          ? IconButton(onPressed: ()=> Get.back(), icon: Icon(Iconsax.arrow_left))
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }



  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(HMDeviceUtlis.getAppBarHeight());
}
