import 'package:json_annotation/json_annotation.dart';
import 'package:movies_and_tv_shows_app/features/actors_screen/model/result.dart';

part 'actors_response.g.dart';

@JsonSerializable()
class ActorsResponse {
  ActorsResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  factory ActorsResponse.fromJson(Map<String, dynamic> json) =>
      _$ActorsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActorsResponseToJson(this);
}
