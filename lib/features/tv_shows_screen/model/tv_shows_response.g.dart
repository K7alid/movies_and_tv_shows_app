// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_shows_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TVShowsResponse _$TVShowsResponseFromJson(Map<String, dynamic> json) =>
    TVShowsResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$TVShowsResponseToJson(TVShowsResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
