import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    print('inicia a suit de teste');
  });

  tearDownAll(() {
    print('finaliza a suit de teste');
  });

  setUp(() {
    print('inicia o teste');
  });

  tearDown(() {
    print('destroi o teste');
  });

  test('primeiro teste', () {
    print('execuntando 1');
  });

  test('segundo teste', () {
    print('execuntando 2');
  });
}
