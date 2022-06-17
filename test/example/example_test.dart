import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_consumer/app/desconto/store/desconto_store.dart';

main() {
  group(
    'GRUPO 1 - CONVERT INT TO DOUBLE:',
    () {
      test(
        'TESTE 1: Deve retornar um erro se o valor for uma String vazia',
        () {
          debugPrint("===============================");
          var value = "";

          debugPrint("PARAMETRO: ''$value");

          try {
            debugPrint("RESULTADO: ${intToDouble(value)}");
          } catch (e) {
            debugPrint("RESULTADO: ${e.toString()}");
          }

          expect(
            () => intToDouble(value),
            throwsA(isA<Exception>()),
          );
        },
      );

      test(
        'Teste 2: Deve retornar um erro se o valor for uma String',
        () {
          debugPrint("===============================");
          var value = "abc";

          debugPrint("PARAMETRO: $value");
          try {
            debugPrint("RESULTADO: ${intToDouble(value)}");
          } catch (e) {
            debugPrint("RESULTADO: ${e.toString()}");
          }

          expect(
            () => intToDouble(value),
            throwsA(isA<Exception>()),
          );
        },
      );

      test(
        'TESTE 3: Deve retornar Sucesso',
        () {
          debugPrint("===============================");
          var value = 2;

          debugPrint("PARAMETRO: $value");

          try {
            debugPrint("RESULTADO: ${intToDouble(value)}");
          } catch (e) {
            debugPrint("RESULTADO: ${e.toString()}");
          }

          expect(
            intToDouble(value),
            2,
          );
        },
      );
      debugPrint("===============================");
    },
  );
}
