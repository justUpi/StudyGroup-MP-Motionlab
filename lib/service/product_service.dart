import '../app/data/models/product_model_api.dart';
import '../app/shared/constanta.dart';

class ProductService {
  Future<Product?> getProducts() async{
    try{
      final response = await dio.get('$url/products/');
      print(response.data);
      if(response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
      return null;

    }catch(e) {
      return throw Exception(e);
    }
  } 
   Future<ProductElement?> getDetailsProducts({required int id}) async{
    try{
      final response = await dio.get('$url/products/$id');
      print(response.data);
      if(response.statusCode == 200) {
        return ProductElement.fromJson(response.data);
      }
      return null;

    }catch(e) {
      return throw Exception(e);
    }
  } 
  
  Future<List<String>> getCategories() async {
  try {
    final response = await dio.get('$url/products');
    if (response.statusCode == 200) {
      final products = Product.fromJson(response.data).products ?? [];
      // Ambil semua tags dari produk
      final allTags = products.expand((product) => product.tags ?? []).toList();
      // Filter kategori unik
      final uniqueTags = allTags.toSet().toList().cast<String>();
      return uniqueTags; // Pastikan tipe List<String>
    }
    return [];
  } catch (e) {
    throw Exception('Failed to fetch categories: $e');
  }
}


}