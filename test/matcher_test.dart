import 'package:flutter_test/flutter_test.dart';

// Em conjunto do comando expect pode utilizar 'matcher' para validações complexas
// https://pub.dev/documentation/matcher/latest/matcher/matcher-library.html
//

void main() {
  test(' verifica se string tem o valor é igual ao esperado', () {
    String bola = 'bola';
    expect('bola', equals(bola));
  });

  test(' verifica se string não é nula', () {
    String bola = 'bola';
    expect(bola, isNotNull);
  });

  test(' verifica se o valor é uma inderteminação', () {
    expect(0 / 0, isNaN);
  });

  test(' verifica se o valor é positivo', () {
    expect(1, isPositive);
  });

  test(' verifica se o valor é zero', () {
    expect(0, isZero);
  });

  test(
      'Utiliza o allOf para agrupar matchers, verificando varias coisa por vez',
      () {
    expect('foo,bar,baz',
        allOf([contains('foo'), isNot(startsWith('bar')), endsWith('baz')]));
  });
}
