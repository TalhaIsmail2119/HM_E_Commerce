import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_e_commerce/features/shop/screens/home/home.dart';
import 'package:hm_e_commerce/utils/constants/colors.dart';
import 'package:hm_e_commerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller =Get.put(NavigationController());
    final darkMode = HMHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>controller.selectedIndex.value=index,
          backgroundColor: darkMode? HMColors.black : HMColors.white,
          indicatorColor:  darkMode ? HMColors.white.withOpacity(0.1) : HMColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label:'Home' ),
            NavigationDestination(icon: Icon(Iconsax.shop), label:'Store' ),
            NavigationDestination(icon: Icon(Iconsax.heart), label:'WishList' ),
            NavigationDestination(icon: Icon(Iconsax.user), label:'Profile' ),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),




    );
  }
}

class NavigationController extends GetxController{

  final Rx<int> selectedIndex =0.obs;

  final screens=[
    HomePage(),
    Container(color: Colors.orangeAccent,),
    Container(color: Colors.purple,),
    Container(color: Colors.blueGrey,),
  ];

}
