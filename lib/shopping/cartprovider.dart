import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/shopping/datamodel.dart';

class CartNotifier extends StateNotifier<List<Item>> {
  CartNotifier() : super([]);

  void addToCart(Item item) {
    state = [...state, item];
  }

  void removeFromCart(Item item) {
    state = state.where((cartItem) => cartItem.id != item.id).toList();
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, List<Item>>((ref) {
  return CartNotifier();
});
