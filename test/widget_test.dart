// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:teste_com_flutter/main.dart';

void main() {
  group('Teste de widgets na tela principal', () {
    testWidgets('Incrementa a contagem com sucesso', (WidgetTester tester) async {
      // Constrói o aplicativo e aciona um frame
      await tester.pumpWidget(const MyApp());

      // Verifica se o contador começou em 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // Clica no botão com ícone "+", e aciona outro frame
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // Verifica se o contador incrementou
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
    testWidgets('Decrementa a contagem com sucesso', (WidgetTester tester) async {
      // Constrói o aplicativo e aciona um frame
      await tester.pumpWidget(const MyApp());

      // Verifica se o contador começou em 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('-1'), findsNothing);

      // Clica no botão com ícone "+", e aciona outro frame
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      // Verifica se o contador decrementou
      expect(find.text('0'), findsNothing);
      expect(find.text('-1'), findsOneWidget);
    });
  });

}
