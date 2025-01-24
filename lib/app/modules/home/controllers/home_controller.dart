import 'package:get/get.dart';
import 'package:shop_ui/app/data/models/product_model.dart';
import 'package:shop_ui/app/utils/data_dummy.dart';
import 'package:shop_ui/service/product_service.dart';

import '../../../data/models/product_model_api.dart';

class HomeController extends GetxController {
  String selectedCategory = 'All';
  List<ProductModel> filteredProducts = [];
  var product = Product().obs;
  var isLoading = true.obs;
  var categories = <String>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchProduct();
    filteredProducts = DataDummy.listDummyProducts;
  }

  void filterProducts(String category) {
    selectedCategory = category;
    update();

    if (category == 'All') {
      filteredProducts = DataDummy.listDummyProducts;
      update();
    } else {
      filteredProducts = DataDummy.listDummyProducts
          .where((product) => product.type == category)
          .toList();
      update();
    }
  }

  void fetchProduct() async {
    product.value = await ProductService().getProducts() ?? Product();
    isLoading.value = false;
  }

  void fetchCategories() async {
    try {
      isLoading.value = true;
      categories.value = await ProductService().getCategories();
    } catch (e) {
      print('Error fetching categories: $e');
    } finally {
      isLoading.value = false;
    }
  }


}
