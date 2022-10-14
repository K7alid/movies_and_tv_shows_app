import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/movies_screen/model/movies_response.dart';
import 'package:movies_and_tv_shows_app/main.dart';
import 'package:movies_and_tv_shows_app/shared/constants.dart';

class MoviesViewBrain extends GetxController {
  MoviesViewBrain() {
    getPlayingNow();
    getUpcoming();
    getPopular();
    getTopRatedMovies();
  }

  MoviesResponse? topRatedMovies;
  getTopRatedMovies() async {
    topRatedMovies = (await client?.getTopRatedMovies(apiKey));
    update();
  }

  MoviesResponse? popularMovies;
  getPopular() async {
    popularMovies = (await client?.getPopularMovies(apiKey));
    update();
  }

  MoviesResponse? upcomingMovies;
  getUpcoming() async {
    upcomingMovies = (await client?.getUpcomingMovies(apiKey));
    update();
  }

  MoviesResponse? nowPlayingMovies;
  getPlayingNow() async {
    nowPlayingMovies = (await client?.getPlayingNowMovies(apiKey));
    update();
  }
}
