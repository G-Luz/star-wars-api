import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:star_wars/app/constants/environments.dart';
import 'package:star_wars/app/domain/people/people.dart';
import 'package:star_wars/app/domain/result/result_response.dart';
import 'package:star_wars/app/domain/swapi/swapi.dart';
import 'package:star_wars/app/repositories/client/client_controller.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final ClientController _client = Modular.get<ClientController>();

  HomeControllerBase() {
    init();
  }

  @observable
  ObservableList<Swapi> list = <Swapi>[].asObservable();

  @observable
  ObservableList<People> listPeople = <People>[].asObservable();

  @observable
  bool isShowSkeleton = true;

  @observable
  bool isShowCardSkeleton = true;

  @observable
  int optionSelected = 0;

  @action
  init() async {
    _client.get(Environments.swapi).then((response) {
      List<String> splitResponse = response.toString().split(',');
      List<Map<String, dynamic>> jsonList = [];
      for (String obj in splitResponse) {
        String formattedObj = "${obj.replaceAll('{', '').replaceAll('}', '')}";
        String key = "{\"key\": ${formattedObj.split("\":")[0]}\",";
        String url = "\"url\": \"${formattedObj.split(":\"")[1]}}";
        String fullObject = "${key}${url}";
        jsonList.add(jsonDecode(fullObject));
      }
      for (Map<String, dynamic> obj in jsonList) {
        list.add(Swapi.fromJson(obj));
      }
      fillContent(list.first);

      isShowSkeleton = false;
    });
  }

  @action
  fillContent(Swapi swapi) {
    _client.get(swapi.url).then((response) {
      findByPeoples(ResultResponse.fromJson(jsonDecode(response.toString())));
    });
  }

  @action
  selectMenuOption(int index) {
    optionSelected = index;

    print("Qual clicou: ${list[index].key}");
  }

  @action
  findByPeoples(ResultResponse response) {
    for (Map<String, dynamic> obj in response.results) {
      print("people result: ${People.toJson(People.fromJson(obj))}");
      listPeople.add(People.fromJson(obj));
    }

    isShowCardSkeleton = false;
  }

  @action
  findByPlanets() {}

  @action
  findByFilms() {}

  @action
  findBySpecies() {}

  @action
  findByVehicles() {}

  @action
  findByStarships() {}
}
