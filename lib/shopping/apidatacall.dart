import 'dart:convert';

import 'package:tata_neu/shopping/model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'https://fakestoreapi.com/products';

  Future<List<Product>> fetchProductsByCategory(String category) async {
    final url = '$baseUrl/category/$category';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
