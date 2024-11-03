import 'package:hive/hive.dart';

part 'review.g.dart'; // This is required for the generated adapter

@HiveType(typeId: 0)
class Review {
  @HiveField(0)
  final String email;

  @HiveField(1)
  final String text;

  Review({required this.email, required this.text});
}
