import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_project/src/comprar.dart';

void main() {
  test('validar: nombre no ingresado', () {
    //Arrange & Act
    var resultado = Comprar.validarNombre('');
    //Assert
    expect(resultado, 'Campo Obligatorio');
  });
  test('validar: Numero no ingresado', () {
    //Arrange & Act
    var resultado = Comprar.validarNumero('');
    //Assert
    expect(resultado, 'Campo Obligatorio');
  });
  test('validar: Fecha no ingresada', () {
    //Arrange & Act
    var resultado = Comprar.validarNumero('');
    //Assert
    expect(resultado, 'Campo Obligatorio');
  });
  test('validar: CVC no ingresado', () {
    //Arrange & Act
    var resultado = Comprar.validarNumero('');
    //Assert
    expect(resultado, 'Campo Obligatorio');
  });
  test('validar: Numero no valido', () {
    //Arrange & Act
    var resultado = Comprar.validarNumero('ssss');
    //Assert
    expect(resultado, 'Numero ingresado no valido');
  });
  test('validar: Numero debe ser igual a 16 digitos', () {
    //Arrange & Act
    var resultado = Comprar.validarNumero('1020304050');
    //Assert
    expect(resultado, 'Número ingresado incorrecto');
  });
}
