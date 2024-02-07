import 'package:flutter/material.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/container/circular_container.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          HMPrimaryHeaderContainer(
            child: Column(
              children: [

              ],
            ),
          ),
        ],
      )),
    );
  }
}




