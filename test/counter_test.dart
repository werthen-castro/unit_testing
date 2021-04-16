import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

// Primeiro Teste Unitário
// Teste classe Counter
// O teste consiste em verificar se um contado está iniciando corretamente,
// incrementando e decrementando
// https://flutter.dev/docs/cookbook/testing/unit/introduction

void main() {
  // comando expect é usado para verificar a saida esperada com base em uma entrada conhecida
  // comando test é propriamente um teste onde se verifica uma situação (pode precisar de configuração)
  // comando group é um agrupamento de tests

  group('Counter', () {
    test('o valor deve começar em zero', () {
      expect(Counter().value, 0);
    });

    test('o valor ao ser incrementado (estando em 0) deve ir para 1', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('o valor ao ser decrementado (estando em 0) deve ir para -1 ', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
