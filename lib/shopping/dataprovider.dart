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
        id: '1',
        name: 'Apple iPhone 13',
        description:
            'We designed a totally new architecture and turned the lenses 45 degrees to fit in our best dual-camera system ever with its biggest Wide camera sensor. We also made room for our sensor-shift optical image stabilisation. And we equipped the Ultra Wide camera with a faster sensor.',
        price: 44000.00,
        imageUrl: 'url_to_image'),
    Item(
        id: '2',
        name: 'Bajaj Mixer Grinder',
        description:
            'This appliance consumes 500 W power function. Besides, it is equipped with an automatic shut-off feature and a motor overload protector.',
        price: 5999.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '3',
        name: 'Apple M2 Chip ',
        description:
            'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all-aluminium enclosure. It\'s the ultra-fast, ultra-capable laptop that lets you work, play or create just about anything - anywhere.',
        price: 80000.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '4',
        name: 'Samsung LED TV',
        description:
            'Your favorite TV programs and movies get real. The rich and vivid Full HD resolution with twice the resolution of HD TV. High-Dynamic Range levels up bright expression of your TV, so you can enjoy an immense spectrum of colors and visual details, even in dark scenes.',
        price: 25000.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '5',
        name: 'Voltas 1.5 ton AC',
        description:
            'Voltas 1.5 Ton 3 Star 183 Vectra Magnum 4 in 1 Convertible Inverter Split AC, White. 	Inter Connecting pipe, Remote, Manual, Warranty card, 2 x batteries, Inter Connecting wire',
        price: 33000.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '6',
        name: 'LG refrigerator',
        description:
            'Unmatched performance, great savings and super silent operation; the New Smart Inverter Compressor is thoughtfully designed to provide added convenience to you. ',
        price: 16500.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '7',
        name: 'Whirlpool Washing Machine',
        description:
            'Whirlpool 7.5 Kg Fully-Automatic Top Loading Washing Machine, Grey, SW PRO H . 1N Inlet Pipe, 1N Detergent Cup, 1N Rat Mesh, 1N Drain Pipe, 1N Drain Hose with Clamp',
        price: 34.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '8',
        name: 'Sony PlayStation 5',
        description:
            'The PS5 console unleashes new gaming possibilities that you never anticipated. Experience lightning-fast loading with an ultra-high-speed SSD and an amazing world of immersive gaming with a deeper gaming experience and haptic feedback.',
        price: 49999.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '9',
        name: 'Dell XPS 13 Laptop',
        description:
            'The XPS 13 laptop is engineered with a stunning InfinityEdge display, delivering an immersive viewing experience. Featuring the latest Intel processors, this laptop ensures high performance and portability.',
        price: 95000.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '10',
        name: 'Fitbit Charge 5',
        description:
            'The Fitbit Charge 5 helps you make the most of every moment with built-in GPS, a daily readiness score, and stress management tools. Monitor your health metrics with an advanced health and fitness tracker.',
        price: 14999.0,
        imageUrl: 'url_to_image'),
  ];
});

final jewelryItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '1',
        name: 'Gold Necklace',
        description:
            'An elegant 18K gold necklace featuring a delicate chain and a beautifully crafted pendant. Perfect for everyday wear or special occasions, this necklace adds a touch of sophistication to any outfit.',
        price: 499.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '2',
        name: 'Diamond Ring',
        description:
            'Stunning diamond ring with a brilliant cut stone, perfect for engagements or special occasions.',
        price: 1299.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '3',
        name: 'Silver Bracelet',
        description:
            'A classic silver bracelet with intricate detailing, ideal for everyday wear.',
        price: 199.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '4',
        name: 'Pearl Earrings',
        description:
            'Beautiful pearl earrings that add a touch of elegance to any outfit.',
        price: 299.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '5',
        name: 'Platinum Watch',
        description:
            'Luxury platinum watch with diamond accents and a sleek design for timeless style.',
        price: 4999.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '6',
        name: 'Ruby Pendant',
        description:
            'Exquisite ruby pendant set in gold, perfect for formal occasions.',
        price: 399.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '7',
        name: 'Sapphire Brooch',
        description:
            'Elegant sapphire brooch that adds a royal touch to your attire.',
        price: 249.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '8',
        name: 'Titanium Ring',
        description:
            'Durable titanium ring with a matte finish, perfect for both men and women.',
        price: 149.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '9',
        name: 'Emerald Bracelet',
        description:
            'Gorgeous emerald bracelet that adds a pop of color and sophistication to any outfit.',
        price: 599.99,
        imageUrl: 'url_to_image'),
    Item(
        id: '10',
        name: 'Vintage Brooch',
        description:
            'Unique vintage brooch with a floral design, perfect for collectors and fashion enthusiasts.',
        price: 79.99,
        imageUrl: 'url_to_image'),
  ];
});

final hotelsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '1',
        name: 'Hotel Paradise',
        description:
            'Enjoy a luxury hotel stay at Hotel Paradise, located in the heart of the city. Experience exquisite accommodations, including a spacious room with stunning views, complimentary breakfast, and access to premium amenities like the spa and fitness center. Price is for a one-night stay.',
        price: 800.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '2',
        name: 'Seaside Resort',
        description:
            'Relax at Seaside Resort, a beachfront hotel offering stunning ocean views. Enjoy modern rooms, a private beach, and a full-service restaurant. Price is for a one-night stay.',
        price: 1200.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '3',
        name: 'Mountain Retreat',
        description:
            'Escape to Mountain Retreat, nestled in the hills. Enjoy cozy accommodations with fireplaces, outdoor activities, and complimentary breakfast. Price is for a one-night stay.',
        price: 600.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '4',
        name: 'City Center Inn',
        description:
            'Stay at City Center Inn, offering convenient access to local attractions. Features include modern rooms, free Wi-Fi, and a fitness center. Price is for a one-night stay.',
        price: 550.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '5',
        name: 'Luxury Spa Hotel',
        description:
            'Indulge in relaxation at Luxury Spa Hotel, featuring a full-service spa, gourmet dining, and plush accommodations. Perfect for a rejuvenating getaway. Price is for a one-night stay.',
        price: 2500.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '6',
        name: 'Eco-Friendly Lodge',
        description:
            'Experience sustainability at Eco-Friendly Lodge, surrounded by nature. Enjoy organic meals, nature trails, and comfortable lodging. Price is for a one-night stay.',
        price: 700.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '7',
        name: 'Heritage Hotel',
        description:
            'Discover charm at Heritage Hotel, a beautifully restored building with antique decor, fine dining, and guided tours of local history. Price is for a one-night stay.',
        price: 1200.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '8',
        name: 'Business Hotel',
        description:
            'Ideal for business travelers, Business Hotel offers meeting rooms, high-speed internet, and comfortable accommodations. Conveniently located near corporate offices. Price is for a one-night stay.',
        price: 950.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '9',
        name: 'Family-Friendly Resort',
        description:
            'Enjoy family fun at Family-Friendly Resort, featuring spacious suites, kids’ activities, and a water park. Perfect for a memorable family vacation. Price is for a one-night stay.',
        price: 1600.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '10',
        name: 'Boutique Hotel',
        description:
            'Stay at Boutique Hotel, known for its unique decor and personalized service. Enjoy stylish rooms and a trendy bar on-site. Price is for a one-night stay.',
        price: 1800.0,
        imageUrl: 'url_to_image'),
  ];
});

final fashionItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '1',
        name: 'Designer Shirt',
        description:
            'A premium designer shirt made from 100% cotton with a tailored fit. Perfect for both formal and casual occasions, this shirt combines style with comfort.',
        price: 800.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '2',
        name: 'Silk Kurta',
        description:
            'An elegant silk kurta, ideal for festive occasions and celebrations. This traditional outfit features intricate embroidery and a comfortable fit.',
        price: 1200.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '3',
        name: 'Slim Fit Jeans',
        description:
            'Stylish slim fit jeans made from high-quality denim. These jeans provide a modern silhouette and are versatile enough for casual or semi-formal wear.',
        price: 700.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '4',
        name: 'Woolen Sweater',
        description:
            'A cozy woolen sweater, perfect for chilly weather. This classic piece features a ribbed neckline and cuffs, providing warmth without compromising on style.',
        price: 600.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '5',
        name: 'Casual Linen Shirt',
        description:
            'A lightweight casual linen shirt, ideal for summer days. This breathable fabric ensures comfort and style, making it a wardrobe essential.',
        price: 500.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '6',
        name: 'Tailored Blazer',
        description:
            'A chic tailored blazer, perfect for elevating any outfit. Made from high-quality fabric, it offers a sharp silhouette for both professional and casual settings.',
        price: 2500.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '7',
        name: 'Ethnic Sherwani',
        description:
            'A stunning ethnic sherwani designed for weddings and special occasions. Crafted from rich fabric with intricate embroidery, it embodies traditional elegance.',
        price: 3200.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '8',
        name: 'Cargo Pants',
        description:
            'Functional cargo pants with multiple pockets, designed for comfort and utility. Made from durable fabric, they are perfect for outdoor activities or casual wear.',
        price: 900.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '9',
        name: 'Graphic T-Shirt',
        description:
            'A trendy graphic t-shirt made from soft cotton fabric. This casual piece features unique artwork, perfect for adding a pop of personality to your outfit.',
        price: 550.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '10',
        name: 'Chinos',
        description:
            'Stylish chinos that offer a comfortable fit and versatility for both casual and smart-casual occasions. Made from high-quality fabric for durability.',
        price: 1100.0,
        imageUrl: 'url_to_image'),
  ];
});

final flightsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '1',
        name: 'Flight to New York',
        description:
            'Non-stop flight from Los Angeles to New York. Departure: 10:00 AM, Arrival: 6:00 PM. Duration: 6 hours. Enjoy in-flight meals and entertainment.',
        price: 800.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '2',
        name: 'Flight to London',
        description:
            'Round-trip flight from San Francisco to London. Departure: 5:00 PM, Arrival: 10:00 AM (next day). Duration: 10 hours. Includes two checked bags and complimentary meals.',
        price: 1200.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '3',
        name: 'Flight to Tokyo',
        description:
            'One-way flight from Seattle to Tokyo. Departure: 1:00 PM, Arrival: 4:00 PM (next day). Duration: 12 hours. Features in-flight Wi-Fi and snacks.',
        price: 1500.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '4',
        name: 'Flight to Sydney',
        description:
            'Direct flight from Los Angeles to Sydney. Departure: 8:30 PM, Arrival: 6:00 AM (next day). Duration: 15 hours. Includes in-flight entertainment and meals.',
        price: 2500.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '5',
        name: 'Flight to Paris',
        description:
            'Round-trip flight from New York to Paris. Departure: 9:00 AM, Arrival: 11:00 PM. Duration: 8 hours. Includes complimentary wine and snacks.',
        price: 2200.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '6',
        name: 'Flight to Dubai',
        description:
            'One-way flight from Houston to Dubai. Departure: 3:00 AM, Arrival: 8:00 PM. Duration: 14 hours. Enjoy in-flight duty-free shopping and meals.',
        price: 3000.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '7',
        name: 'Flight to Toronto',
        description:
            'Non-stop flight from Chicago to Toronto. Departure: 6:00 AM, Arrival: 9:00 AM. Duration: 3 hours. Includes breakfast and free Wi-Fi.',
        price: 600.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '8',
        name: 'Flight to Bangkok',
        description:
            'Round-trip flight from Los Angeles to Bangkok. Departure: 11:00 AM, Arrival: 5:00 PM (next day). Duration: 18 hours. Features in-flight entertainment and meals.',
        price: 4000.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '9',
        name: 'Flight to Rome',
        description:
            'Direct flight from Miami to Rome. Departure: 4:00 PM, Arrival: 7:00 AM (next day). Duration: 10 hours. Includes complimentary meals and wine.',
        price: 1700.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '10',
        name: 'Flight to Rio de Janeiro',
        description:
            'One-way flight from Atlanta to Rio de Janeiro. Departure: 7:00 PM, Arrival: 6:00 AM (next day). Duration: 10 hours. Enjoy in-flight entertainment and meals.',
        price: 900.0,
        imageUrl: 'url_to_image'),
  ];
});

final cardsItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '1',
        name: 'Visa Credit',
        description:
            'The Visa Credit Card offers rewards on every purchase, 0% introductory APR for the first 12 months, and no annual fee. Ideal for building credit and earning cashback.',
        price: 0.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '2',
        name: 'Mastercard Debit',
        description:
            'This Mastercard Debit Card allows you to spend directly from your checking account. No overdraft fees and daily transaction limits apply. Perfect for everyday purchases.',
        price: 0.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '3',
        name: 'Amex Gold',
        description:
            'Enjoy premium rewards and travel benefits with the American Express Gold Card. Earn points on dining and travel, with an annual fee of rs250. Access to exclusive offers included.',
        price: 250.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '4',
        name: 'Discover Cashback',
        description:
            'With the Discover Cashback Card, earn 5% cashback on rotating categories and 1% on all other purchases. No annual fee and unlimited cashback match for the first year.',
        price: 0.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '5',
        name: 'Capital One Quicksilver',
        description:
            'The Capital One Quicksilver Card offers unlimited 1.5% cashback on all purchases, with no annual fee and a one-time bonus for new cardholders. Great for everyday spending.',
        price: 0.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '6',
        name: 'Chase Sapphire',
        description:
            'This premium travel card offers 2x points on travel and dining at restaurants, with a sign-up bonus. Enjoy valuable travel protections and no foreign transaction fees for rs95 annual fee.',
        price: 95.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '7',
        name: 'Citi Double Cash',
        description:
            'With the Citi Double Cash Card, earn 1% cashback on purchases and an additional 1% when you pay your bill. No annual fee and a great option for cashback lovers.',
        price: 0.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '8',
        name: 'BoA Travel Rewards',
        description:
            'Earn unlimited 1.5 points per dollar on all purchases with no annual fee. Enjoy no foreign transaction fees and a generous sign-up bonus for travel enthusiasts.',
        price: 0.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '9',
        name: 'Wells Fargo Propel',
        description:
            'This card offers 3x points on eating out, gas, and travel, with no annual fee. Enjoy valuable benefits, including cell phone protection and access to exclusive events.',
        price: 0.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '10',
        name: 'PNC Cash Rewards',
        description:
            'Earn 1.5% cashback on all purchases with no annual fee. The PNC Cash Rewards Visa Card provides great rewards and flexible redemption options for everyday spending.',
        price: 0.0,
        imageUrl: 'url_to_image'),
  ];
});

final medicineItemsProvider = FutureProvider<List<Item>>((ref) async {
  return [
    Item(
        id: '1',
        name: 'Paracetamol',
        description:
            'Paracetamol is a widely used analgesic and antipyretic medication, effective for reducing fever and relieving mild to moderate pain such as headaches, muscle aches, and toothaches.',
        price: 10.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '2',
        name: 'Cetirizine',
        description:
            'Cetirizine is an antihistamine that alleviates allergy symptoms such as runny nose, sneezing, and itchy eyes. It is commonly used for seasonal allergies and hay fever.',
        price: 8.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '3',
        name: 'Amoxicillin',
        description:
            'Amoxicillin is a penicillin antibiotic used to treat various bacterial infections, including respiratory infections, ear infections, and skin infections.',
        price: 15.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '4',
        name: 'Metformin',
        description:
            'Metformin is an oral medication for managing blood sugar levels in individuals with type 2 diabetes. It enhances insulin sensitivity and reduces glucose production in the liver.',
        price: 25.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '5',
        name: 'Pantoprazole',
        description:
            'Pantoprazole is a proton pump inhibitor that decreases stomach acid production. It is used to treat gastroesophageal reflux disease (GERD) and other acid-related disorders.',
        price: 12.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '6',
        name: 'Lisinopril',
        description:
            'Lisinopril is an ACE inhibitor used to treat high blood pressure and heart failure. It helps relax blood vessels, improving blood flow and reducing the risk of heart attack and stroke.',
        price: 20.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '7',
        name: 'Rabeprazole',
        description:
            'Rabeprazole is a medication that reduces stomach acid production, used for treating GERD and peptic ulcers. It helps relieve symptoms such as heartburn and acid reflux.',
        price: 14.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '8',
        name: 'Amlodipine',
        description:
            'Amlodipine is a calcium channel blocker that helps lower blood pressure and prevent angina. It works by relaxing blood vessels and improving blood flow.',
        price: 14.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '9',
        name: 'Ibuprofen',
        description:
            'Ibuprofen is a non-steroidal anti-inflammatory drug (NSAID) used to relieve pain, reduce inflammation, and lower fever. It is effective for headaches, menstrual cramps, and muscle pain.',
        price: 10.0,
        imageUrl: 'url_to_image'),
    Item(
        id: '10',
        name: 'Serratiopeptidase',
        description:
            'Serratiopeptidase is an enzyme that helps reduce inflammation and pain. It is commonly used as a supplement for post-surgery recovery and treating chronic pain conditions.',
        price: 18.0,
        imageUrl: 'url_to_image'),
  ];
});
