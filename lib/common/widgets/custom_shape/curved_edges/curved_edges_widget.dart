import 'package:flutter/material.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/curved_edges/curved_edges.dart';


class HMCurvedEdgeWidget extends StatelessWidget {
  const HMCurvedEdgeWidget({
    super.key, this.child
  });
  final Widget ? child ;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HMCustomCurvedEdges(),
      child:child,
    );
  }
}
