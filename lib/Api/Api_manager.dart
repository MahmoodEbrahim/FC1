import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/res_product.dart';

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body);
    List<Product> products = jsonList.map((json) => Product.fromJson(json)).toList();
    return products;
  } else {
    throw Exception('Error');
  }
}
