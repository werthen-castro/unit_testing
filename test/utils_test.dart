@Timeout(Duration(seconds: 60)) // configura timeout da suit
// @Skip('Feature não concluida') // não executa a suit de teste

import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'conversão de ',
    () {
      expect(() => int.parse('X'), throwsFormatException);
    },
  );
// Timeout no teste
  test('conversão de ', () {
    expect(() => int.parse('X'), throwsFormatException);
  }, timeout: Timeout(Duration(seconds: 30)), tags: 'mobile');

  test('Quando o tratamento de erro não foi terminado  ', () {
    expect(() => int.parse('X'), throwsFormatException);
  }, skip: "Motivo para pular o erro");
}
