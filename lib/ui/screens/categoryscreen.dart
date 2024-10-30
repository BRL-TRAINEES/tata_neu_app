import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/ui/widgets/categorysection.dart';

class CategoryScreen extends ConsumerStatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends ConsumerState<CategoryScreen> {
  final ScrollController _scrollController = ScrollController();

  final Map<String, double> sectionOffsets = {
    'Daily': 0.0,
    'Electronics': 300.0,
    'Fashion & Lifestyle': 600.0,
    'Cards & Loans': 900.0,
    'Insurance': 1200.0,
    'Payments': 1500.0,
    'Travel': 1800.0,
    'Do More With Neu': 2100.0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                switch (index) {
                  case 0:
                    return const CategorySection(
                      title: 'Daily',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fgrocery.jpeg?alt=media&token=183a3c27-ab80-4d02-8feb-3f3452bdecdd',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fneuflash.jpeg?alt=media&token=d6048a44-896e-4db7-9ccb-80fcc3955cbc',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Finstant%20grocery.jpeg?alt=media&token=87c3c258-fc9c-4d69-9c47-2f66e317c819',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fothers%2Fmedicine.jpeg?alt=media&token=f7e5564d-6a09-4238-905e-d8b051d599de'
                      ],
                      type: ['Grocery', 'Grocery', 'Grocery', 'Medicines'],
                      labels: [
                        'Grocery',
                        'NeuFlash',
                        'Instant Grocery',
                        'Medicines'
                      ],
                    );
                  case 1:
                    return const CategorySection(
                      title: 'Electronics',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Felectronics.jpeg?alt=media&token=0e23fa40-e54e-4908-ab6f-ca041f5eba1b',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fgadgets.jpeg?alt=media&token=58a794b9-2c3f-40df-8153-e3a74391ad46',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fappliances.jpeg?alt=media&token=52456508-9de0-44ab-8458-1fb0c8f35ce2',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fcroma.jpeg?alt=media&token=b56ebdf6-e114-4dda-a227-0c8c96f3753b'
                      ],
                      labels: [
                        'Mobile',
                        'Gadgets',
                        'TV & Appliances',
                        'Croma Appliances'
                      ],
                      type: [
                        'Electronics',
                        'Electronics',
                        'Electronics',
                        'Electronics'
                      ],
                    );
                  case 2:
                    return const CategorySection(
                      title: 'Fashion & Lifestyle',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Ffashiom.jpeg?alt=media&token=606b3404-035e-4d90-b86d-f95efb68a6bf',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Ffootware.jpeg?alt=media&token=63f5f01f-1075-467e-a4a5-f9d349cb0b0b',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fluxury.jpeg?alt=media&token=96de90e0-f104-4776-a9f6-5e647b0eab5d',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fwatches.jpeg?alt=media&token=a3436334-4abc-4c76-ad6d-610b5b5666df',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fjewellary.jpeg?alt=media&token=d29570d5-a0c9-4f56-817a-ac282c87931d',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fbeauty.jpeg?alt=media&token=4ba2bdcc-a367-405f-aa04-e88815df97d8',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Feyewear.jpeg?alt=media&token=3c280722-1475-43db-91cc-d01f49795af0',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fhome.jpeg?alt=media&token=2aa75014-d1ac-41f7-8553-838c65cfbe9a'
                      ],
                      labels: [
                        'Fashion',
                        'Footwear',
                        'Luxury',
                        'Watches',
                        'Jewellery',
                        'Beauty & Grooming',
                        'Eyewear',
                        'Home',
                      ],
                      type: [
                        'Fashion',
                        'Fashion',
                        'Jewelry',
                        'Jewelry',
                        'Jewelry',
                        'Fashion',
                        'Fashion',
                        'Electronics',
                      ],
                    );
                  case 3:
                    return const CategorySection(
                      title: 'Cards & Loans',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fcard.jpeg?alt=media&token=05e7ae8e-5af2-4e50-9cc1-fd4ad974d8aa',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Floan.jpeg?alt=media&token=3d7d60df-e7ab-4e21-ade5-0eed2b58e0c7',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fpay%20later.jpeg?alt=media&token=62749a36-1804-4807-9467-b8534a5c8252',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fcredit%20score.jpeg?alt=media&token=d5c9f295-3773-4b99-b44f-d9cecfe4a006'
                      ],
                      labels: [
                        'Credit Cards',
                        'personal Loan',
                        'Tata Pay Later',
                        'Free Credit Score'
                      ],
                      type: ['Cards', 'Cards', 'Cards', 'Cards'],
                    );
                  case 4:
                    return const CategorySection(
                      title: 'Insurance',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fcyber.jpeg?alt=media&token=3a118a96-4a6c-4b24-a17e-190304fd626a',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Finvest.jpeg?alt=media&token=2b932173-8e09-4c29-b068-9b90bc117af7',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fdevice%20protection.png?alt=media&token=d3bb2999-ea5a-4456-9cfe-8d03060bc9f6',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2F2%20wheeler.jpeg?alt=media&token=9f36b3ad-00b8-47ea-8b63-1291565ed277',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2F4%20wheeler.jpeg?alt=media&token=6827da00-85c3-4cab-a293-9453661f5621',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fhealth%20insurance.jpeg?alt=media&token=75a2d7e0-ef76-4d8b-8283-4944b71fe40a',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fsuper%20top%20up.jpeg?alt=media&token=52dc707c-6102-4d66-b95c-86e503d19b95',
                      ],
                      labels: [
                        'Cyber',
                        'Invest',
                        'Device Protection',
                        '2 Wheeler Protection',
                        '4 Wheeler Protection',
                        'Health Insurance',
                        'Super Top Up',
                      ],
                      type: [
                        'Cards',
                        'Cards',
                        'Cards',
                        'Cards',
                        'Cards',
                        'Cards',
                        'Cards'
                      ],
                    );
                  case 5:
                    return const CategorySection(
                      title: 'Payments',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fbill.jpeg?alt=media&token=203c08f6-f2b8-45fc-81a1-2cbc08b6fa3c',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fupi.jpeg?alt=media&token=aa021151-85ee-4c0c-81d3-ca8b6c10df8c',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fgift.jpeg?alt=media&token=19f0b4ee-7094-4ce1-8653-74fc14e1f7a4',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Frupay.jpeg?alt=media&token=acd9adb0-237a-4305-b9da-c5ee520cc324'
                      ],
                      labels: [
                        'Bill Payments',
                        'UPI & Card',
                        'Gift Card',
                        'Link Rupay Cards'
                      ],
                      type: ['Cards', 'Cards', 'Cards', 'Cards'],
                    );
                  case 6:
                    return const CategorySection(
                      title: 'Travel',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fhotels.jpeg?alt=media&token=9064898d-4e98-4c97-8f9a-766245a4b1b4',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fflights.jpeg?alt=media&token=04efa620-ac16-4915-8aac-5234c8882122',
                      ],
                      labels: [
                        'Hotels',
                        'Flights',
                      ],
                      type: [
                        'Hotels',
                        'Flights',
                      ],
                    );
                  case 7:
                    return const CategorySection(
                      title: 'Do More With Neu',
                      images: [
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Flabtest.jpeg?alt=media&token=572ed60c-4666-411c-9939-6dbd7e9d0ee9',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Ftata%20play.png?alt=media&token=c7719682-29cc-4ef4-80bb-d873c212b0e2',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Ffitness.jpeg?alt=media&token=385d8ced-d41d-4487-a9a5-c425400ee3ed',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Feat.jpeg?alt=media&token=767eedc3-c9f9-43e5-9c4f-b926fa11ad32',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fmarket.jpeg?alt=media&token=5d3def8b-ecb7-401a-aed2-666ecd8f91e8',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fstories.jpeg?alt=media&token=d9f61370-97e6-499e-8b6c-16664b15b7b9',
                        'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fcategories%20images%2Fgold%20loan.jpeg?alt=media&token=a02bdae9-5d9c-4b1b-80a7-17dba086d6ff',
                      ],
                      labels: [
                        'Lab Tests',
                        'Tata Play',
                        'Fitness',
                        'Eat & Drink',
                        'Market Insights',
                        'Stories',
                        'Gold Loans'
                      ],
                      type: [
                        'Cards',
                        'Cards',
                        'Cards',
                        'Grocery',
                        'Cards',
                        'Cards',
                        'Jewelry',
                      ],
                    );
                  default:
                    return const SizedBox.shrink();
                }
              },
              childCount: sectionOffsets.length,
            ),
          ),
        ],
      ),
    );
  }
}
