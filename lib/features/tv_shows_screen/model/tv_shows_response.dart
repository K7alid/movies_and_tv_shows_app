import 'package:json_annotation/json_annotation.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/model/result.dart';

part 'tv_shows_response.g.dart';

@JsonSerializable()
class TVShowsResponse {
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  TVShowsResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TVShowsResponse.fromJson(Map<String, dynamic> json) =>
      _$TVShowsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TVShowsResponseToJson(this);
}
