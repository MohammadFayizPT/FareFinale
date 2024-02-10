import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red, // Change primary color to red
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What are you looking for',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('All'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('Produce'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('Dairy'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('Bakery'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Search Field
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                // Create a ListView for images
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    buildListItem(
                      image: 'assets/images/bakery.png',
                      category: 'Bakery',
                      isExpired: false,
                      startingPrice: '\$5.99',
                    ),
                    buildListItem(
                      image: 'assets/images/beverages.png',
                      category: 'Beverages',
                      isExpired: true,
                      startingPrice: '\$2.49',
                    ),
                    buildListItem(
                      image: 'assets/images/freshfruits.png',
                      category: 'Fresh Fruits',
                      isExpired: false,
                      startingPrice: '\$3.99',
                    ),
                    buildListItem(
                      image: 'assets/images/13.jpeg',
                      category: 'Chips',
                      isExpired: false,
                      startingPrice: '\$1.99',
                    ),
                    buildListItem(
                      image: 'assets/images/grains.png',
                      category: 'Grains',
                      isExpired: true,
                      startingPrice: '\$4.49',
                    ),
                    buildListItem(
                      image: 'assets/images/grocery.png',
                      category: 'Grocery',
                      isExpired: false,
                      startingPrice: '\$2.99',
                    ),
                    buildListItem(
                      image: 'assets/images/oils.png',
                      category: 'Oils',
                      isExpired: false,
                      startingPrice: '\$6.99',
                    ),
                    buildListItem(
                      image: 'assets/images/protein.png',
                      category: 'Protein',
                      isExpired: true,
                      startingPrice: '\$7.99',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(
              255, 252, 252, 252), // Background color of the BottomAppBar
          shape: CircularNotchedRectangle(), // Notch in the bottom app bar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Handle home button tap
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Handle search button tap
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button tap
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  // Handle profile button tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItem({
    required String image,
    required String category,
    required bool isExpired,
    required String startingPrice,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Category: $category',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Price: $startingPrice',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Expired: ${isExpired ? 'Yes' : 'No'}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle offer button tap
                  },
                  child: Text('Apply Offer'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const SearchResults());
}
