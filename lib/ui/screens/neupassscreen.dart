import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tata_neu/ui/widgets/bannercontainer.dart';

import 'package:tata_neu/ui/widgets/sliderimage.dart';

class Neupassscreen extends ConsumerWidget {
  const Neupassscreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NeuPass",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2FIMG-20241028-WA0045.jpg?alt=media&token=4ff7857f-cf1a-412b-bf77-0f46a1aaf027'))),
                ),
                SizedBox(
                  height: 10,
                ),
                const Bannercontainer(
                  height: 110,
                  text: '1 NeuCoin = 1 rs',
                  largerText: 'My NeuCoins',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2FIMG-20241028-WA0038.jpg?alt=media&token=c926133a-956d-4eb7-9381-9503f5027f35',
                ),
                const Bannercontainer(
                  height: 190,
                  text: 'Shop and Win',
                  largerText: 'Tata Neu Rewards League',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2FIMG-20241028-WA0046.jpg?alt=media&token=af81e08f-be6b-448f-9360-cbb67893434d',
                ),
                const Bannercontainer(
                  height: 200,
                  text: 'Get discount on products using your NeuCoins',
                  largerText: 'Use your NeuCoins',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2FIMG-20241028-WA0008.jpg?alt=media&token=337bff99-9a6a-4b59-8530-ca469935d513',
                ),
                const Bannercontainer(
                  height: 190,
                  text: 'Unbeatable deals & discounts',
                  largerText: 'In Spotlight',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2Fbanner.jpg?alt=media&token=44faa171-3e23-4597-afa5-adc8958a7da9',
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, left: 7, right: 7),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Earn assured NeuCoins on these amazing deals',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'don\'t miss out',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      sliderlist([
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0017.jpg?alt=media&token=392cdfff-78cf-4c5b-b6cc-a8a1c1ba4087',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0031.jpg?alt=media&token=195949a0-22bc-4079-a7e1-59f467db8ce8',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0033.jpg?alt=media&token=5acb3762-c079-4d87-b924-81b5c130bbd6',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0019.jpg?alt=media&token=e651519b-4a10-4259-b83e-d907e0e9deb7',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0022.jpg?alt=media&token=493c3814-4e91-4d4b-9bf8-ea5c76ec6ddb',
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
