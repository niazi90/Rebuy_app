
import 'package:get/get.dart';
import 'package:rebuy/models/like_model.dart';

class LikedItemsController extends GetxController {
  var items = <LikedItem>[
    LikedItem(
      title: "Apple AirPods Pro",
      date: "21 Jan 2021",
      price: "₹ 8,999",
      image: "assets/images/airpods.png",
    ),
    LikedItem(
      title: "JBL Charge 2 Speaker",
      date: "20 Dec 2020",
      price: "₹ 6,499",
      image: "assets/images/speaker.png",
    ),
    LikedItem(
      title: "PlayStation Controller",
      date: "14 Nov 2020",
      price: "₹ 1,299",
      image: "assets/images/controller.png",
    ),
    LikedItem(
      title: "Nexus Mountain Bike",
      date: "05 Oct 2020",
      price: "₹ 9,100",
      image: "assets/images/bike.png",
    ),
    LikedItem(
      title: "Wildcraft Ranger Tent",
      date: "30 Sep 2020",
      price: "₹ 999",
      image: "assets/images/tent.png",
    ),
  ].obs;
}
