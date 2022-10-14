import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/actors_screen/view/actors_screen.dart';
import 'package:movies_and_tv_shows_app/features/home_screen/controller/home_view_brain.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewBrain>(
      init: HomeViewBrain(),
      builder: (controller) => Scaffold(
        body: controller.bottomNavBarScreens[
            controller.bottomNavBarIndex], //destination screen
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.person),
          backgroundColor: Colors.grey,
          onPressed: () {
            Get.to(ActorsScreen());
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            backgroundColor: Colors.grey,
            icons: [
              Icons.movie_outlined,
              Icons.tv,
            ],
            activeIndex: controller.bottomNavBarIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            leftCornerRadius: 20,
            rightCornerRadius: 20,
            onTap: (index) {
              controller.changeIndex(index);
            }),
      ),
    );
  }
}
