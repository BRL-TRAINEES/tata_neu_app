import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/search/allitemprovider.dart';
import 'package:tata_neu/shopping/reviewprovider.dart';

class Reviewscreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(reviewProvider);
    final allItemsAsyncValue = ref.watch(allItemsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Reviews'),
        backgroundColor: Colors.purple, // Set AppBar color
      ),
      body: allItemsAsyncValue.when(
        data: (allItems) {
          return ListView.builder(
            padding: const EdgeInsets.all(16.0), // Add padding
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              final review = reviews[index];
              final item =
                  allItems.firstWhere((item) => item.id == review.itemId);

              return Card(
                // Use a Card for better visual separation
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4, // Add shadow for depth
                child: ListTile(
                  title: Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(review.reviewText),
                      SizedBox(height: 4), // Add space between text elements
                      Text(
                        review.timestamp.toIso8601String(),
                        style: TextStyle(
                          color:
                              Colors.grey[600], // Lighter color for timestamp
                          fontSize: 12,
                        ),
                      ),
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
