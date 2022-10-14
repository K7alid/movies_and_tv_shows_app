// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      adult: json['adult'] as bool,
      gender: json['gender'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      profilePath: json['profilePath'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'popularity': instance.popularity,
      'profilePath': instance.profilePath,
    };
