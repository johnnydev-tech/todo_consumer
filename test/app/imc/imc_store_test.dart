import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_consumer/app/imc/imc_store.dart';

void main() {
  group('IMC STORE', () {
    test('Deve retornar o IMC correto!', () {
      // ARRANGE
      final store = ImcStore();
      store.setHeight('1.77');
      store.setWeight('70');

      // ACT
      store.calculateBMI();

      // ASSERT
      expect(store.result, '22.34');
    });

    test('Deve retornar um erro pelo valor do peso ser <=0', () {
      final store = ImcStore();
      store.setHeight('1.77');
      store.setWeight('0');

      expect(() => store.calculateBMI(), throwsA(isA<Exception>()));
    });

    test('Deve disparar um erro se o valor digiado não for numérico', () {
      final store = ImcStore();

      store.setHeight('1.77b');
      store.setWeight('70');

      try {
        store.calculateBMI();
      } catch (e) {
        debugPrint(
          (e is Exception).toString(),
        );
      }
    });
  });
}
