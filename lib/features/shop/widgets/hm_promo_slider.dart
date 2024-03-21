import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hm_e_commerce/common/widgets/custom_shape/container/circular_container.dart';
import 'package:hm_e_commerce/common/widgets/images/hm_rounded_images.dart';
import 'package:hm_e_commerce/features/shop/controllers/home_controller.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/constants/image_strings.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';

class HMPromoSlider extends StatelessWidget {
  const HMPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
            onPageChanged: (index,_)=>controller.updatePageIndicator(index),
          ), items: [
          HMRoundedImage(
            imageUrl: HMImages.promoBanner1,
          ),
          HMRoundedImage(
            imageUrl: HMImages.promoBanner2,
          ),
          HMRoundedImage(
            imageUrl: HMImages.promoBanner3,
          ),
          HMRoundedImage(
            imageUrl: HMImages.promoBanner4,
          ),
        ],
        ),
        SizedBox(height: HMSizes.spaceBtwItems,),
        Obx(
            ()=>
           Row(
            children: [
              for( int i=0;i<4;i++)
                HMCircularContainer(
                width: 20,
                height: 4,
                margin: EdgeInsets.only(right:10 ),
                backgroundColor: controller.carousalCurrentIndex.val == i ? HMColors.primary : HMColors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }
}