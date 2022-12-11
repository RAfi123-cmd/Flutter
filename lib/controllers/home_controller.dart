import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final CarouselController controller = CarouselController();
  var current = 0.obs;

  var imgSlider = [
    "assets/image/Banner 1.png",
    "assets/image/Banner 2.png",
    "assets/image/Banner 8.png",
  ].obs;
}
