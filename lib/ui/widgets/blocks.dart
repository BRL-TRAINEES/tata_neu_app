import 'package:flutter/material.dart';

Widget buildCategoryRow(
    List<String> categories, List<String> imageUrls, String title) {
  return Container(
    height: 170,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 253, 253),
      borderRadius: BorderRadius.circular(10),
    ),
    margin: const EdgeInsets.all(6),
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: buildCategoryCard(categories[index], imageUrls[index]),
              );
            }),
          ),
        ),
      ],
    ),
  );
}

Widget buildsinglecategory(String imageUrl, String title) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 253, 253),
      borderRadius: BorderRadius.circular(10),
    ),
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.only(top: 4.5, bottom: 4.5, left: 10, right: 10),
    width: 190,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey[200],
          backgroundImage: imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
          child: imageUrl.isEmpty
              ? Icon(Icons.category, color: Colors.deepPurple)
              : null,
        ),
      ],
    ),
  );
}

Widget buildCategoryCard(String category, String imageUrl) {
  return Column(
    children: [
      CircleAvatar(
        radius: 35,
        backgroundColor: Colors.grey[200],
        backgroundImage: imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
        child: imageUrl.isEmpty ? Icon(Icons.error, size: 30) : null,
      ),
      const SizedBox(height: 4),
      Text(category, style: const TextStyle(fontSize: 16)),
    ],
  );
}
