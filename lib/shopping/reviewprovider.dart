import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:tata_neu/review.dart';

final reviewProvider =
    StateNotifierProvider<ReviewNotifier, List<Review>>((ref) {
  return ReviewNotifier();
});

class ReviewNotifier extends StateNotifier<List<Review>> {
  ReviewNotifier() : super([]) {
    _loadReviews();
  }

  Future<void> _loadReviews() async {
    final box = await Hive.openBox<Review>('reviews');
    state = box.values.toList();
  }

  Future<void> deleteReview(String reviewId) async {
    final box = await Hive.openBox<Review>('reviews');
    final reviewToRemove =
        state.firstWhere((review) => review.reviewId == reviewId);
    await box.delete(reviewToRemove.key);
    state = state.where((review) => review.reviewId != reviewId).toList();
  }

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
