import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:star_wars/app/helper/swapi_helper.dart';

part 'client_controller.g.dart';

class ClientController = ClientControllerBase with _$ClientController;

abstract class ClientControllerBase with Store {
  Dio dio = Dio();

  Future<dynamic> get(String url) async {
    try {
      return dio.get(
        url,
        options: Options(
          headers: {
            "secret-key":
            "\$2b\$10\$mQT86VKOy5DJEh/fXFEjZulqIv8p2tJ/yr/QsJ2t4uSBUBp3fOO/W",
          },
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
