import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/controller/menu/menu_controller.dart';

class MenuView extends StatelessWidget {
  final controller = Get.put(MenuControllerX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --- HEADER ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ReBuy",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  /// 🔥 CLOSE BUTTON → Menu Closes
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(Icons.close, size: 30),
                  ),
                ],
              ),

              SizedBox(height: 20),

              /// --- MENU CARDS ---
              _menuCard(
                icon: Icons.person_outline,
                title: "My Account",
                subtitle: "Edit your details, account settings",
                onTap: () => controller.goTo("my-account"), // <-- fixed
              ),
              _menuCard(
                icon: Icons.inventory_2_outlined,
                title: "My Orders",
                subtitle: "View all your orders",
                onTap: () => controller.goTo("order_view"),
              ),
              _menuCard(
                icon: Icons.list_alt_outlined,
                title: "My Listings",
                subtitle: "View your product listing for sale",
                onTap: () => controller.goTo("listing_view"),
              ),
              _menuCard(
                icon: Icons.favorite_border,
                title: "Liked Items",
                subtitle: "See the products you have wishlisted",
                onTap: () => controller.goTo("like_page"),
              ),

              Spacer(),

              /// --- FOOTER BUTTONS ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _outlinedButton("Feedback"),

                  /// 🔥 SIGN OUT → Takes user to login
                  _filledButton(
                    "Sign out",
                    onTap: controller.signOut,
                  ),
                ],
              ),

              SizedBox(height: 25),

              Center(
                child: Text(
                  "ReBuy Inc. Version 1.0",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ---------------- WIDGETS ----------------

  Widget _menuCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Function onTap,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: Icon(icon, size: 32, color: Colors.black87),
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.black54),
        ),
        onTap: () => onTap(),
      ),
    );
  }

  Widget _outlinedButton(String text) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(color: Colors.black, width: 1.5),
      ),
      child: Text(text, style: TextStyle(fontSize: 16, color: Colors.black)),
    );
  }

  Widget _filledButton(String text, {required VoidCallback onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
        backgroundColor: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text, style: TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
