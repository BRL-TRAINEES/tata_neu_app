import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/shopping/datamodel.dart';
import 'package:tata_neu/shopping/detailscreen.dart';

class ItemListScreen extends ConsumerWidget {
  final String title;
  final FutureProvider<List<Item>> itemsProvider;

  ItemListScreen({required this.title, required this.itemsProvider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncItems = ref.watch(itemsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: asyncItems.when(
        data: (items) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(item: item),
                    ),
                  );
                },
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Image.network(
                        item.imageUrl,
                        height: 170,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Text(
                        item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text('₹${item.price.toString()}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
