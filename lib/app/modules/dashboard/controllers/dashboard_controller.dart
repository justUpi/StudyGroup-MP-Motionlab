import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ui/app/modules/home/views/home_view.dart';
import 'package:shop_ui/app/modules/favorite/views/favorite_view.dart';
import 'package:shop_ui/app/modules/profile/views/profile_view.dart';

class DashboardController extends GetxController {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomeView(),
    const FavoriteView(),
    const ProfileView(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
