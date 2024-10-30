import 'package:flutter/material.dart';
import 'package:tata_neu/ui/widgets/categorynavigate.dart';

class Imageiconslider extends StatelessWidget {
  final List<String> items;
  final List<String> labels;
  final List<String> types;

  const Imageiconslider({
    Key? key,
    required this.items,
    required this.labels,
    required this.types,
  })  : assert(items.length == labels.length,
            'items and labels must have the same length.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 253, 253),
          borderRadius: BorderRadius.circular(10)),
      height: 110,
      margin: EdgeInsets.only(top: 6, right: 15, left: 15, bottom: 6),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          navigateToCategory(context, types[index]);
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(items[index]),
                          child: items[index].isEmpty
                              ? Icon(Icons.category, color: Colors.deepPurple)
                              : null,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(labels[index], textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
