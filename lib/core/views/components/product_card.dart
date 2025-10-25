import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final String desc;
  final String price;

  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.desc,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              title: title,
              image: image,
              desc: desc,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(
                image,
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                desc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('Add'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade100,
                      foregroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      textStyle: const TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
