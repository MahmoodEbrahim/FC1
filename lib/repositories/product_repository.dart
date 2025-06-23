import 'package:injectable/injectable.dart';
import '../Api/Api_manager.dart';
import '../models/res_product.dart';

@lazySingleton
class ProductRepository {
  Future<List<Product>> getProducts() async {
    return await fetchProducts();
  }
}
