import 'package:get/get.dart';

class ExploreController extends GetxController {
  var selectedCategory = 'Books'.obs;
  var categories = ['Books', 'Game', 'Music', 'Camera'];

  void changeCategory(String cat) {
    selectedCategory.value = cat;
  }
}
