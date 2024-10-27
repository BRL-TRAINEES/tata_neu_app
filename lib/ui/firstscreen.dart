import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/ui/widgets/blocks.dart';
import 'package:tata_neu/ui/widgets/carousel.dart';
import 'package:tata_neu/ui/widgets/iconslider.dart';
import 'package:tata_neu/ui/widgets/imageiconslider.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

class Firstscreen extends ConsumerWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined), label: 'Neupass'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: 'Offers'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Account'),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.1,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white30,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Ftata%20neu%20logo.png?alt=media&token=4c5dbe58-581c-4b48-9444-07deadb15f41',
                          width: 40,
                        ),
                      ),
                      SizedBox(width: 8),
                      const Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 30)),
                          Text(
                            'Earn Upto 5%',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 49, 48, 48)),
                          ),
                          Text('NeuCoins',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)))
                        ],
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person_2_outlined)),
                      ElevatedButton(onPressed: () {}, child: Text('Finance'))
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 50,
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 127, 219, 56)),
            ),
            Container(
              height: 25,
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 191, 157, 54)),
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSliderWithDots(),
            IconSlider(
              icons: [
                Icons.qr_code_outlined,
                Icons.card_giftcard_outlined,
                Icons.receipt_long_outlined,
                Icons.monetization_on_outlined,
                Icons.shield_outlined,
                Icons.credit_card_outlined,
                Icons.send_outlined,
                Icons.bar_chart_outlined,
              ],
              labels: [
                "Scan & Pay",
                "Gift Cards",
                "Pay Bills",
                "Loans",
                "Insuarance",
                "Credit Card",
                "Send Money",
                "Credit Score",
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    buildCategoryRow(['Grocery', 'Medicines'], 'Daily'),
                    Column(
                      children: [
                        buildsinglecategory('NeuFlash'),
                        buildsinglecategory('Electronics'),
                      ],
                    )
                  ],
                ),
                Row(children: [
                  buildCategoryRow(['Insurance', 'Card'], 'Finance'),
                  buildCategoryRow(['Hotels', 'Flights'], 'Travel'),
                ]),
                Imageiconslider(
                  items: [
                    Icons.qr_code_outlined,
                    Icons.card_giftcard_outlined,
                    Icons.receipt_long_outlined,
                    Icons.monetization_on_outlined,
                    Icons.shield_outlined,
                    Icons.credit_card_outlined,
                    Icons.send_outlined,
                    Icons.bar_chart_outlined,
                  ],
                  labels: [
                    "Fashion",
                    "Footwear",
                    "Watches",
                    "Jewellery",
                    "Luxury",
                    "Eyewear",
                    "Beauty",
                    "Home",
                  ],
                )
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
