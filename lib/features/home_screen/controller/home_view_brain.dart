import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/movies_screen/view/movies_screen.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/view/tv_shows_screen.dart';

class HomeViewBrain extends GetxController {
  int bottomNavBarIndex = 0;
  void changeIndex(index) {
    bottomNavBarIndex = index;
    update();
  }

  List<Widget> bottomNavBarScreens = [
    MoviesScreen(),
    TVShowsScreen(),
  ];
}
