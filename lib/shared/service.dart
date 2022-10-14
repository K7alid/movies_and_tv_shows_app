import 'package:dio/dio.dart';
import 'package:movies_and_tv_shows_app/features/actors_screen/model/actors_response.dart';
import 'package:movies_and_tv_shows_app/features/movies_screen/model/movies_response.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/model/tv_shows_response.dart';
import 'package:retrofit/retrofit.dart';

part 'service.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  //get movies
  @GET('/movie/top_rated')
  Future<MoviesResponse> getTopRatedMovies(
    @Query('api_key') String api_key,
  );
  @GET('/movie/upcoming')
  Future<MoviesResponse> getUpcomingMovies(
    @Query('api_key') String api_key,
  );
  @GET('/movie/popular')
  Future<MoviesResponse> getPopularMovies(
    @Query('api_key') String api_key,
  );

  @GET('/movie/now_playing')
  Future<MoviesResponse> getPlayingNowMovies(
    @Query('api_key') String api_key,
  );

  //get tv shows
  @GET('/tv/top_rated')
  Future<TVShowsResponse> getTopRatedTVShows(
    @Query('api_key') String api_key,
  );
  @GET('/tv/airing_today')
  Future<TVShowsResponse> getAiringTodayTVShows(
    @Query('api_key') String api_key,
  );
  @GET('/tv/popular')
  Future<TVShowsResponse> getPopularTVShows(
    @Query('api_key') String api_key,
  );
  @GET('/tv/on_the_air')
  Future<TVShowsResponse> getOnTheAirTVShows(
    @Query('api_key') String api_key,
  );

  //get actors
  @GET('/person/popular')
  Future<ActorsResponse> getActors(
    @Query('api_key') String api_key,
  );
}
