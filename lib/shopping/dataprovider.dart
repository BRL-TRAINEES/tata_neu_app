import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/shopping/datamodel.dart';

final groceryItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(id: '1', name: 'Apples', description: 'Fresh apples', price: 1.5, imageUrl: 'url_to_image'),
    Item(id: '2', name: 'Bananas', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '3', name: 'Egg', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '4', name: 'Bread', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '5', name: 'Milk', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '6', name: 'Bananas', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '7', name: 'Bananas', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '8', name: 'Bananas', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '9', name: 'Bananas', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
    Item(id: '10', name: 'Bananas', description: 'Ripe bananas', price: 1.0, imageUrl: 'url_to_image'),
   
  ];
});

final electronicsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(id: '1', name: 'Smartphone', description: 'Latest smartphone', price: 699.99, imageUrl: 'url_to_image'),
  ];
});


final jewelryItemsProvider = FutureProvider<List<Item>>((ref) async {
 
  return [
    Item(id: '1', name: 'Gold Necklace', description: 'Elegant gold necklace', price: 499.99, imageUrl: 'url_to_image'),
  
  ];
});

final hotelsItemsProvider = FutureProvider<List<Item>>((ref) async {
  await Future.delayed(Duration(seconds: 2));
  return [
    Item(id: '1', name: 'Hotel Paradise', description: 'Luxury hotel stay', price: 150.0, imageUrl: 'url_to_image'),
  
  ];
});

// Repeat for flights, fashion, watches, cards...