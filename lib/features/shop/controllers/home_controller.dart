import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{

  static HomeController get instance =>Get.find();

  final carousalCurrentIndex =0.abs;

  void updatePageIndicator(index){
    carousalCurrentIndex.val =index;

  }
}