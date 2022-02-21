import 'package:json_annotation/json_annotation.dart';

part 'people.g.dart';

@JsonSerializable()
class People {
  String name;
  String height;
  String mass;

  @JsonKey(name: "hair_color", defaultValue: "")
  String hairColor;

  @JsonKey(name: "skin_color", defaultValue: "")
  String skinColor;

  @JsonKey(name: "eye_color", defaultValue: "")
  String eyeColor;

  @JsonKey(name: "birth_year", defaultValue: "")
  String birthYear;
  String gender;
  String homeworld;
  List<String> films;
  List<String> species;
  List<String> vehicles;
  List<String> starships;
  String created;
  String edited;
  String url;

  People(
      this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url);

  static Map<String, dynamic> toJson(People instance) {
    return _$PeopleToJson(instance);
  }

  static People fromJson(Map<String, dynamic> json) {
    return _$PeopleFromJson(json);
  }
}
