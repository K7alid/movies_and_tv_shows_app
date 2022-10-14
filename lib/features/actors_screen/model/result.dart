import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  Result({
    required this.adult,
    required this.gender,
    required this.id,
    required this.name,
    required this.popularity,
    required this.profilePath,
  });

  bool adult;
  int gender;
  int id;
  String name;
  double popularity;
  String profilePath;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
