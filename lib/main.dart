import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:rebuy/views/auth_view/login_view.dart';
import 'package:rebuy/views/auth_view/signup_view.dart';
import 'package:rebuy/views/explore_view.dart/explore_view.dart';
import 'package:rebuy/views/home_view/home_view.dart';
import 'package:rebuy/views/like_page/liked_view.dart';
import 'package:rebuy/views/listing_view/listing_view.dart';
import 'package:rebuy/views/menu_view/menu_view.dart';
import 'package:rebuy/views/message_view/message_view.dart';
import 'package:rebuy/views/my_account_view/my_account_view.dart';
import 'package:rebuy/views/my_order_view/my_orderview.dart';
import 'package:rebuy/views/product_view_detail/product_view_detail.dart';
import 'package:rebuy/views/splish_view/splish_view.dart';

import 'controller/splish_controller/splish_controller.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splish',
      useInheritedMediaQuery: true,
      getPages: [
        GetPage(
          name: '/splish',
          page: () => SplishView(),
          binding: BindingsBuilder(() {
            Get.put(SplishController());
          }),
        ),
        GetPage(name: '/login', page: () => LoginView()),
        GetPage(name: '/signup', page: () => SignupView()),
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/menu', page: () => MenuView()),
        GetPage(name: '/message', page: () => MessagesView()),
        GetPage(name: '/explore', page: () => ExploreScreen()),
        GetPage(name: '/my-account', page: () => MyAccountView()),
        GetPage(name: '/product_details', page: () => ProductDetailsPage()),
        GetPage(name: '/like_page', page: () => LikedItemsPage()),
        GetPage(name: '/order_view', page: () => MyOrderView()),
        GetPage(name: '/listing_view', page: () => ListingView()),
      ],
    );
  }
}
