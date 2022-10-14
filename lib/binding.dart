import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/actors_screen/controller/actors_view_brain.dart';
import 'package:movies_and_tv_shows_app/features/home_screen/controller/home_view_brain.dart';
import 'package:movies_and_tv_shows_app/features/movies_screen/controller/movies_view_brain.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/controller/tv_shows_view_brain.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewBrain());
    Get.lazyPut(() => MoviesViewBrain());
    Get.lazyPut(() => ActorsViewBrain());
    Get.lazyPut(() => TVShowsBrain());
  }
}
