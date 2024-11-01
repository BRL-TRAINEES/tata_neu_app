import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/shopping/datamodel.dart';
import 'package:tata_neu/shopping/dataprovider.dart';

final allItemsProvider = FutureProvider<List<Item>>((ref) async {
  final groceryItems = await ref.watch(groceryItemsProvider.future);
  final fashionItems = await ref.watch(fashionItemsProvider.future);
  final jewelryItems = await ref.watch(jewelryItemsProvider.future);
  final electronicsItems = await ref.watch(electronicsItemsProvider.future);
  final hotelsItems = await ref.watch(hotelsItemsProvider.future);
  final flightsItems = await ref.watch(flightsItemsProvider.future);
  final medicineItems = await ref.watch(medicineItemsProvider.future);
  final watchItems = await ref.watch(watchItemsProvider.future);
  final cardItems = await ref.watch(cardsItemsProvider.future);

  return [
    ...groceryItems,
    ...fashionItems,
    ...jewelryItems,
    ...electronicsItems,
    ...hotelsItems,
    ...flightsItems,
    ...medicineItems,
    ...watchItems,
    ...cardItems,
  ];

});

