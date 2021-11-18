class LoginRepository {
  Future<bool> loginEmail(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email == 'ian@gmail.com' && password == '123') {
      return true;
    } else {
      throw Exception('Erro ao efeturar Login');
    }
  }
}
