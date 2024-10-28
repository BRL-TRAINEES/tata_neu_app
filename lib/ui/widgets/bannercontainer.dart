import 'package:flutter/material.dart';

class Bannercontainer extends StatelessWidget {
  final String text;
  final String largerText;
  final String imageUrl;

  const Bannercontainer({
    Key? key,
    required this.text,
    required this.largerText,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, left: 7, right: 7),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            largerText,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0),
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 155,
          ),
        ],
      ),
    );
  }
}
