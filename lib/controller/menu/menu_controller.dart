import 'package:get/get.dart';

class MenuControllerX extends GetxController {

  void goTo(String page) {
    switch (page) {
      case "my-account":
        Get.toNamed('/my-account');   // My Account page
        break;

      case "orders":
        Get.toNamed('/orders');       // Orders page (if you create it)
        break;

      case "listings":
        Get.toNamed('/listings');     // My Listings page
        break;

      case "liked":
        Get.toNamed('/liked-items');  // Liked items page
        break;

      default:
        print("Unknown page: $page");
    }
  }

  void signOut() {
    // Clear user session if needed
    Get.offAllNamed('/login');        // Go to Login page
  }
}
