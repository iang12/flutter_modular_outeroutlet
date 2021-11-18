import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/auth/blocs/events/login_event.dart';
import 'package:modular_test/auth/blocs/login_bloc.dart';
import 'package:modular_test/auth/blocs/states/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginBloc> {
  @override
  void initState() {
    bloc.stream.listen((state) async {
      if (state is LoginSuccess) {
        await Future.delayed(const Duration(milliseconds: 300));
        Modular.to.pushNamed('/product/red');
      }
      if (state is LoginFailure) {
        final banner = MaterialBanner(
          content: const Text('Erro no login'),
          actions: [
            ElevatedButton(onPressed: () {}, child: const Text('data'))
          ],
        );
        ScaffoldMessenger.of(context).showMaterialBanner(banner);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        bloc: bloc,
        builder: (_, state) {
          if (state is LoginLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is LoginSuccess) {
            return const Center(
              child: Text('Entru!!'),
            );
          }

          return Center(
            child: ElevatedButton(
              onPressed: () {
                bloc.add(
                    LoginWithEmail(password: '123', email: 'ian@gmail.com'));
              },
              child: const Text('ENTRAR'),
            ),
          );
        },
      ),
    );
  }
}
