// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:rebuy/controller/order_controller/order_controler.dart';

// ignore: use_key_in_widget_constructors
class MyOrderView extends StatelessWidget {
  final controller = Get.put(OrderControler());
  final bottomNav = Get.find<BottomNavController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
            
            currentIndex: bottomNav.currentIndex.value,
            

            onTap: (index) {
              bottomNav.currentIndex.value = index;
              

              if (index == 1) {
                Get.toNamed('/explore');
              } else if (index == 4) {
                Get.toNamed('/message');
              } else if (index == 0) {
                Get.toNamed('/home');
              }else if(index==3){
                Get.toNamed('/like_page');
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
          ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text("My Orders",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),

      body: Obx(() => ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: controller.items.length,
        itemBuilder: (_, index) {
          final item = controller.items[index];

          return Container(
            margin: EdgeInsets.only(bottom: 14),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    item.image,
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),

                // Text Column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(height: 2),
                      Text(item.date,
                          style: TextStyle(color: Colors.grey, fontSize: 13)),
                      SizedBox(height: 4),
                      Text(item.price,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),

                // Heart icon
                ElevatedButton(onPressed: ()=>{}, child: Text("Rate now"))
              ],
            ),
          );
        },
      )),

     
    );
  }
}
