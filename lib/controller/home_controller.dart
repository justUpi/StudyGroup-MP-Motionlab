import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedCategory = "All".obs;

  void changeCategory(String category) {
    selectedCategory.value = category;
  }
}
