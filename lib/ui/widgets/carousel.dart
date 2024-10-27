import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final imageProvider = Provider<List<String>>((ref) {
  return [
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F1.jpg?alt=media&token=7c9fadb8-31b5-4c6d-b537-f178624106fc',
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F2.jpg?alt=media&token=659d0889-bb09-4e1c-bd42-0dac75280243',
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F3.jpg?alt=media&token=51addd2e-ec89-446b-bc6f-027e67b04424',
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F4.jpg?alt=media&token=09b504bb-b328-43ed-ba6a-5290e6765161',
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F5.jpg?alt=media&token=4a779466-db17-4caf-94dd-9e2a6dc02b44',
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F6.jpg?alt=media&token=4f38ecf1-f221-4f27-8189-54327aa3221f',
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F7.jpg?alt=media&token=3aef6889-0c62-47c8-9e54-5e794692585f',
    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcarouselimages%2F8.jpg?alt=media&token=041d2be2-79fb-4ad0-a1b3-f5c7b8fa5416',
  ];
});

final currentIndexProvider = StateProvider<int>((ref) => 0);

class CarouselSliderWithDots extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageUrls = ref.watch(imageProvider);
    final currentIndex = ref.watch(currentIndexProvider);

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            initialPage: 0,
            autoPlay: true,
            onPageChanged: (index, reason) {
              ref.read(currentIndexProvider.notifier).state = index;
            },
          ),
          items: imageUrls.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.error),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 16.0),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: imageUrls.length,
          effect: ExpandingDotsEffect(
            activeDotColor: const Color.fromARGB(255, 0, 0, 0),
            dotColor: Colors.grey,
            dotHeight: 3.0,
            dotWidth: 8.0,
            spacing: 4.0,
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
