import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final String category;

  CategoryPage(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Eyewear'),
      ),
      body: Center(
        child: Text(
          'Products for $category coming soon!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
