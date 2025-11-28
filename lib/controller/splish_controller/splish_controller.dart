import 'dart:async';

import 'package:get/get.dart';

class SplishController extends GetxController {
  
  @override
  void onInit(){
    super.onInit();
  
  Timer(Duration(seconds: 3),(){
  
    Get.offNamed('/login');
  });

}}