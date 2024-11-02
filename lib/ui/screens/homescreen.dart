import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/ui/screens/accountscreen.dart';
import 'package:tata_neu/ui/screens/categoryscreen.dart';
import 'package:tata_neu/ui/screens/firstscreen.dart';
import 'package:tata_neu/ui/screens/neupassscreen.dart';
import 'package:tata_neu/ui/screens/offerscreen.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

class Homescreen extends ConsumerStatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  ConsumerState<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends ConsumerState<Homescreen>
    with TickerProviderStateMixin {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(currentIndexProvider);

    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          ref.read(currentIndexProvider.notifier).state = index;
        },
        children:  [
          Firstscreen(),
          Neupassscreen(),
          CategoryScreen(),
          Offerscreen(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined), label: 'Neupass'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: 'Offers'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        elevation: 8.0, 
        currentIndex: currentIndex,
        onTap: (index) {
          ref.read(currentIndexProvider.notifier).state = index;
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 290),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
