import 'package:flutter/material.dart';
import 'category_page.dart';
import 'men_product_page.dart';
import 'women_product_page.dart';
import 'kids_product_page.dart';
import 'essentials_product_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "Men";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "3D Try on"),
          BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye), label: "Eyecare"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Orders"),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              // 🔹 Address and Icons Row
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.teal),
                    Text("421302 • Bhiwandi, Maharashtra"),
                    Spacer(),
                    Icon(Icons.chat_bubble_outline),
                    SizedBox(width: 10),
                    Icon(Icons.favorite_border),
                    SizedBox(width: 10),
                    Icon(Icons.shopping_bag_outlined),
                  ],
                ),
              ),

              // 🔹 Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search "metal glasses"',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              // 🔹 Category Chips
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Chip(label: Text("All")),
                    Chip(label: Text("Classic")),
                    Chip(label: Text("Essentials")),
                    Chip(label: Text("Premium")),
                  ],
                ),
              ),

              // 🔹 Quick Shop Options
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          Expanded(
          child: quickShopButton("Buy at Store", Icons.store),
        ),
        SizedBox(width: 12),
        Expanded(
          child: quickShopButton("Try at Home", Icons.home),
        ),
        SizedBox(width: 12),
        Expanded(
          child: quickShopButton("Buy on Chat", Icons.chat),
                  )
  ],
                ),
              ),

              // 🔹 Trending Banner
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("# Trending at Prime Vision", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    bannerCard("assets/bannerHero.jpg"),
                    SizedBox(width: 10),
                    bannerCard("assets/phonic.jpg"),
                  ],
                ),
              ),

              // 🔹 Eyeglasses with Power
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text("Eyeglasses with Power", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    categoryChip(context, "Men", "assets/men-1.png"),
                    categoryChip(context, "Women", "assets/women-1.png"),
                    categoryChip(context, "Kids", "assets/kid-1.png"),
                    categoryChip(context, "Essentials", "assets/spec-1.jpg")
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Special Powers", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        powerCategory("assets/zeropower.png", "Zero Power"),
                        powerCategory("assets/progressive.png", "Progressive"),
                        powerCategory("assets/reading.png", "Reading"),
                        powerCategory("assets/power sun.png", "Power Sun", exclusive: true),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Lenses & Accessories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        powerCategory("assets/clear_lens.png", "Clear"),
                        powerCategory("assets/color_lens.png", "Color"),
                        powerCategory("assets/solution.png", "Solution & Accessories"),
                        powerCategory("assets/cases.png", "Cases & Chains"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Exclusively at Prime Vision",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Get the perfect vision and style",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    SizedBox(height: 16),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        promoTile("assets/2 in 1.png", "2 in 1: Eye + Sun", "Magnetic clip ons"),
                        promoTile("assets/no fall.png", "No-fall grip", "Pro fit"),
                        promoTile("assets/twist.png", "Twist & turn", "Unbreakables"),
                        promoTile("assets/battech.png", "Bat-tech inspired", "Dark Knight"),
                        promoTile("assets/dualtone.png", "Dual-toned frames", "Neocraft"),
                        promoTile("assets/bendable.png", "Bendable metals", "Memory Metal"),
                      ],
                    )
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget quickShopButton(String title, IconData icon) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.teal.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.teal),
        ),
        SizedBox(height: 4),
        Text(title, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget bannerCard(String imagePath) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget categoryChip(BuildContext context, String label, String imagePath) {
    return GestureDetector(
      onTap: () {
        if (label == "Men") {
          Navigator.push(context, MaterialPageRoute(builder: (_) => MenProductPage()));
        } else if (label == "Women") {
          Navigator.push(context, MaterialPageRoute(builder: (_) => WomenProductPage()));
        } else if (label == "Kids") {
          Navigator.push(context, MaterialPageRoute(builder: (_) => KidsProductPage()));
        } else if (label == "Essentials") {
          Navigator.push(context, MaterialPageRoute(builder: (_) => EssentialsProductPage()));
        } else {
          setState(() {
            selectedCategory = label;
          });
        }
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(height: 4),
          Text(label),
        ],
      ),
    );
  }
}
Widget powerCategory(String imgPath, String label, {bool exclusive = false}) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Image.asset(imgPath, fit: BoxFit.contain),
          ),
          if (exclusive)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Text("Exclusive", style: TextStyle(color: Colors.white, fontSize: 8)),
              ),
            ),
        ],
      ),
      SizedBox(height: 6),
      SizedBox(
        width: 70,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ),
    ],
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
Widget promoTile(String imagePath, String title, String subtitle) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      gradient: LinearGradient(
        colors: [Colors.pink, Colors.orange, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Container(
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
            ),
          ),
        ],
      ),
    ),
  );
}



