import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/shopping/datamodel.dart';

final groceryItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '1',
        name: 'Mosambi 1 kg',
        description:
            'The Sweet Lime or Mosambi is a tropical citrus fruit native to India. Mosambi is a round citrus fruit with finely-textured skins that are yellowish-orange in colour, just like their pulp. It has a delightful fragrance and delicately sweet taste. Its bright green and smooth skin and knobbly shape are the most recognizable characteristics of this fruit. Mosambi can be used to add a sweet citrusy flavour to salads, soups, curries, seafood stews and more. Ideal for making drinks, cakes, puddings and desserts, cakes, jams and jellies, pies and ice creams. They can also be eaten as a snack - just peel and enjoy. So, go ahead, buy Mosambi 1 kg online now!',
        price: 70.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmosambi.jpeg?alt=media&token=43b8044e-8609-4b38-8f7e-5055d0d58b4f'),
    Item(
        id: '2',
        name: 'Apple 4pcs',
        description:
            'Spoil yourself with the luscious and mouth-watering Red Delicious Apple. Red Delicious Apples are known for their distinct, smooth texture and divinely sweet crispness. The colour of the skin is beautiful, blushed red. The flesh is greenish white and firm while still preserving a delicate texture. Stunningly delicious and crisp, Red Delicious Apples are a healthy way to satisfy your taste buds. Whether eaten fresh or used in sauces, pies, or baked in desserts, Red Delicious Apples are the perfect addition to any meal. So, go ahead, buy Apple Red Delicious 4 pcs (Approx 550 g - 700 g) online now!',
        price: 110.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fapple.jpeg?alt=media&token=37cbb263-980a-448e-ae25-89cd8a74dca3'),
    Item(
        id: '3',
        name: 'Yellaki Banana 1kg ',
        description:
            'Yellaki Banana is a dwarf-sized aromatic and sweet variety of bananas most popular in South India. It has a thin skin, firm flesh, and the flavour of regular bananas but with a touch of natural sweetness. You can enjoy it raw in desserts or salads or use it to make a creamy, smooth paste that is wonderful when combined with a variety of different cuisines. So, go ahead, buy Banana Yellaki 1 kg online now!',
        price: 60.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fbanana.jpeg?alt=media&token=cbe26987-b135-4bc6-aeb2-09893bca688f'),
    Item(
        id: '4',
        name: 'Onion 1 kg',
        description:
            'The beauty of an Onion is that it can go just about anywhere. Cut it into thin slices to top off your favourite burger or hot dog, or chop it into little cubes to bring out the sweetness in curry dishes. Chopped Onions are perfect for fish dishes, quiche, stews and chili. Onions can be roasted whole until tender and then chopped, or caramelized by slowly cooking them in butter for a delicious treat for a delicious treat. They are also delicious when dipped in batter and deep-fried! So, go ahead, buy Onion 1 kg online now!',
        price: 65.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fonion.jpeg?alt=media&token=34568d82-3942-4057-8a96-327542c6d0f6'),
    Item(
        id: '5',
        name: 'Potato 1 kg',
        description:
            'Potato is a root vegetable and the most versatile of all. It is widely used across Indian kitchens paired with numerous other vegetables for preparation of several delicacies. Be it Brinjal, Cauliflower, Tomato, Onion or be it Soyabean Chunks or the Spinach clan- Potatoes goes with all for delicious cuisines. Buy Potato per kg online now.',
        price: 40.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fpotato.jpeg?alt=media&token=bfccdacf-7586-4772-abcb-d334b9e8f25b'),
    Item(
        id: '6',
        name: 'Aashirvaad Aata 10kg',
        description:
            'Behind every Aashirvaad pack are the Indian farmers and Aashirvaad experts who have made the atta with extra care. The 4-step advantage process of sourcing, cleaning, and grinding ensures zero human contact with the atta. Aashirvaad prides itself in making pure whole wheat atta with all its natural dietary fibers intact which ensures that you and your family receive optimum nutrition for a healthy life. Directly sourced from a wide network of Indian rural farmers, Aashirvaad Shudh Whole Wheat Chakki Atta is Made in India. ',
        price: 495.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Faata.jpeg?alt=media&token=913c63b2-2e35-45c1-a4ac-25240642a3e2'),
    Item(
        id: '7',
        name: 'Amul Milk 500ml',
        description:
            'Milk is the most common dairy product that is used every day by almost everyone. Consume directly or add to your breakfast cereal, daily tea/coffee, milkshake and smoothies or other baked goods, desserts and puddings. So go ahead and buy Amul Gold Homogenised Standardised Milk online today.',
        price: 34.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmilk.jpeg?alt=media&token=78b3e9c2-5528-4e01-817f-4ac59765724a'),
    Item(
        id: '8',
        name: 'Amul Cheese 200 g ',
        description:
            'Cheese is a dairy product, derived from milk and produced in wide ranges of flavours, textures and forms by coagulation of the milk protein, Casein. It comprises of milk proteins and fats. Cheese can give a lip-smacking flavour to every dish, you can either consume it whole, melt it in your food or shred it on salads and sandwiches. So go ahead and buy Amul Cheese Chiplets online today.',
        price: 125.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcheese.jpeg?alt=media&token=f2c2b50e-adeb-4a59-aa69-0278670220c9'),
    Item(
        id: '9',
        name: 'Britannia Bread 450 g',
        description:
            'Make delicious sandwiches with Britannia 100% Whole Wheat Bread 450 g. This bread is ideal to dip in milk and eat, or toast it till golden brown with butter on top. Made from the finest ingredients, it is baked to perfection to make it soft and spongy. Go ahead, buy this product online now!',
        price: 55.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fbread.jpeg?alt=media&token=7f1fd521-8ecb-4fe8-b9c8-9b3a91a177e0'),
    Item(
        id: '10',
        name: 'Haldiram Bhujia 1kg',
        description:
            'Haldiram Delhi is an Indian food company manufacturing a variety of traditional and western sweets, snacks, namkeens, etc. Haldiram Delhi Aloo Bhujia is a crunchy, tasty and flavourful snack that brings you an authentic taste originated from Bikaner. Comes from the perfection of making Bhujia using quality ingredients. The crispy texture and combination of spices gives you a great taste. Buy this product online today!',
        price: 109.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fbhujia.jpeg?alt=media&token=58547c67-addd-4365-8caa-5f157df0f744'),
  ];
});

final electronicsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '11',
        name: 'Apple iPhone 13',
        description:
            'We designed a totally new architecture and turned the lenses 45 degrees to fit in our best dual-camera system ever with its biggest Wide camera sensor. We also made room for our sensor-shift optical image stabilisation. And we equipped the Ultra Wide camera with a faster sensor.',
        price: 44000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fiphone%2013.jpeg?alt=media&token=de07f4a7-8a17-4ce1-ac06-236a05d07b4d'),
    Item(
        id: '12',
        name: 'Bajaj Mixer Grinder',
        description:
            'This appliance consumes 500 W power function. Besides, it is equipped with an automatic shut-off feature and a motor overload protector.',
        price: 5999.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmixer.jpeg?alt=media&token=3d41af36-4c2c-4d65-9ec6-4f2dc30ed364'),
    Item(
        id: '13',
        name: 'Apple M2 Chip ',
        description:
            'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all-aluminium enclosure. It\'s the ultra-fast, ultra-capable laptop that lets you work, play or create just about anything - anywhere.',
        price: 80000.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fm2.jpeg?alt=media&token=77ea055c-13ee-405b-bd52-a6da511d042b'),
    Item(
        id: '14',
        name: 'Samsung LED TV',
        description:
            'Your favorite TV programs and movies get real. The rich and vivid Full HD resolution with twice the resolution of HD TV. High-Dynamic Range levels up bright expression of your TV, so you can enjoy an immense spectrum of colors and visual details, even in dark scenes.',
        price: 25000.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fled.jpeg?alt=media&token=223fe94b-747b-49f3-8eaa-5e07ecdfa998'),
    Item(
        id: '15',
        name: 'Voltas 1.5 ton AC',
        description:
            'Voltas 1.5 Ton 3 Star 183 Vectra Magnum 4 in 1 Convertible Inverter Split AC, White. 	Inter Connecting pipe, Remote, Manual, Warranty card, 2 x batteries, Inter Connecting wire',
        price: 33000.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fac.jpeg?alt=media&token=6a2602a1-2452-49a7-9347-a76f795ba105'),
    Item(
        id: '16',
        name: 'LG refrigerator',
        description:
            'Unmatched performance, great savings and super silent operation; the New Smart Inverter Compressor is thoughtfully designed to provide added convenience to you. ',
        price: 16500.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Frefrigirator.jpeg?alt=media&token=cb24fb46-beb3-4e70-af6f-4ab9682184c7'),
    Item(
        id: '17',
        name: 'Whirlpool Washing Machine',
        description:
            'Whirlpool 7.5 Kg Fully-Automatic Top Loading Washing Machine, Grey, SW PRO H . 1N Inlet Pipe, 1N Detergent Cup, 1N Rat Mesh, 1N Drain Pipe, 1N Drain Hose with Clamp',
        price: 34.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwashing%20machine.jpeg?alt=media&token=9cc376d9-a872-4b76-bf03-a7a22b9a20d5'),
    Item(
        id: '18',
        name: 'Sony PlayStation 5',
        description:
            'The PS5 console unleashes new gaming possibilities that you never anticipated. Experience lightning-fast loading with an ultra-high-speed SSD and an amazing world of immersive gaming with a deeper gaming experience and haptic feedback.',
        price: 49999.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fps5.jpeg?alt=media&token=823b3d35-f2b6-4dc8-b9b5-533b8efe65b1'),
    Item(
        id: '19',
        name: 'Dell XPS 13 Laptop',
        description:
            'The XPS 13 laptop is engineered with a stunning InfinityEdge display, delivering an immersive viewing experience. Featuring the latest Intel processors, this laptop ensures high performance and portability.',
        price: 95000.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fdell.jpeg?alt=media&token=15bf4014-7f2b-4a11-8af2-c88a82a78226'),
    Item(
        id: '20',
        name: 'Fitbit Charge 5',
        description:
            'The Fitbit Charge 5 helps you make the most of every moment with built-in GPS, a daily readiness score, and stress management tools. Monitor your health metrics with an advanced health and fitness tracker.',
        price: 14999.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Ffitbit.jpeg?alt=media&token=3d353779-c5e1-46dc-962a-829f1f6c94e1'),
  ];
});

final jewelryItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '21',
        name: 'Gold Necklace',
        description:
            'An elegant 18K gold necklace featuring a delicate chain and a beautifully crafted pendant. Perfect for everyday wear or special occasions, this necklace adds a touch of sophistication to any outfit.',
        price: 70000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fgold%20neck.jpeg?alt=media&token=6ed7e9eb-5a20-44fe-868d-99c8f158602c'),
    Item(
        id: '22',
        name: 'Diamond Ring',
        description:
            'Stunning diamond ring with a brilliant cut stone, perfect for engagements or special occasions.',
        price: 120000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fdiamond%20ring.jpeg?alt=media&token=0cd927aa-c943-43c6-94d1-7160fb83938f'),
    Item(
        id: '23',
        name: 'Silver Bracelet',
        description:
            'A classic silver bracelet with intricate detailing, ideal for everyday wear.',
        price: 40000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fsilver%20bracelet.jpeg?alt=media&token=f0630471-93ba-4f57-a865-16639674a6be'),
    Item(
        id: '24',
        name: 'Pearl Earrings',
        description:
            'Beautiful pearl earrings that add a touch of elegance to any outfit.',
        price: 80000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fpearl%20earrings.jpeg?alt=media&token=4d87b3bd-41cb-4f44-af69-fdb95fa0c325'),
    Item(
        id: '25',
        name: 'Platinum Watch',
        description:
            'Luxury platinum watch with diamond accents and a sleek design for timeless style.',
        price: 540000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fplatinum%20watch.jpeg?alt=media&token=7a17dafb-8c24-4751-aab3-e4d1eb42d960'),
    Item(
        id: '26',
        name: 'Ruby Pendant',
        description:
            'Exquisite ruby pendant set in gold, perfect for formal occasions.',
        price: 87000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2FRuby%20Pendant.jpeg?alt=media&token=cfb7019a-a7f5-4463-bf8b-9c0daac4f797'),
    Item(
        id: '27',
        name: 'Sapphire Brooch',
        description:
            'Elegant sapphire brooch that adds a royal touch to your attire.',
        price: 55000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2FSapphire%20Brooch.jpeg?alt=media&token=62916c34-3be4-4864-9e3e-a1befa036272'),
    Item(
        id: '28',
        name: 'Titanium Ring',
        description:
            'Durable titanium ring with a matte finish, perfect for both men and women.',
        price: 9000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2FTitanium%20Ring.jpeg?alt=media&token=d0eee2f4-8f9c-4244-b977-f23cac88cf82'),
    Item(
        id: '29',
        name: 'Emerald Bracelet',
        description:
            'Gorgeous emerald bracelet that adds a pop of color and sophistication to any outfit.',
        price: 25000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2FEmerald%20Bracelet.jpeg?alt=media&token=64c4d8e9-5e35-418d-b21a-ae1ff04e8cb0'),
    Item(
        id: '30',
        name: 'Vintage Brooch',
        description:
            'Unique vintage brooch with a floral design, perfect for collectors and fashion enthusiasts.',
        price: 68000.00,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2FVintage%20Brooch.jpeg?alt=media&token=c301618a-fad8-4b80-8296-b451c7f1e57b'),
  ];
});

final hotelsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '31',
        name: 'Hotel Paradise',
        description:
            'Enjoy a luxury hotel stay at Hotel Paradise, located in the heart of the city. Experience exquisite accommodations, including a spacious room with stunning views, complimentary breakfast, and access to premium amenities like the spa and fitness center. Price is for a one-night stay.',
        price: 800.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel1.jpeg?alt=media&token=af8a710a-ec21-4b28-aa8d-2b399e4432fb'),
    Item(
        id: '32',
        name: 'Seaside Resort',
        description:
            'Relax at Seaside Resort, a beachfront hotel offering stunning ocean views. Enjoy modern rooms, a private beach, and a full-service restaurant. Price is for a one-night stay.',
        price: 1200.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel2.jpeg?alt=media&token=31a15bbf-f29d-4988-ac1c-edaea90f2172'),
    Item(
        id: '33',
        name: 'Mountain Retreat',
        description:
            'Escape to Mountain Retreat, nestled in the hills. Enjoy cozy accommodations with fireplaces, outdoor activities, and complimentary breakfast. Price is for a one-night stay.',
        price: 600.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel3.jpeg?alt=media&token=87245072-7a7c-41b8-bd73-11cab62cbef3'),
    Item(
        id: '34',
        name: 'City Center Inn',
        description:
            'Stay at City Center Inn, offering convenient access to local attractions. Features include modern rooms, free Wi-Fi, and a fitness center. Price is for a one-night stay.',
        price: 550.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel4.jpeg?alt=media&token=d3b60825-e4aa-4dc2-af65-f28a419b3155'),
    Item(
        id: '35',
        name: 'Luxury Spa Hotel',
        description:
            'Indulge in relaxation at Luxury Spa Hotel, featuring a full-service spa, gourmet dining, and plush accommodations. Perfect for a rejuvenating getaway. Price is for a one-night stay.',
        price: 2500.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel5.jpeg?alt=media&token=f2f9ad08-1f30-4760-b21b-f600a7dfbb53'),
    Item(
        id: '36',
        name: 'Eco-Friendly Lodge',
        description:
            'Experience sustainability at Eco-Friendly Lodge, surrounded by nature. Enjoy organic meals, nature trails, and comfortable lodging. Price is for a one-night stay.',
        price: 700.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel6.jpeg?alt=media&token=efeb1db4-d17a-4214-b45a-d04abe00b195'),
    Item(
        id: '37',
        name: 'Heritage Hotel',
        description:
            'Discover charm at Heritage Hotel, a beautifully restored building with antique decor, fine dining, and guided tours of local history. Price is for a one-night stay.',
        price: 1200.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel7.jpeg?alt=media&token=b838e061-95bc-4193-ac7a-46c806f86049'),
    Item(
        id: '38',
        name: 'Business Hotel',
        description:
            'Ideal for business travelers, Business Hotel offers meeting rooms, high-speed internet, and comfortable accommodations. Conveniently located near corporate offices. Price is for a one-night stay.',
        price: 950.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel8.jpeg?alt=media&token=5604e9a8-b598-47bd-b694-d1febdce9e9e'),
    Item(
        id: '39',
        name: 'Family-Friendly Resort',
        description:
            'Enjoy family fun at Family-Friendly Resort, featuring spacious suites, kids’ activities, and a water park. Perfect for a memorable family vacation. Price is for a one-night stay.',
        price: 1600.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel9.jpeg?alt=media&token=9d75f25e-4f6b-4c6c-a58d-9b77086dd88f'),
    Item(
        id: '40',
        name: 'Boutique Hotel',
        description:
            'Stay at Boutique Hotel, known for its unique decor and personalized service. Enjoy stylish rooms and a trendy bar on-site. Price is for a one-night stay.',
        price: 1800.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fhotel10.jpeg?alt=media&token=239831e2-79fe-42eb-a31f-2e687e019e1e'),
  ];
});

final fashionItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '41',
        name: 'Designer Shirt',
        description:
            'A premium designer shirt made from 100% cotton with a tailored fit. Perfect for both formal and casual occasions, this shirt combines style with comfort.',
        price: 800.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fshirt.jpeg?alt=media&token=794db261-49b3-46bc-b014-7ef5d0548c58'),
    Item(
        id: '42',
        name: 'Silk Kurta',
        description:
            'An elegant silk kurta, ideal for festive occasions and celebrations. This traditional outfit features intricate embroidery and a comfortable fit.',
        price: 1200.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fkurta.jpeg?alt=media&token=ab76f6b8-283d-44b7-97a5-aeed1e4ce88e'),
    Item(
        id: '43',
        name: 'Slim Fit Jeans',
        description:
            'Stylish slim fit jeans made from high-quality denim. These jeans provide a modern silhouette and are versatile enough for casual or semi-formal wear.',
        price: 700.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fjeans.jpeg?alt=media&token=b7f02d30-ae96-4048-9eaf-99e50b09eb55'),
    Item(
        id: '44',
        name: 'Woolen Sweater',
        description:
            'A cozy woolen sweater, perfect for chilly weather. This classic piece features a ribbed neckline and cuffs, providing warmth without compromising on style.',
        price: 600.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fsweater.jpeg?alt=media&token=00865c9a-f7b0-4bbe-9393-cfdcfb015f4f'),
    Item(
        id: '45',
        name: 'Casual Linen Shirt',
        description:
            'A lightweight casual linen shirt, ideal for summer days. This breathable fabric ensures comfort and style, making it a wardrobe essential.',
        price: 500.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Flinen%20shirt.jpeg?alt=media&token=ef6d5d64-4e94-42bc-ae29-b7c80ef5f607'),
    Item(
        id: '46',
        name: 'Tailored Blazer',
        description:
            'A chic tailored blazer, perfect for elevating any outfit. Made from high-quality fabric, it offers a sharp silhouette for both professional and casual settings.',
        price: 2500.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fblazer.jpeg?alt=media&token=ddd7e16c-9c48-47b1-ad52-e083b6ecde54'),
    Item(
        id: '47',
        name: 'Ethnic Sherwani',
        description:
            'A stunning ethnic sherwani designed for weddings and special occasions. Crafted from rich fabric with intricate embroidery, it embodies traditional elegance.',
        price: 3200.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fsherwani.jpeg?alt=media&token=8a615e3a-f40a-4c82-9df1-fad692dfa4db'),
    Item(
        id: '48',
        name: 'Cargo Pants',
        description:
            'Functional cargo pants with multiple pockets, designed for comfort and utility. Made from durable fabric, they are perfect for outdoor activities or casual wear.',
        price: 900.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcargo.jpeg?alt=media&token=32c70d3a-9b09-4d7d-ad95-cbe85a52804f'),
    Item(
        id: '49',
        name: 'Graphic T-Shirt',
        description:
            'A trendy graphic t-shirt made from soft cotton fabric. This casual piece features unique artwork, perfect for adding a pop of personality to your outfit.',
        price: 550.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Ftshirt.jpeg?alt=media&token=dae96666-fb71-4051-8ab9-f4938cc8c1f6'),
    Item(
        id: '50',
        name: 'Chinos',
        description:
            'Stylish chinos that offer a comfortable fit and versatility for both casual and smart-casual occasions. Made from high-quality fabric for durability.',
        price: 1100.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fchinos.jpeg?alt=media&token=ad8c93e7-00b5-43d3-a7ba-5a4744dfb986'),
  ];
});

final flightsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '51',
        name: 'Flight to New York',
        description:
            'Non-stop flight from Los Angeles to New York. Departure: 10:00 AM, Arrival: 6:00 PM. Duration: 6 hours. Enjoy in-flight meals and entertainment.',
        price: 800.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fnewyork.jpeg?alt=media&token=13c3a129-7207-4fe6-bfc1-91dda10037a1'),
    Item(
        id: '52',
        name: 'Flight to London',
        description:
            'Round-trip flight from San Francisco to London. Departure: 5:00 PM, Arrival: 10:00 AM (next day). Duration: 10 hours. Includes two checked bags and complimentary meals.',
        price: 1200.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Flondon.jpeg?alt=media&token=fa36a7cb-aa8b-4ae0-acb8-75be241e0d1d'),
    Item(
        id: '53',
        name: 'Flight to Tokyo',
        description:
            'One-way flight from Seattle to Tokyo. Departure: 1:00 PM, Arrival: 4:00 PM (next day). Duration: 12 hours. Features in-flight Wi-Fi and snacks.',
        price: 1500.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Ftokyo.jpeg?alt=media&token=70417841-3b49-4794-92af-7b0dcaf429c7'),
    Item(
        id: '54',
        name: 'Flight to Sydney',
        description:
            'Direct flight from Los Angeles to Sydney. Departure: 8:30 PM, Arrival: 6:00 AM (next day). Duration: 15 hours. Includes in-flight entertainment and meals.',
        price: 2500.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fsydney.jpeg?alt=media&token=7ee24a57-5d7f-4ff6-be4b-02429a944c50'),
    Item(
        id: '55',
        name: 'Flight to Paris',
        description:
            'Round-trip flight from New York to Paris. Departure: 9:00 AM, Arrival: 11:00 PM. Duration: 8 hours. Includes complimentary wine and snacks.',
        price: 2200.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fparis.jpeg?alt=media&token=8d762f03-ca03-4caf-8334-2633fc98bce9'),
    Item(
        id: '56',
        name: 'Flight to Dubai',
        description:
            'One-way flight from Houston to Dubai. Departure: 3:00 AM, Arrival: 8:00 PM. Duration: 14 hours. Enjoy in-flight duty-free shopping and meals.',
        price: 3000.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fdubai.jpeg?alt=media&token=e8984387-71c6-4881-9e2b-6bd4ed3c09ea'),
    Item(
        id: '57',
        name: 'Flight to Toronto',
        description:
            'Non-stop flight from Chicago to Toronto. Departure: 6:00 AM, Arrival: 9:00 AM. Duration: 3 hours. Includes breakfast and free Wi-Fi.',
        price: 600.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Ftoronto.jpeg?alt=media&token=d1ee1dac-bc34-4ae5-bbb4-807ee9fd9cb1'),
    Item(
        id: '58',
        name: 'Flight to Bangkok',
        description:
            'Round-trip flight from Los Angeles to Bangkok. Departure: 11:00 AM, Arrival: 5:00 PM (next day). Duration: 18 hours. Features in-flight entertainment and meals.',
        price: 4000.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fbangkok.jpeg?alt=media&token=ec886cd8-6261-4cdd-bb89-c1a2b95d255c'),
    Item(
        id: '59',
        name: 'Flight to Rome',
        description:
            'Direct flight from Miami to Rome. Departure: 4:00 PM, Arrival: 7:00 AM (next day). Duration: 10 hours. Includes complimentary meals and wine.',
        price: 1700.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Frome.jpeg?alt=media&token=7739a1fd-e9b6-49ed-9bd1-5a6e11a1c9eb'),
    Item(
        id: '60',
        name: 'Flight to Rio de Janeiro',
        description:
            'One-way flight from Atlanta to Rio de Janeiro. Departure: 7:00 PM, Arrival: 6:00 AM (next day). Duration: 10 hours. Enjoy in-flight entertainment and meals.',
        price: 900.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Frio.jpeg?alt=media&token=93d262e2-df51-4ce3-a15a-14be48086dc3'),
  ];
});

final cardsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '61',
        name: 'Visa Credit',
        description:
            'The Visa Credit Card offers rewards on every purchase, 0% introductory APR for the first 12 months, and no annual fee. Ideal for building credit and earning cashback.',
        price: 260.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard1.jpeg?alt=media&token=76320e5e-ddb9-460e-ab41-254df298aed6'),
    Item(
        id: '62',
        name: 'Mastercard Debit',
        description:
            'This Mastercard Debit Card allows you to spend directly from your checking account. No overdraft fees and daily transaction limits apply. Perfect for everyday purchases.',
        price: 340.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard2.jpeg?alt=media&token=eacfaee6-2677-4673-a667-72e52f9409af'),
    Item(
        id: '63',
        name: 'Amex Gold',
        description:
            'Enjoy premium rewards and travel benefits with the American Express Gold Card. Earn points on dining and travel, with an annual fee of rs250. Access to exclusive offers included.',
        price: 250.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard3.jpeg?alt=media&token=efd8428a-9448-44f2-8ed1-48aecb58eb94'),
    Item(
        id: '64',
        name: 'Discover Cashback',
        description:
            'With the Discover Cashback Card, earn 5% cashback on rotating categories and 1% on all other purchases. No annual fee and unlimited cashback match for the first year.',
        price: 570.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard4.jpeg?alt=media&token=74874a0c-53da-4737-b9b5-9d201670dc65'),
    Item(
        id: '65',
        name: 'Capital One Quicksilver',
        description:
            'The Capital One Quicksilver Card offers unlimited 1.5% cashback on all purchases, with no annual fee and a one-time bonus for new cardholders. Great for everyday spending.',
        price: 450.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard2.jpeg?alt=media&token=eacfaee6-2677-4673-a667-72e52f9409af'),
    Item(
        id: '66',
        name: 'Chase Sapphire',
        description:
            'This premium travel card offers 2x points on travel and dining at restaurants, with a sign-up bonus. Enjoy valuable travel protections and no foreign transaction fees for rs95 annual fee.',
        price: 950.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard1.jpeg?alt=media&token=76320e5e-ddb9-460e-ab41-254df298aed6'),
    Item(
        id: '67',
        name: 'Citi Double Cash',
        description:
            'With the Citi Double Cash Card, earn 1% cashback on purchases and an additional 1% when you pay your bill. No annual fee and a great option for cashback lovers.',
        price: 370.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard4.jpeg?alt=media&token=74874a0c-53da-4737-b9b5-9d201670dc65'),
    Item(
        id: '68',
        name: 'BoA Travel Rewards',
        description:
            'Earn unlimited 1.5 points per dollar on all purchases with no annual fee. Enjoy no foreign transaction fees and a generous sign-up bonus for travel enthusiasts.',
        price: 640.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard3.jpeg?alt=media&token=efd8428a-9448-44f2-8ed1-48aecb58eb94'),
    Item(
        id: '69',
        name: 'Wells Fargo Propel',
        description:
            'This card offers 3x points on eating out, gas, and travel, with no annual fee. Enjoy valuable benefits, including cell phone protection and access to exclusive events.',
        price: 350.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard2.jpeg?alt=media&token=eacfaee6-2677-4673-a667-72e52f9409af'),
    Item(
        id: '70',
        name: 'PNC Cash Rewards',
        description:
            'Earn 1.5% cashback on all purchases with no annual fee. The PNC Cash Rewards Visa Card provides great rewards and flexible redemption options for everyday spending.',
        price: 420.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fcard1.jpeg?alt=media&token=76320e5e-ddb9-460e-ab41-254df298aed6'),
  ];
});

final medicineItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '71',
        name: 'Paracetamol',
        description:
            'Paracetamol is a widely used analgesic and antipyretic medication, effective for reducing fever and relieving mild to moderate pain such as headaches, muscle aches, and toothaches.',
        price: 10.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine1.jpeg?alt=media&token=bdd7eae7-0edf-429f-9c48-6f99b11695fa'),
    Item(
        id: '72',
        name: 'Cetirizine',
        description:
            'Cetirizine is an antihistamine that alleviates allergy symptoms such as runny nose, sneezing, and itchy eyes. It is commonly used for seasonal allergies and hay fever.',
        price: 8.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine2.jpeg?alt=media&token=e5c7ef69-85f0-4a4c-8737-e80cb20ad9f2'),
    Item(
        id: '73',
        name: 'Amoxicillin',
        description:
            'Amoxicillin is a penicillin antibiotic used to treat various bacterial infections, including respiratory infections, ear infections, and skin infections.',
        price: 15.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine4.jpeg?alt=media&token=089cc4d1-c1d9-4d41-bd33-e2e01ef45149'),
    Item(
        id: '74',
        name: 'Metformin',
        description:
            'Metformin is an oral medication for managing blood sugar levels in individuals with type 2 diabetes. It enhances insulin sensitivity and reduces glucose production in the liver.',
        price: 25.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine3.jpeg?alt=media&token=09d85556-ad9a-45df-9408-c19becd6d08a'),
    Item(
        id: '75',
        name: 'Pantoprazole',
        description:
            'Pantoprazole is a proton pump inhibitor that decreases stomach acid production. It is used to treat gastroesophageal reflux disease (GERD) and other acid-related disorders.',
        price: 12.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine1.jpeg?alt=media&token=bdd7eae7-0edf-429f-9c48-6f99b11695fa'),
    Item(
        id: '76',
        name: 'Lisinopril',
        description:
            'Lisinopril is an ACE inhibitor used to treat high blood pressure and heart failure. It helps relax blood vessels, improving blood flow and reducing the risk of heart attack and stroke.',
        price: 20.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine2.jpeg?alt=media&token=e5c7ef69-85f0-4a4c-8737-e80cb20ad9f2'),
    Item(
        id: '77',
        name: 'Rabeprazole',
        description:
            'Rabeprazole is a medication that reduces stomach acid production, used for treating GERD and peptic ulcers. It helps relieve symptoms such as heartburn and acid reflux.',
        price: 14.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine3.jpeg?alt=media&token=09d85556-ad9a-45df-9408-c19becd6d08a'),
    Item(
        id: '78',
        name: 'Amlodipine',
        description:
            'Amlodipine is a calcium channel blocker that helps lower blood pressure and prevent angina. It works by relaxing blood vessels and improving blood flow.',
        price: 14.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine1.jpeg?alt=media&token=bdd7eae7-0edf-429f-9c48-6f99b11695fa'),
    Item(
        id: '79',
        name: 'Ibuprofen',
        description:
            'Ibuprofen is a non-steroidal anti-inflammatory drug (NSAID) used to relieve pain, reduce inflammation, and lower fever. It is effective for headaches, menstrual cramps, and muscle pain.',
        price: 10.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine4.jpeg?alt=media&token=089cc4d1-c1d9-4d41-bd33-e2e01ef45149'),
    Item(
        id: '80',
        name: 'Serratiopeptidase',
        description:
            'Serratiopeptidase is an enzyme that helps reduce inflammation and pain. It is commonly used as a supplement for post-surgery recovery and treating chronic pain conditions.',
        price: 18.0,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fmedicine3.jpeg?alt=media&token=09d85556-ad9a-45df-9408-c19becd6d08a'),
  ];
});

final watchItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
      id: '81',
      name: 'Rolex Submariner',
      description:
          'The Rolex Submariner is an iconic dive watch with a stainless steel case, unidirectional bezel, and water resistance up to 300 meters. It combines elegance with robust functionality.',
      price: 8500.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch1.jpeg?alt=media&token=5870d0fb-080c-4307-bf6d-705f7910fc1a',
    ),
    Item(
      id: '82',
      name: 'Omega Speedmaster',
      description:
          'Omega Speedmaster, famously known as the Moonwatch, features a chronograph function, durable stainless steel case, and hesalite crystal, making it both a practical and stylish choice.',
      price: 5200.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch2.jpeg?alt=media&token=d55900a8-8423-41d4-8cda-1bec70207306',
    ),
    Item(
      id: '83',
      name: 'Tag Heuer Carrera',
      description:
          'The Tag Heuer Carrera is a stylish, modern watch with automatic movement, scratch-resistant sapphire crystal, and an elegant chronograph function for sports enthusiasts.',
      price: 3200.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch3.jpeg?alt=media&token=3cc67513-e047-4d46-b4ce-bb0c14be6854',
    ),
    Item(
      id: '84',
      name: 'Casio G-Shock',
      description:
          'This Casio G-Shock watch is designed for durability with shock resistance, water resistance up to 200 meters, and a rugged design ideal for outdoor adventures.',
      price: 150.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch4.jpeg?alt=media&token=c7fac7fc-d6e2-4955-89d4-cc6a7c733164',
    ),
    Item(
      id: '85',
      name: 'Seiko Prospex',
      description:
          'Seiko Prospex offers a balance of style and functionality, with a solar-powered movement, stainless steel case, and water resistance up to 200 meters.',
      price: 450.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch5.jpeg?alt=media&token=7e578bc7-5710-4c56-94a7-037468d7b4eb',
    ),
    Item(
      id: '86',
      name: 'Patek Philippe Nautilus',
      description:
          'The Patek Philippe Nautilus is a luxury timepiece with a steel case, an intricate blue dial, and an automatic movement that embodies elegance and craftsmanship.',
      price: 30000.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch6.jpeg?alt=media&token=1cde4eb8-845b-48c6-a530-24669ca0aba3',
    ),
    Item(
      id: '87',
      name: 'Breitling Navitimer',
      description:
          'Breitling Navitimer is a pilot\'s watch featuring a slide rule bezel, chronograph function, and a stainless steel case, combining style with aviation heritage.',
      price: 6500.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch7.jpeg?alt=media&token=e6de9c56-dae0-4276-a34f-e8dd9543821c',
    ),
    Item(
      id: '88',
      name: 'Apple Watch Series 7',
      description:
          'The Apple Watch Series 7 offers advanced health monitoring features, a larger display, and seamless integration with Apple\'s ecosystem, perfect for everyday use.',
      price: 399.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch8.jpeg?alt=media&token=eaf15931-89f1-4c57-aeda-c3ca4c95eaee',
    ),
    Item(
      id: '89',
      name: 'Fossil Hybrid Smartwatch',
      description:
          'Fossil Hybrid Smartwatch blends classic analog design with smart features, including heart rate tracking, notifications, and customizable dials.',
      price: 179.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch9.jpeg?alt=media&token=cba17f45-c577-48c3-87a7-13fed26166c5',
    ),
    Item(
      id: '90',
      name: 'Tissot Le Locle',
      description:
          'Tissot Le Locle is a Swiss automatic watch with a classic design, featuring Roman numerals, a silver dial, and an exhibition case back, perfect for formal wear.',
      price: 450.0,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/tataneu-b02ca.appspot.com/o/assets%20image%2Fshopping%2Fwatch10.jpeg?alt=media&token=c2425267-14f8-4a53-a31d-4f20739ee274',
    ),
  ];
});
