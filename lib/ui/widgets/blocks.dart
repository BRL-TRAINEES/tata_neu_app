import 'package:flutter/material.dart';
import 'package:tata_neu/ui/widgets/categorynavigate.dart';

class buildCategoryRow extends StatelessWidget {
  final List<String> categories;
  final List<String> imageUrls;
  final String title;
  final List<String> types;

  const buildCategoryRow({
    Key? key,
    required this.categories,
    required this.imageUrls,
    required this.title,
    required this.types,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: BuildCategoryCard(
                    category: categories[index],
                    imageUrl: imageUrls[index],
                    type: types[index],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class buildsinglecategory extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String type;

  const buildsinglecategory({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 253, 253),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(vertical: 4.5, horizontal: 10),
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
          GestureDetector(
            onTap: () {
              navigateToCategory(context, type);
            },
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.grey[200],
              backgroundImage:
                  imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
              child: imageUrl.isEmpty
                  ? const Icon(Icons.category, color: Colors.deepPurple)
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class BuildCategoryCard extends StatelessWidget {
  final String category;
  final String imageUrl;
  final String type;

  const BuildCategoryCard({
    Key? key,
    required this.category,
    required this.imageUrl,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            navigateToCategory(context, type);
          },
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey[200],
            backgroundImage:
                imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
            child: imageUrl.isEmpty ? const Icon(Icons.error, size: 30) : null,
          ),
        ),
        const SizedBox(height: 4),
        Text(category, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
