import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/search/allitemprovider.dart';
import 'package:tata_neu/shopping/datamodel.dart';
import 'package:tata_neu/shopping/detailscreen.dart';
import 'package:tata_neu/ui/widgets/categorynavigate.dart';

final searchModeProvider = StateProvider<String>((ref) => 'Item');
final searchProvider = StateProvider<List<dynamic>>((ref) => []);
final categoryProvider = StateProvider<List<String>>((ref) => [
      'Grocery',
      'Fashion',
      'Jewelry',
      'Electronics',
      'Hotels',
      'Flights',
      'Medicines',
      'Watches',
      'Cards',
    ]);

class SearchScreen extends ConsumerStatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  bool hasCleared = false;

  @override
  void initState() {
    super.initState();

    searchController.addListener(() {
      performSearch(searchController.text);
    });
  }

  void performSearch(String query) {
    final searchMode = ref.read(searchModeProvider);
    final allItemsAsyncValue = ref.read(allItemsProvider);

    if (searchMode == 'Category') {
      final categories = ref.read(categoryProvider);
      final matchingCategories = categories.where((category) {
        return category.toLowerCase().contains(query.toLowerCase());
      }).toList();
      ref.read(searchProvider.notifier).state = matchingCategories;
    } else if (allItemsAsyncValue is AsyncData<List<Item>>) {
      final allItems = allItemsAsyncValue.value;
      final searchResults = allItems.where((item) {
        return item.name.toLowerCase().contains(query.toLowerCase());
      }).toList();

      ref.read(searchProvider.notifier).state = searchResults;
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<String>(searchModeProvider, (previous, next) {
      if (!hasCleared) {
        searchController.clear();
        hasCleared = true;
      }
    });

    final searchMode = ref.watch(searchModeProvider);
    final searchResults = ref.watch(searchProvider);
    final allItemsAsyncValue = ref.watch(allItemsProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(229, 243, 241, 241),
        toolbarHeight: 120,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    hasCleared = false;
                    ref.read(searchModeProvider.notifier).state = 'Item';
                  },
                  child: Text(
                    'Item',
                    style: TextStyle(
                      color: searchMode == 'Item' ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    hasCleared = false;
                    ref.read(searchModeProvider.notifier).state = 'Category';
                  },
                  child: Text(
                    'Category',
                    style: TextStyle(
                      color:
                          searchMode == 'Category' ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            TextField(
              controller: searchController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              onSubmitted: (query) => performSearch(query),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: allItemsAsyncValue.when(
                data: (_) {
                  return searchController.text.isEmpty
                      ? Center(child: Text('Type something to start searching'))
                      : searchResults.isEmpty
                          ? Center(child: Text('No results found'))
                          : ListView.builder(
                              itemCount: searchResults.length,
                              itemBuilder: (context, index) {
                                final result = searchResults[index];
                                return ListTile(
                                  title: Text(
                                    searchMode == 'Category'
                                        ? result as String
                                        : (result as Item).name,
                                  ),
                                  onTap: () {
                                    if (searchMode == 'Category') {
                                      navigateToCategory(
                                          context, result as String);
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailsScreen(
                                              item: result as Item),
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                            );
                },
                loading: () => Center(child: CircularProgressIndicator()),
                error: (error, _) => Center(child: Text('Error loading items')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
