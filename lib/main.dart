import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(EyewearApp());
}

class EyewearApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eyewear App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(),
    );
  }
}
