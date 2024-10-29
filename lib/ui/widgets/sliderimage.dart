import 'package:flutter/material.dart';

Widget sliderlist(List image) {
  return Container(
    height: 250,
    child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: image.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                      image: NetworkImage(image[index]), fit: BoxFit.cover)),
              margin: EdgeInsets.only(left: 10),
              width: 170,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6, top: 4, right: 6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.356),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}
