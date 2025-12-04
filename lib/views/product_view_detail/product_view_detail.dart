import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/controller/product_controller/product_controller.dart';


class ProductDetailsPage extends StatelessWidget {
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---------------------- APP BAR --------------------------
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: Text("ReBuy",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        centerTitle: true,
      ),

      // ---------------------- BODY -----------------------------
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // -------- PRODUCT IMAGE CAROUSEL ----------
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Obx(() {
                return PageView.builder(
                  onPageChanged: (index) => controller.currentImage.value = index,
                  itemCount: controller.images.length,
                  itemBuilder: (_, i) => ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(controller.images[i], fit: BoxFit.cover),
                  ),
                );
              }),
            ),

            const SizedBox(height: 8),

            // page indicators
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.images.length,
                    (index) => Container(
                  margin: EdgeInsets.all(3),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.currentImage.value == index
                        ? Colors.grey[800]
                        : Colors.grey[400],
                  ),
                ),
              ),
            )),

            const SizedBox(height: 20),

            // -------- PRODUCT TITLE ----------
            Text(
              "Shure podcast microphone",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              "₹ 24,999",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 15),

            // -------- DESCRIPTION ----------
            Text(
              "The Shure SM7B reigns as king of studio recording for good reason: "
                  "vocal recording and reproduction is clear and crisp, especially "
                  "when recording in a more...",
              style: TextStyle(fontSize: 15, color: Colors.grey[700]),
            ),

            const SizedBox(height: 20),

            // -------- MAKE + YEAR ----------
            Row(
              children: [
                Text("Make: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Shure  "),
                Text(" |  "),
                Text("Year: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("2020"),
              ],
            ),

            const SizedBox(height: 15),

            // -------- WARRANTY + PACKING ----------
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green, size: 20),
                SizedBox(width: 5),
                Text("Within Warranty"),
                SizedBox(width: 15),
                Icon(Icons.cancel, color: Colors.red, size: 20),
                SizedBox(width: 5),
                Text("Original Packing"),
              ],
            ),

            const SizedBox(height: 25),

            // -------- GOOGLE SEARCH BUTTON ----------
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/images/Product Thumbnail (3).png",width:300 , height:100),
                    SizedBox(width: 8),
                    // Text("Search Details",
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.w500, fontSize: 16)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            Text("Similar products",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),

      // ---------------------- BOTTOM BAR ------------------------
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 65,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8)),
                child: Text("Save item",
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(8)),
                child: Text("Buy Now",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
