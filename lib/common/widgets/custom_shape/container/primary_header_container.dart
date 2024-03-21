import 'package:flutter/material.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/container/circular_container.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';


class HMPrimaryHeaderContainer extends StatelessWidget {
   const HMPrimaryHeaderContainer({
    super.key, required this.child
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return HMCurvedEdgeWidget(
      child :SizedBox(
        height: 400,

        //padding: const EdgeInsets.all(0),
        child: Container(
          color: HMColors.primary,
          //color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: HMCircularContainer(
                      backgroundColor: HMColors.textWhite.withOpacity(0.1))),
              Positioned(
                top: 100,
                right: -300,
                child: HMCircularContainer(
                    backgroundColor: HMColors.textWhite.withOpacity(0.1)),
              ),
              child!,
            ],
          ),
        ),
      ),
    );
  }
}