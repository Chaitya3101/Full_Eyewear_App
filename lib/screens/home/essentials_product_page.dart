// lib/screens/home/essentials_product_page.dart
import 'package:flutter/material.dart';

class EssentialsProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"image": "assets/e1.png", "name": "Lens Cleaner Kit", "price": "₹299"},
    {"image": "assets/e2.png", "name": "Hard Case", "price": "₹199"},
    {"image": "assets/e3.png", "name": "Anti-fog Cloth", "price": "₹149"},
    {"image": "assets/e4.png", "name": "Chain with Case", "price": "₹349"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Essentials")),
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
