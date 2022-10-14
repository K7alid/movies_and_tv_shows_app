import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/actors_screen/model/actors_response.dart';
import 'package:movies_and_tv_shows_app/main.dart';
import 'package:movies_and_tv_shows_app/shared/constants.dart';

class ActorsViewBrain extends GetxController {
  ActorsViewBrain() {
    getActors();
  }

  ActorsResponse? actors;
  getActors() async {
    actors = (await client?.getActors(apiKey));
    update();
  }
}
