import 'package:flutter_test/flutter_test.dart';
import 'package:teste_com_flutter/counter.dart';

void main() {
  group("Testes do contador", () {
    test("Incrementa a contagem com sucesso", () {
      Counter counter = Counter(0);
      
      counter.incrementCounter();
      
      expect(counter.value, 1);
    });

    test("Incrementa a contagem e espera resultado incorreto", () {
      Counter counter = Counter(1);

      counter.incrementCounter();

      expect(counter.value, isNot(equals(1)));
    });

    test("Decrementa a contagem com sucesso", () {
      Counter counter = Counter(0);

      counter.decrementCounter();

      expect(counter.value, -1);
    });

    test("Decrementa a contagem e espera resultado incorreto", () {
      Counter counter = Counter(1);

      counter.decrementCounter();

      expect(counter.value, isNot(equals(-1)));
    });
  });
}