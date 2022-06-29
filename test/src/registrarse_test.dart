import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_project/src/registrarse.dart';

void main() {
  test('validar: email no ingresado (Vacio)', () {
    //Arrange & Act
    var resultado = IniciarSesion.validarEmail('');
    //Assert
    expect(resultado, 'Campo Obligatorio');
  });

  test('validar: email no valido', () {
    //Arrange & Act
    var resultado = IniciarSesion.validarEmail('certus_certus.com');
    //Assert
    expect(resultado, "Correo ingresado no valido");
  });

  test('validar: email valido', () {
    //Arrange & Act
    var resultado = IniciarSesion.validarEmail('certus@certus.com');
    //Assert
    expect(resultado, null);
  });

  test('validar: contraseña no ingresada (Vacio)', () {
    //Arrange & Act
    var result = IniciarSesion.validarPassword('');

    //Assert
    expect(result, 'Campo Obligatorio');
  });

  test('validar: contraseña no valida (menor a 8 caracteres)', () {
    //Arrange & Act
    var result = IniciarSesion.validarPassword('pass');

    //Assert
    expect(result, 'Contraseña ingresada no valida');
  });

  test('validar: contraseña valida (menor a 8 caracteres)', () {
    //Arrange & Act
    var result = IniciarSesion.validarPassword('password');

    //Assert
    expect(result, null);
  });
}
