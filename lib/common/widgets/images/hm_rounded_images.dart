import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';

class HMRoundedImage extends StatelessWidget {
  const HMRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageBorder=false,
    this.border,
    this.backgroundColor=HMColors.light,
    this.fit,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
    this.borderRadius=HMSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageBorder;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageBorder
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
                fit: fit,
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider)),
      ),
    );
  }
}
