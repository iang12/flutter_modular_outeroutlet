import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
