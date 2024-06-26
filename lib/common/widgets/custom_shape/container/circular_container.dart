

import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';

class HMCircularContainer extends StatelessWidget {
  const HMCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height =400,
    this.radius = 400,
    this.padding =0,
    this.backgroundColor = HMColors.white, 
    this.margin,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final EdgeInsets? margin;
  final Widget ? child;
  final Color ? backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:  EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
      ),
    );
  }
}