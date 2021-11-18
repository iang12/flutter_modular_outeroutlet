abstract class LoginEvent {}

class LoginWithEmail implements LoginEvent {
  final String password;
  final String email;

  LoginWithEmail({required this.password, required this.email});
}
