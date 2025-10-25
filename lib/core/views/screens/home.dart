import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Spacetoon Shop'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                ),
              ),
              accountName: Text(
                'Hello, Romeo!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('spacetoon@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/profile.jpg'),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.teal),
              title: Text('Home'),
            ),

            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.teal),
              title: Text('My Cart'),
            ),

            ListTile(
              leading: Icon(Icons.favorite, color: Colors.teal),
              title: Text('Favorites'),
            ),

            ListTile(
              leading: Icon(Icons.person, color: Colors.teal),
              title: Text('Profile'),
            ),
            Divider(height: 400, endIndent: 40, color: Colors.white),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.teal[50],
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/icons/profile.jpg'),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Spacetoon Shop!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.teal,
                      ),
                    ),
                    Text(
                      'Discover products and explore layouts',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.notifications_none, color: Colors.teal),

              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 8,
              itemBuilder: (context, index) {
                var categories = [
                  'Action Planet',
                  'Comedy Planet',
                  'Sports Planet',
                  'Adventure Planet',
                  'Science Planet',
                  'Movies Planet',
                  'Stories Planet',
                  'Girls Planet',
                ];

                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.teal[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 10),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10),
              itemCount: 5,
              separatorBuilder: (_, __) => SizedBox(height: 10),
              itemBuilder: (context, index) {
                final items = [
                  {
                    'title': 'Friends’ Era',
                    'image': 'assets/icons/friends.jpg',
                    'desc':
                        'The story of two friends, Romeo and Alfredo, in their struggle for survival and loyalty.',
                  },
                  {
                    'title': 'Dragon Ball',
                    'image': 'assets/icons/dragonball.jpg',
                    'desc':
                        'Goku’s adventures as he trains in martial arts and searches for the Dragon Balls.',
                  },
                  {
                    'title': 'Captain Tsubasa',
                    'image': 'assets/icons/tsubasa.jpg',
                    'desc':
                        'Tsubasa Ozora pursues his dream of becoming the best soccer player in the world.',
                  },
                  {
                    'title': 'The Secret Garden',
                    'image': 'assets/icons/garden.jpg',
                    'desc':
                        'Mary Lennox discovers a hidden magical garden that transforms her life and those around her.',
                  },
                  {
                    'title': 'Sindbad',
                    'image': 'assets/icons/sindbad.jpg',
                    'desc':
                        'The young sailor Sindbad embarks on daring adventures across the seas in search of treasure.',
                  },
                ];

                final item = items[index];

                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 8,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              image: DecorationImage(
                                image: AssetImage(item['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$59.99',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          item['title']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          item['desc']!,
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 350,
                            vertical: 4,
                          ),

                          child:
                          Icon(Icons.favorite, color: Colors.teal,)
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
