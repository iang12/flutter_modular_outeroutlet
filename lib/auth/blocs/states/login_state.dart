abstract class LoginState {}

class LoginSuccess implements LoginState {}

class LoginLoading implements LoginState {}

class LoginFailure implements LoginState {
  final String message;

  LoginFailure(this.message);
}

class LoginIdle implements LoginState {}
