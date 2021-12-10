import 'package:flutter_modular/flutter_modular.dart';
import 'package:star_wars/app/modules/home/home_module.dart';
import 'package:star_wars/app/repositories/client/client_controller.dart';
import 'package:star_wars/app/routes.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ClientController(), isSingleton: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Routes.initialRoute, module: HomeModule()),
  ];
}
