import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 10),

              /// ---- Profile + Title ----
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage("assets/images/User image.png"),
                  ),
                  SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hey Alice",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Text("Welcome back!",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.pinkAccent)),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.menu, size: 30),
                ],
              ),

              SizedBox(height: 25),

              /// ---- Search Bar ----
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for books, guitar and more...",
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),

              SizedBox(height: 25),

              /// ---- New arrivals header ----
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New arrivals",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  Text("View more",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),

              SizedBox(height: 15),

              /// ---- New Arrivals horizontal list ----
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    productCard(
                      img: "assets/images/Product Thumbnail.png",
                      title: "Batman Toy",
                      subtitle: "2018 | FunSkool",
                      price: "₹ 899",
                    ),
                    productCard(
                      img: "assets/images/Product Thumbnail (1).png",
                      title: "You Are You",
                      subtitle: "2020 | H&C",
                      price: "₹ 599",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              /// ---- Recently Viewed header ----
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently viewed",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  Text("View more",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),

              SizedBox(height: 15),

              /// ---- Recently viewed horizontal list ----
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    productCard(
                      img: "assets/images/Group 28.png",
                      title: "Graphic Tablet",
                      subtitle: "2021 | Apple",
                      price: "₹ 59,999",
                    ),
                    productCard(
                      img: "assets/images/Product Thumbnail (2).png",
                      title: "Amazon Kindle",
                      subtitle: "2020 | Amazon",
                      price: "₹ 8,999",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// ---- Bottom Navigation ----
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.link), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: ""),
        ],
      ),
    );
  }

  /// ---- Product Card Widget ----
  Widget productCard({
    required String img,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(img, height: 120, width: 160, fit: BoxFit.cover),
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(subtitle, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 4),
          Text(price,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
