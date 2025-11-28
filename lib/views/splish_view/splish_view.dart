import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebuy/controller/splish_controller/splish_controller.dart';


class SplishView extends StatelessWidget {
    const SplishView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplishController());
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 100,height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child:  Center(child: Text("ReBuy",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ],
          ),
         
        ],
            ),
      ),);
  }
}