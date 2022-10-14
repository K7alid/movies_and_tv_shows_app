import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/model/tv_shows_response.dart';
import 'package:movies_and_tv_shows_app/main.dart';
import 'package:movies_and_tv_shows_app/shared/constants.dart';

class TVShowsBrain extends GetxController {
  TVShowsBrain() {
    getAiringTodayTVShows();
    getOnTheAirTVShows();
    getPopularTVShows();
    getTopRatedTVShows();
  }

  TVShowsResponse? topRatedTVShows;
  getTopRatedTVShows() async {
    topRatedTVShows = await client?.getTopRatedTVShows(apiKey);
    update();
  }

  TVShowsResponse? popularTVShows;
  getPopularTVShows() async {
    popularTVShows = await client?.getPopularTVShows(apiKey);
    update();
  }

  TVShowsResponse? airingTodayTVShows;
  getAiringTodayTVShows() async {
    airingTodayTVShows = await client?.getAiringTodayTVShows(apiKey);
    update();
  }

  TVShowsResponse? onTheAirTVShows;
  getOnTheAirTVShows() async {
    onTheAirTVShows = await client?.getOnTheAirTVShows(apiKey);
    update();
  }
}
