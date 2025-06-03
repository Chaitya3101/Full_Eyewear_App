// lib/screens/home/men_product_page.dart
import 'package:flutter/material.dart';

class MenProductPage extends StatelessWidget {
  final List<Map<String, String>> menProducts = [
    {
      "image": "assets/prod1.png",
      "name": "Men's Air Flex",
      "price": "₹999",
    },
    {
      "image": "assets/prod2.png",
      "name": "Black Square Frame",
      "price": "₹1,299",
    },
    {
      "image": "assets/prod3.png",
      "name": "Matte Finish Frame",
      "price": "₹799",
    },
    {
      "image": "assets/prod4.png",
      "name": "Transparent Classic",
      "price": "₹1,199",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Men's Eyewear")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: menProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final product = menProducts[index];
            return productCard(product["image"]!, product["name"]!, product["price"]!);
          },
        ),
      ),
    );
  }

  Widget productCard(String imagePath, String name, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(imagePath, height: 120, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(price, style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
