import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 253, 253),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 92,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 201, 220, 233),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: FaIcon(
                      icons[index],
                      size: 38,
                    ),
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
