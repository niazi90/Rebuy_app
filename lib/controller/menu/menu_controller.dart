import 'package:get/get.dart';

class MenuControllerX extends GetxController {

  void goTo(String page) {
    switch (page) {
      case "my-account":
        Get.toNamed('/my-account');   // My Account page
        break;

      case "order_view":
        Get.toNamed('/order_view');       // Orders page (if you create it)
        break;

      case "listing_view":
        Get.toNamed('/listing_view');     // My Listings page
        break;

      case "like_page":
        Get.toNamed('/like_page');  // Liked items page
        break;

      default:
    }
  }

  void signOut() {
    // Clear user session if needed
    Get.offAllNamed('/login');        // Go to Login page
  }
}
