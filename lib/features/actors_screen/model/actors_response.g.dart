// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorsResponse _$ActorsResponseFromJson(Map<String, dynamic> json) =>
    ActorsResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$ActorsResponseToJson(ActorsResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
