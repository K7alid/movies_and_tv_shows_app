import 'package:json_annotation/json_annotation.dart';
import 'package:movies_and_tv_shows_app/features/movies_screen/model/result.dart';

part 'movies_response.g.dart';

@JsonSerializable()
class MoviesResponse {
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  MoviesResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesResponseToJson(this);
}
