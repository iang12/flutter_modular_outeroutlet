import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/auth/blocs/login_bloc.dart';
import 'package:modular_test/auth/blocs/repositories/login_repository.dart';
import 'package:modular_test/auth/views/login_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => LoginRepository()),
        Bind((i) => LoginBloc(i(), i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPage()),
      ];
}
