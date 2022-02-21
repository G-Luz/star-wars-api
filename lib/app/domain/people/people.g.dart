// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) => People(
      json['name'] as String,
      json['height'] as String,
      json['mass'] as String,
      json['hair_color'] as String? ?? '',
      json['skin_color'] as String? ?? '',
      json['eye_color'] as String? ?? '',
      json['birth_year'] as String? ?? '',
      json['gender'] as String,
      json['homeworld'] as String,
      (json['films'] as List<dynamic>).map((e) => e as String).toList(),
      (json['species'] as List<dynamic>).map((e) => e as String).toList(),
      (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
      (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
      json['created'] as String,
      json['edited'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$PeopleToJson(People instance) => <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hairColor,
      'skin_color': instance.skinColor,
      'eye_color': instance.eyeColor,
      'birth_year': instance.birthYear,
      'gender': instance.gender,
      'homeworld': instance.homeworld,
      'films': instance.films,
      'species': instance.species,
      'vehicles': instance.vehicles,
      'starships': instance.starships,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
