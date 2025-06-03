// lib/screens/home/kids_product_page.dart
import 'package:flutter/material.dart';

class KidsProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"image": "assets/k1.png", "name": "Red Round Frame", "price": "₹699"},
    {"image": "assets/k2.png", "name": "Blue Flex Frame", "price": "₹799"},
    {"image": "assets/k3.png", "name": "Cartoon Glasses", "price": "₹999"},
    {"image": "assets/k4.png", "name": "Matte Flexi", "price": "₹899"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kids Eyewear")),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
            ),
            child: Column(
              children: [
                Image.asset(product["image"]!, height: 120, fit: BoxFit.cover),
                SizedBox(height: 8),
                Text(product["name"]!, style: TextStyle(fontWeight: FontWeight.w500)),
                Text(product["price"]!, style: TextStyle(color: Colors.teal)),
              ],
            ),
          );
        },
      ),
    );
  }
}
