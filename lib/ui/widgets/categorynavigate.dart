import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/shopping/datamodel.dart';
import 'package:tata_neu/shopping/dataprovider.dart';
import 'package:tata_neu/shopping/itemsscreen.dart';

void navigateToCategory(BuildContext context, String category) {
  final FutureProvider<List<Item>> provider;
  String title;

  switch (category) {
    case 'Grocery':
      provider = groceryItemsProvider;
      title = 'Grocery Items';
      break;
    case 'Fashion':
      provider = fashionItemsProvider;
      title = 'Fashion Items';
      break;
    case 'Jewelry':
      provider = jewelryItemsProvider;
      title = 'Jewellery Items';
      break;
    case 'Electronics':
      provider = electronicsItemsProvider;
      title = 'Electronics Items';
      break;
    case 'Hotels':
      provider = hotelsItemsProvider;
      title = 'Hotel Listings';
      break;
    case 'Flights':
      provider = flightsItemsProvider;
      title = 'Flight Listings';
      break;
    case 'Medicines':
      provider = medicineItemsProvider;
      title = 'Medicines';
      break;
    case 'Watches':
      provider = watchItemsProvider;
      title = 'Watches';
      break;
    case 'Cards':
      provider = cardsItemsProvider;
      title = 'Credit & Debit Cards';
      break;
    default:
      throw Exception('Unknown category: $category');
  }

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>
          ItemListScreen(title: title, itemsProvider: provider),
    ),
  );
}
