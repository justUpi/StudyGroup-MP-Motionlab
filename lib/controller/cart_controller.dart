import 'package:get/get.dart';

class CartController extends GetxController {
  final quantity = 0.obs;
  void quantityIncerment() => quantity.value++;
  void quantityDecerment() => quantity.value--;
}
