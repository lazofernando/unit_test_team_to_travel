class IniciarSesion {
  static String? validarEmail(String email) {
    if (email.isEmpty) {
      return 'Campo Obligatorio';
    }
    String patternEmail =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(patternEmail);

    if (!regExp.hasMatch(email)) {
      return "Correo ingresado no valido";
    }
  }

  static String? validarPassword(String password) {
    if (password.isEmpty) {
      return 'Campo Obligatorio';
    }
    if (password.length < 8) {
      return 'Contraseña ingresada no valida';
    }
  }
}
