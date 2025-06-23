import '../models/res_product.dart';
import '../Api/Api_manager.dart';

class ProductRepository {
  Future<List<Product>> getProducts() async {
    return await fetchProducts();
  }
}
