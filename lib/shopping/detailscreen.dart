import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/review.dart';
import 'package:tata_neu/shopping/cartprovider.dart';
import 'package:tata_neu/shopping/cartscreen.dart';
import 'package:tata_neu/shopping/datamodel.dart';
import 'package:hive/hive.dart';

final reviewProvider =
    StateNotifierProvider<ReviewNotifier, List<Review>>((ref) {
  return ReviewNotifier();
});

class ReviewNotifier extends StateNotifier<List<Review>> {
  ReviewNotifier() : super([]);

  Future<void> addReview(Review review) async {
    final box = await Hive.openBox<Review>('reviews');
    await box.add(review);
    state = [...state, review];
  }

  Future<List<Review>> getReviewsByItemId(String itemId) async {
    final box = await Hive.openBox<Review>('reviews');
    return box.values.where((review) => review.itemId == itemId).toList();
  }
}

class DetailsScreen extends ConsumerWidget {
  final Item item;

  DetailsScreen({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviewController = TextEditingController();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 50,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Price: ₹${item.price}',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ref.read(cartProvider.notifier).addToCart(item);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Added to Cart'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      ),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      item.description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: reviewController,
                    decoration: InputDecoration(
                      labelText: 'Enter your review',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        final reviewText = reviewController.text;
                        if (reviewText.isNotEmpty) {
                          final newReview = Review(
                            reviewId: UniqueKey().toString(),
                            itemId: item.id,
                            userId: 'user@example.com',
                            reviewText: reviewText,
                            timestamp: DateTime.now(),
                          );
                          await ref
                              .read(reviewProvider.notifier)
                              .addReview(newReview);
                          reviewController.clear();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Review submitted.')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ),
                      child: Text(
                        'Submit Review',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'User Reviews',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  FutureBuilder<List<Review>>(
                    future: ref
                        .read(reviewProvider.notifier)
                        .getReviewsByItemId(item.id),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return Text('No reviews yet.');
                      }

                      final reviews = snapshot.data!;

                      return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: reviews.length,
                        itemBuilder: (context, index) {
                          final review = reviews[index];
                          return Container(
                            margin: EdgeInsets.only(bottom: 12),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  review.reviewText,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black87),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'By ${review.userId}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
