import 'dart:convert';

import 'package:star_wars/app/domain/swapi/swapi.dart';

class SwapiHelper {

  // static List<Swapi> mapToSwapiList(List<dynamic> list){
  static void mapToSwapiList(dynamic json){
    print("list: ${json}");

    print("list: ${jsonDecode(json.toString().split(',')[0])}");
  }

}