import 'package:json_annotation/json_annotation.dart';

part 'swapi.g.dart';

@JsonSerializable()
class Swapi {

  String key;
  String url;

  Swapi(this.key, this.url);

  static Map<String, dynamic> toJson(Swapi instance) {
    return _$SwapiToJson(instance);
  }

  static Swapi fromJson(Map<String, dynamic> json) {
    return _$SwapiFromJson(json);
  }

}