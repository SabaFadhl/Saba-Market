import 'package:flutter/material.dart';

import '../components/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'title': 'Friends’ Era',
        'image': 'assets/icons/friends.jpg',
        'desc':
        'The story of two friends, Romeo and Alfredo, in their struggle for survival and loyalty.',
        'price': '\$59.99',
      },
      {
        'title': 'Dragon Ball',
        'image': 'assets/icons/dragonball.jpg',
        'desc':
        'Goku’s adventures as he trains in martial arts and searches for the Dragon Balls.',
        'price': '\$60.00',
      },
      {
        'title': 'Captain Tsubasa',
        'image': 'assets/icons/tsubasa.jpg',
        'desc':
        'Tsubasa Ozora pursues his dream of becoming the best soccer player in the world.',
        'price': '\$55.00',
      },
      {
        'title': 'The Secret Garden',
        'image': 'assets/icons/garden.jpg',
        'desc':
        'Mary Lennox discovers a hidden magical garden that transforms her life and those around her.',
        'price': '\$49.99',
      },
      {
        'title': 'Sindbad',
        'image': 'assets/icons/sindbad.jpg',
        'desc':
        'The young sailor Sindbad embarks on daring adventures across the seas in search of treasure.',
        'price': '\$65.00',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text(
          "Saba Market",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage('assets/icons/cover.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategory("Action", Icons.sports_martial_arts),
                  _buildCategory("Comedy", Icons.emoji_emotions),
                  _buildCategory("Sports", Icons.sports_soccer),
                  _buildCategory("Adventure", Icons.explore),
                  _buildCategory("Science", Icons.science),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Products",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 280,
              ),
              itemBuilder: (context, index) {
                final p = products[index];
                return ProductCard(
                  title: p['title']!,
                  image: p['image']!,
                  desc: p['desc']!,
                  price: p['price']!,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  static Widget _buildCategory(String name, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 5),
          Text(name, style: const TextStyle(color: Colors.teal)),
        ],
      ),
    );
  }
}
