import 'package:flutter_test/flutter_test.dart';
import 'package:todo_consumer/app/desconto/store/desconto_store.dart';

main() {
  test(
    'Deve calcular desconto corretamente utilizando valores decimais',
    () {
      const desconto = 25.0;
      const valorSemDesconto = 150.0;
      const valorComDesconto = valorSemDesconto - desconto;

      expect(calcularDesconto(valorSemDesconto, desconto, false),
          valorComDesconto);
    },
  );

  test('Deve retoirnar um erro pelo valor do desocnto ser <=0', () {
    const desconto = 0.0;
    const valorSemDesconto = 150.0;

    expect(() => calcularDesconto(valorSemDesconto, desconto, false),
        throwsA(isA<Exception>()));
  });
}
