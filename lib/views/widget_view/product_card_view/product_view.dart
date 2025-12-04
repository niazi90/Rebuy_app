import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // User Row
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/User image.png"), // placeholder
            ),
            title: Text("Seller Name"),
            subtitle: Text("Location"),
            trailing: Icon(Icons.more_vert),
          ),

          // Image
          Container(
            height: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle55.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Title + Price
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cordoba Mini Guitar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text("Make: Cordoba | Year: 2020",
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Text("₹ 25,000",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          // Heart icon
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 12),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.pink.shade50,
                child: Icon(Icons.favorite_border, color: Colors.pink),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
