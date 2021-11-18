import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/auth/auth_module.dart';
import 'package:modular_test/home/home_module.dart';
import 'package:modular_test/sales/sales_module.dart';
import 'package:modular_test/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'product/product_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        AsyncBind((i) => SharedPreferences.getInstance()),
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/sales', module: SalesModule()),
        ModuleRoute('/products', module: ProductModule()),
        WildcardRoute(
          child: (_, __) => const Scaffold(
            body: Center(child: Text('Pagina não existe')),
          ),
        )
      ];
}
