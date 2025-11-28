import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// --- HEADER ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Profile + Name + Email
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundImage: AssetImage("assets/images/User image.png"),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alice Eve",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.redAccent,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "alice.eve@gmail.com",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),

                  /// Close button
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(Icons.close, size: 32),
                  ),
                ],
              ),

              SizedBox(height: 25),

              Text(
                "My account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),

              SizedBox(height: 15),

              /// NAME FIELD
              _label("Name:"),
              _inputField("Alice Eve"),

              SizedBox(height: 10),

              /// EMAIL
              _label("Email:"),
              _inputField("alice.eve@gmail.com"),

              SizedBox(height: 10),

              /// PHONE
              _label("Phone:"),
              _inputField("+1 561-230-0033"),

              SizedBox(height: 10),

              /// ADDRESS
              _label("Address:"),
              _addressField("""
Alice Eve
2074, Half and Half Drive
Hialeah, Florida - 33012
Ph: +1 561-230-0033
"""),

              SizedBox(height: 30),

              /// SETTINGS BUTTON
              Center(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                  style: OutlinedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: BorderSide(color: Colors.black, width: 1.5),
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// ------------------- WIDGETS -------------------

  Widget _label(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
    );
  }

  Widget _inputField(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      margin: EdgeInsets.only(top: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(color: Colors.black87)),
          Icon(Icons.edit_outlined, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _addressField(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      margin: EdgeInsets.only(top: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(text, style: TextStyle(color: Colors.black87)),
          ),
          Icon(Icons.edit_outlined, color: Colors.grey),
        ],
      ),
    );
  }
}
