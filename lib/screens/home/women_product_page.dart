import 'package:flutter/material.dart';

class WomenProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      "image": "assets/w1.png",
      "name": "Rose Pink Frame",
      "price": "₹1,099",
    },
    {
      "image": "assets/w2.png",
      "name": "Gold-Rim Eyewear",
      "price": "₹1,499",
    },
    {
      "image": "assets/w3.png",
      "name": "Cat Eye Matte",
      "price": "₹999",
    },
    {
      "image": "assets/w4.png",
      "name": "Transparent Oval",
      "price": "₹1,199",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Women's Eyewear")),
      body: buildGrid(),
    );
  }

  Widget buildGrid() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemBuilder: (context, index) {
          final item = products[index];
          return productCard(item["image"]!, item["name"]!, item["price"]!);
        },
      ),
    );
  }

  Widget productCard(String imagePath, String name, String price) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 120, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
          Text(price, style: TextStyle(color: Colors.teal)),
        ],
      ),
    );
  }
}
