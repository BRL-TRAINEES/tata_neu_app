import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tata_neu/ui/widgets/bannercontainer.dart';
import 'package:tata_neu/ui/widgets/iconslider.dart';

class Offerscreen extends ConsumerWidget {
  const Offerscreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Offers",
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
                IconSlider(
                  icons: const [
                    FontAwesomeIcons.tv,
                    FontAwesomeIcons.basketShopping,
                    FontAwesomeIcons.hatCowboy,
                    FontAwesomeIcons.moneyBill1Wave,
                    FontAwesomeIcons.wallet,
                    FontAwesomeIcons.hotel,
                    FontAwesomeIcons.heartPulse,
                    FontAwesomeIcons.plane,
                    FontAwesomeIcons.gem,
                    FontAwesomeIcons.clock,
                    FontAwesomeIcons.fileInvoiceDollar
                  ],
                  labels: const [
                    "Electronics",
                    "Grocery",
                    "Fashion",
                    "Loan",
                    "Payments",
                    "Hotels",
                    "Health",
                    "Flight",
                    "Luxury",
                    "Watches",
                    "Tata Pay"
                  ],
                ),
                const Bannercontainer(
                  text: 'Shop and Win',
                  largerText: 'Tata Neu Rewards League',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0012.jpg?alt=media&token=0931103a-8eb2-4d12-999d-cddb796ea75d',
                ),
                const Bannercontainer(
                  text: 'Exclusive deals for you',
                  largerText: 'Grab or gone',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0013.jpg?alt=media&token=58af8548-5d24-4329-8faa-47a74966713a',
                ),
                const Bannercontainer(
                  text: 'Express it with a gift card',
                  largerText: 'Gift card Store',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0011.jpg?alt=media&token=64abc325-def0-4fb3-aff9-62d103852752',
                ),
                const Bannercontainer(
                  text: 'Get a Personal Loan in just 10 minutes!',
                  largerText: 'Get Credit, do more',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0010.jpg?alt=media&token=f5622df8-0b61-461f-8299-c9ae6d7d66f5',
                ),
                const Bannercontainer(
                  text: 'NeuWayToRewards',
                  largerText: 'Credut Card offers',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0009.jpg?alt=media&token=a8591958-f9af-4c48-9475-4ee7d5057248',
                ),
                const Bannercontainer(
                  text: 'Shop and Win',
                  largerText: 'Tata Neu Rewards League',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0012.jpg?alt=media&token=0931103a-8eb2-4d12-999d-cddb796ea75d',
                ),
                const Bannercontainer(
                  text: 'Exclusive offers for Tata Family',
                  largerText: 'Tata Shop Share Smile Offers',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0014.jpg?alt=media&token=c5314ef1-60dc-49ab-bf35-2750c346fc15',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
