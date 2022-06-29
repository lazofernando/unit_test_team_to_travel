class Comprar {
  static String? validarNombre(String name) {
    if (name.isEmpty) {
      return 'Campo Obligatorio';
    }
  }

  static String? validarNumero(String number) {
    if (number.isEmpty) {
      return 'Campo Obligatorio';
    }
    String patternNumber = '[0-9]+';
    RegExp regExp = RegExp(patternNumber);

    if (!regExp.hasMatch(number)) {
      return 'Numero ingresado no valido';
    }
    if (number.length != 16) {
      return 'Número ingresado incorrecto';
    }
  }

  static String? validarFecha(String date) {
    if (date.isEmpty) {
      return 'Campo Obligatorio';
    }
  }

  static String? validarCVC(String cvc) {
    if (cvc.isEmpty) {
      return 'Campo Obligatorio';
    }
    String patternCSC = '[0-9]+';
    RegExp regExp = RegExp(patternCSC);

    if (!regExp.hasMatch(patternCSC)) {
      return 'Numero ingresado no valido';
    }
    if (cvc.length != 3) {
      return 'Número ingresado incorrecto';
    }
  }
}
