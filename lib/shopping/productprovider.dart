import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/shopping/apidatacall.dart';
import 'package:tata_neu/shopping/model.dart';

final productServiceProvider =
    Provider<ProductService>((ref) => ProductService());

final categoryProductsProvider =
    FutureProvider.family<List<Product>, String>((ref, category) async {
  final productService = ref.read(productServiceProvider);
  return productService.fetchProductsByCategory(category);
});
