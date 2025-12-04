import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:rebuy/controller/explore_Controller/explore_controller.dart';
import 'package:rebuy/views/widget_view/product_card_view/product_view.dart';


class ExploreScreen extends StatelessWidget {
  final ExploreController controller = Get.put(ExploreController());
  final BottomNavController bottomNav = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text("Explore",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )),
        actions: [
          Icon(Icons.menu, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔍 Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for books, guitar and more...",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                ),
              ),
            ),

            // Categories
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: controller.categories.map((cat) {
                bool active = controller.selectedCategory.value == cat;
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: ChoiceChip(
                    label: Text(cat),
                    selected: active,
                    onSelected: (_) => controller.changeCategory(cat),
                  ),
                );
              }).toList(),
            )),

            SizedBox(height: 20),

            // Product Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProductCard(),
            ),

            SizedBox(height: 20),

          ],
        ),
      ),
    // Bottom Navigation Mock
    bottomNavigationBar: Obx(() => BottomNavigationBar(
          currentIndex: bottomNav.currentIndex.value,

          onTap: (index) {
            bottomNav.currentIndex.value = index;

            if (index == 1) {
              Get.toNamed('/explore');
            } else if (index == 4) {
              Get.toNamed('/message');
            } else if (index == 0) {
              Get.toNamed('/home');
            }
          },

          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.link), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: ""),
          ],
        )),
          );
  }
}
