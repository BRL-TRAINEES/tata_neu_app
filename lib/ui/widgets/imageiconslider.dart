import 'package:flutter/material.dart';

class Imageiconslider extends StatelessWidget {
  final List<IconData> items;
  final List<String> labels;

  const Imageiconslider({
    Key? key,
    required this.items,
    required this.labels,
  })  : assert(items.length == labels.length,
            'items and labels must have the same length.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(231, 207, 201, 201),
          borderRadius: BorderRadius.circular(10)),
      height: 110,
      margin: EdgeInsets.all(7),
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
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.category, color: Colors.deepPurple),
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
