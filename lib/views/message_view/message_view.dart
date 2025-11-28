import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/controller/message_controller/message_controller.dart';


class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MessagesController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          "Messages",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        children: [

          /// Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        controller.searchText.value = value;
                      },
                      decoration: const InputDecoration(
                        hintText: "Search in messages",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Icon(Icons.search, color: Colors.grey),
                ],
              ),
            ),
          ),

          /// Messages List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [

                MessageTile(
                  name: "Paul Molive",
                  title: "DJI Mavic Mini 2",
                  message: "You: Does it come with an additional battery?",
                  time: "9:03 AM",
                  avatar: "https://i.pravatar.cc/100?img=10",
                  online: true,
                ),

                MessageTile(
                  name: "Petey Cruiser",
                  title: "DJI Mavic Mini 2",
                  message: "Petey: Sorry, I’m unlisting it",
                  time: "Yesterday 4:12 PM",
                  avatar: "https://i.pravatar.cc/100?img=20",
                  online: true,
                ),

                MessageTile(
                  name: "Anna Sthesia",
                  title: "DJI Mavic Air 2",
                  message: "Anna: I think you should go with Mavic Mini",
                  time: "15 Feb 21, 9:30 PM",
                  avatar: "https://i.pravatar.cc/100?img=30",
                  online: true,
                ),

                MessageTile(
                  name: "Bob Frapples",
                  title: "Apple AirPods Pro",
                  message: "Bob: You’re welcome",
                  time: "25 Jan 21, 10:30 AM",
                  avatar: "https://i.pravatar.cc/100?img=40",
                ),

                MessageTile(
                  name: "Greta Life",
                  title: "JBL Charge 2",
                  message: "Greta: Alright",
                  time: "20 Dec 20, 9:23 AM",
                  avatar: "https://i.pravatar.cc/100?img=50",
                  online: true,
                  badge: 1,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


/// UI Widget
class MessageTile extends StatelessWidget {
  final String name;
  final String title;
  final String message;
  final String time;
  final String avatar;
  final bool online;
  final int badge;

  const MessageTile({
    super.key,
    required this.name,
    required this.title,
    required this.message,
    required this.time,
    required this.avatar,
    this.online = false,
    this.badge = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [

          Stack(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(avatar),
              ),

              if (online)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title | $name",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  message,
                  style: const TextStyle(color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),

              if (badge > 0)
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Text(
                    "$badge",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
