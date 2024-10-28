import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tata_neu/ui/widgets/bannercontainer.dart';
import 'package:tata_neu/ui/widgets/blocks.dart';
import 'package:tata_neu/ui/widgets/carousel.dart';
import 'package:tata_neu/ui/widgets/fixedheader.dart';
import 'package:tata_neu/ui/widgets/grid.dart';
import 'package:tata_neu/ui/widgets/iconslider.dart';
import 'package:tata_neu/ui/widgets/imageiconslider.dart';
import 'package:tata_neu/ui/widgets/sliderimage.dart';

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
                ),
                Bannercontainer(
                    height: 190,
                    text: 'Unbeatable deals & discounts',
                    largerText: 'In Spotlight',
                    imageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2Fbanner.jpg?alt=media&token=44faa171-3e23-4597-afa5-adc8958a7da9'),
                sliderlist([
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0015.jpg?alt=media&token=9b0dc40d-2768-4429-bb2f-6feb61fde072',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0025.jpg?alt=media&token=7ec08dd3-9c1f-4638-84fa-9eb07f7f8199',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0026.jpg?alt=media&token=b954f582-cf9b-4c8d-99dd-b3a9afbfb0ca',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0029.jpg?alt=media&token=a4658709-fdbc-4e76-bf55-e778b9b3d73b',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0031.jpg?alt=media&token=195949a0-22bc-4079-a7e1-59f467db8ce8',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0033.jpg?alt=media&token=5acb3762-c079-4d87-b924-81b5c130bbd6',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0032.jpg?alt=media&token=749e8c64-4182-4e0a-8191-c6696bd1a0f7',
                ]),
                Bannercontainer(
                    height: 190,
                    text: 'Crazy deals for you',
                    largerText: 'Festive offer bonanza',
                    imageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2Fbanner2.jpg?alt=media&token=1ddc8b2f-5665-42ca-a780-81a758af1579'),
                grid([
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0044.jpg?alt=media&token=6d6a3504-6af9-4866-bae8-abda407123a4',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0039.jpg?alt=media&token=e95370a7-02c6-442c-b72d-11ee5ff1b270',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0043.jpg?alt=media&token=decfdbba-f682-486d-8d2c-ab0a5ab389b9',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0042.jpg?alt=media&token=33446f9b-ff85-4542-9f23-20c2c23472e5',
                ]),
                sliderlist([
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0040.jpg?alt=media&token=e31a1973-5847-44e0-a1db-4c57a262a451',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0041.jpg?alt=media&token=996c956e-a8ab-44d5-9099-8a3295f765a1',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0044.jpg?alt=media&token=6d6a3504-6af9-4866-bae8-abda407123a4',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fgrid%2FIMG-20241028-WA0042.jpg?alt=media&token=33446f9b-ff85-4542-9f23-20c2c23472e5',
                ])
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
