import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tata_neu/ui/widgets/bannercontainer.dart';
import 'package:tata_neu/ui/widgets/iconslider.dart';
import 'package:tata_neu/ui/widgets/sliderimage.dart';

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
                  height: 190,
                ),
                sliderlist([
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0027.jpg?alt=media&token=818f1008-16c8-4dae-a233-0b0a7d79deaf',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0016.jpg?alt=media&token=7beafae4-8a17-481a-9b6d-c4cdea8f35e4',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0018.jpg?alt=media&token=146bfee9-e896-4360-95c4-6edd05496567',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0021.jpg?alt=media&token=a503d739-11b1-464e-9359-d35a10de95cd',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0023.jpg?alt=media&token=c7cf8cd1-18a6-4740-b9cd-8352a5fc3503',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0025.jpg?alt=media&token=7ec08dd3-9c1f-4638-84fa-9eb07f7f8199',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0026.jpg?alt=media&token=b954f582-cf9b-4c8d-99dd-b3a9afbfb0ca',
                  'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2FIMG-20241028-WA0015.jpg?alt=media&token=9b0dc40d-2768-4429-bb2f-6feb61fde072',
                ]),
                const Bannercontainer(
                  text: 'Exclusive deals for you',
                  largerText: 'Grab or gone',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0013.jpg?alt=media&token=58af8548-5d24-4329-8faa-47a74966713a',
                  height: 195,
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
                        'Big brands, bigger discounts',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Our Top brands for you',
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
                const Bannercontainer(
                  text: 'Express it with a gift card',
                  largerText: 'Gift card Store',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0011.jpg?alt=media&token=64abc325-def0-4fb3-aff9-62d103852752',
                  height: 200,
                ),
                const Bannercontainer(
                  text: 'Get a Personal Loan in just 10 minutes!',
                  largerText: 'Get Credit, do more',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0010.jpg?alt=media&token=f5622df8-0b61-461f-8299-c9ae6d7d66f5',
                  height: 200,
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
                        'Pay all bills in one go',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Bills,Recharge & UPI Offers',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      sliderlist([
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2Fpay.jpg?alt=media&token=a0b8289e-03c0-4f89-a6e3-c52e38ef8b80',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fslider%2Fpay2.jpg?alt=media&token=fcc024c5-1eab-483f-95d8-e36aa1f74984',
                      ]),
                    ],
                  ),
                ),
                const Bannercontainer(
                  text: 'NeuWayToRewards',
                  largerText: 'Credut Card offers',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0009.jpg?alt=media&token=a8591958-f9af-4c48-9475-4ee7d5057248',
                  height: 200,
                ),
                const Bannercontainer(
                  text: 'Shop and Win',
                  largerText: 'Tata Neu Rewards League',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0012.jpg?alt=media&token=0931103a-8eb2-4d12-999d-cddb796ea75d',
                  height: 200,
                ),
                const Bannercontainer(
                  text: 'Exclusive offers for Tata Family',
                  largerText: 'Tata Shop Share Smile Offers',
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fbanner%20container%2FIMG-20241028-WA0014.jpg?alt=media&token=c5314ef1-60dc-49ab-bf35-2750c346fc15',
                  height: 180,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
