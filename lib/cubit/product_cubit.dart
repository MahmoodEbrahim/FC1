import 'package:flutter_bloc/flutter_bloc.dart';
import '../Api/Api_manager.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> fetchProductsData() async {
    emit(ProductLoading());
    try {
      final products = await fetchProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
