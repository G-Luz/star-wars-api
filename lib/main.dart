import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:star_wars/app/app.dart';
import 'package:star_wars/app/app_module.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('pt', 'BR'), Locale('en', 'US')],
      path: 'assets/translations',
      // <-- change the path of the translation files
      // fallbackLocale: Locale('en', 'US'),
      fallbackLocale: Locale('pt', 'BR'),
      child: ModularApp(module: AppModule(), child: App()),
    ),
  );
}
