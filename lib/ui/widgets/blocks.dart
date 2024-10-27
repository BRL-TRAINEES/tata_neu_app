import 'package:flutter/material.dart';

Widget buildCategoryRow(List<String> categories, String title) {
  return Container(
    decoration: BoxDecoration(
        color: const Color.fromARGB(231, 207, 201, 201),
        borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(6),
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: categories
              .map((category) => buildCategoryCard(category))
              .toList(),
        ),
      ],
    ),
  );
}

Widget buildsinglecategory(String title) {
  return Container(
    decoration: BoxDecoration(
        color: const Color.fromARGB(231, 207, 201, 201),
        borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(5),
    padding: const EdgeInsets.only(top: 4.5, bottom: 4.5, left: 10),
    width: 190,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: Icon(Icons.category, color: Colors.deepPurple),
        ),
      ],
    ),
  );
}

Widget buildCategoryCard(String title) {
  return Container(
    width: 85,
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: Icon(Icons.category,
              color: Colors.deepPurple), // Placeholder icon
        ),
        SizedBox(height: 8),
        Text(title, textAlign: TextAlign.center),
      ],
    ),
  );
}
