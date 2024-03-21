/// Test Container
// Container(
//   color: Colors.red,
//   width: double.infinity,
//   height: 200,
// )

///-----------------------------

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hm_e_commerce/common/text/HMSectionHeading.dart';
import 'package:hm_e_commerce/common/widgets/appbar/appbar.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/container/HMSearchContainer.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/container/circular_container.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:hm_e_commerce/common/widgets/image_text_widgets/HMVerticalImageText.dart';
import 'package:hm_e_commerce/common/widgets/images/hm_rounded_images.dart';
import 'package:hm_e_commerce/features/shop/widgets/hm_promo_slider.dart';
import 'package:hm_e_commerce/features/shop/widgets/home_categories.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/image_strings.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/constants/text_strings.dart';
import 'package:hm_e_commerce/utils/formatters/device_utility.dart';
import 'package:hm_e_commerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [

          /// Header
          HMPrimaryHeaderContainer(
              child: Column(
            children: [
              /// HomeAppBar
              HMAppBar(
                title: Column(
                  children: [
                    Text(
                      HMTexts.homeAppbartitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: HMColors.grey),
                    ),
                    Text(
                      HMTexts.homeAppbarSubtitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: HMColors.white),
                    )
                  ],
                ),
                //actions: [()],
              ),

              SizedBox(
                height: HMSizes.spaceBtwSections,
              ),

              ///Search Bar
              HMSearchContainer(
                text: 'Search in Store',
                icon: Iconsax.search_normal,
              ),

              SizedBox(
                height: HMSizes.spaceBtwSections,
              ),

              /// --- Categories ---
              Padding(
                padding: EdgeInsets.only(left: HMSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Heading
                    HMSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: HMSizes.spaceBtwItems,
                    ),

                    /// Categories List
                    HMHomeCategories()
                  ],
                ),
              )
            ],
          )),

          /// ---------Body -------

          Padding(
            padding: const EdgeInsets.all(HMSizes.defaultSpace),
            child:HMPromoSlider()
          )
        ],
      )),
    );
  }
}






