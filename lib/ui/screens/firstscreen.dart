import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tata_neu/ui/widgets/blocks.dart';
import 'package:tata_neu/ui/widgets/carousel.dart';
import 'package:tata_neu/ui/widgets/fixedheader.dart';
import 'package:tata_neu/ui/widgets/iconslider.dart';
import 'package:tata_neu/ui/widgets/imageiconslider.dart';

class Firstscreen extends ConsumerWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.095,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                margin: EdgeInsets.only(top: 10),
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
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: SinglePinnedHeaderDelegate(),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            CarouselSliderWithDots(),
            IconSlider(
              icons: [
                FontAwesomeIcons.qrcode,
                FontAwesomeIcons.gift,
                FontAwesomeIcons.receipt,
                FontAwesomeIcons.moneyCheck,
                FontAwesomeIcons.shield,
                FontAwesomeIcons.creditCard,
                FontAwesomeIcons.moneyBillTransfer,
                FontAwesomeIcons.barsProgress,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildCategoryRow([
                      'Grocery',
                      'Medicines'
                    ], [
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fgrocery.jpeg?alt=media&token=183a3c27-ab80-4d02-8feb-3f3452bdecdd',
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fmedicine.jpeg?alt=media&token=f7e5564d-6a09-4238-905e-d8b051d599de'
                    ], 'Daily'),
                    Column(
                      children: [
                        buildsinglecategory(
                            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fneuflash.jpeg?alt=media&token=d6048a44-896e-4db7-9ccb-80fcc3955cbc',
                            'NeuFlash'),
                        buildsinglecategory(
                            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Felectronics.jpeg?alt=media&token=e374aadb-78d5-4e2f-b5de-4a61fa0dc5bd',
                            'Electronics'),
                      ],
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCategoryRow([
                        'Insurance',
                        'Card'
                      ], [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Finsurance.jpeg?alt=media&token=6b38f966-5f7b-411d-a0f5-96d102338c94',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fcard.jpeg?alt=media&token=a3ba29ee-5c42-4b7f-b83c-606ccaeb1909'
                      ], 'Finance'),
                      buildCategoryRow([
                        'Hotels',
                        'Flights'
                      ], [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fhotels.jpeg?alt=media&token=a5c42b92-ac7a-4021-b60e-1ebc2b83605e',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fflights.jpeg?alt=media&token=6f29a1b9-f397-44e7-a360-38e14a79be00'
                      ], 'Travel'),
                    ]),
                Imageiconslider(
                  items: [
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Ffashiom.jpeg?alt=media&token=848b0eb9-a516-4126-86bd-d968ca1504cb',
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Ffootware.jpeg?alt=media&token=587628db-54fe-4ee3-8dd5-ad4188cc3d0a',
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fwatches.jpeg?alt=media&token=04e5c5b8-9871-4ad0-8549-86acb28f79eb',
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fjewellary.jpeg?alt=media&token=9c5d06db-6754-40e1-b677-c181afc8dd0c',
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fluxury.jpeg?alt=media&token=b633c7c0-02d3-4be8-bd23-1d63bb5f425d',
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Feyewear.jpeg?alt=media&token=376165a5-2185-4859-b314-2552d2b9413c',
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fbeauty.jpeg?alt=media&token=3c481215-12da-4357-b8ef-1359963bd3f5',
                    'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fhome.jpeg?alt=media&token=e5aabb37-1c9f-48ca-8cb8-2cbc3c05ca5d',
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
