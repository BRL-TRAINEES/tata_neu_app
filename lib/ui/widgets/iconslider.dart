import 'package:flutter/material.dart';

class IconSlider extends StatelessWidget {
  final List<IconData> icons;
  final List<String> labels;

  const IconSlider({
    Key? key,
    required this.icons,
    required this.labels,
  })  : assert(icons.length == labels.length,
            'Icons and labels must have the same length.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 201, 220, 233),
                      borderRadius: BorderRadius.circular(15)),
                  child: Icon(
                    icons[index],
                    size: 55,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  labels[index],
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
