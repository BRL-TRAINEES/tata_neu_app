import 'package:hive/hive.dart';

part 'review.g.dart';

@HiveType(typeId: 1)
class Review extends HiveObject {
  @HiveField(0)
  final String reviewId;

  @HiveField(1)
  final String itemId;

  @HiveField(2)
  final String userId;

  @HiveField(3)
  final String reviewText;

  @HiveField(4)
  final DateTime timestamp;

  Review({
    required this.reviewId,
    required this.itemId,
    required this.userId,
    required this.reviewText,
    required this.timestamp,
  });
}
