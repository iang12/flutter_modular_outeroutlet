import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:modular_test/auth/blocs/repositories/login_repository.dart';
import 'package:modular_test/auth/blocs/states/login_state.dart';

import 'events/login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SharedPreferences sharedPreferences;
  final LoginRepository loginRepository;
  LoginBloc(
    this.sharedPreferences,
    this.loginRepository,
  ) : super(LoginIdle()) {
    on<LoginWithEmail>(loginEmail);
  }

  Future<void> loginEmail(
      LoginWithEmail event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      await loginRepository.loginEmail(event.email, event.password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure('Erro na senha ou email'));
    }
  }
}
