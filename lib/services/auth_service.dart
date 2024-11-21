class AuthService {
  static Future<bool> login(String email, String password) async {
    // Simula un'autenticazione
    if (email == 'admin@azienda.com' && password == 'password') {
      return true;
    }
    return false;
  }

  static Future<void> logout() async {
    // Gestione logout
  }
}
