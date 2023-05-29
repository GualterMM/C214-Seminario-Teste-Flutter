import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:teste_com_flutter/album.dart';
import 'package:teste_com_flutter/fetch_album.dart';
import 'package:mockito/annotations.dart';

import 'fetch_album_test.mocks.dart';

// Gera um MockClient usando o Mockito.
// A cada teste, novas instâncias dessa classe são geradas.
@GenerateMocks([http.Client])
void main() {
  group('Testes Mock do FetchAlbum', () {
    test('Retorna um Album se a requisição HTTP completar com sucesso', () async {
      final client = MockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async =>
          http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200));

      expect(await fetchAlbum(client), isA<Album>());
    });

    test('Lança uma exceção se a requisição HTTP completar com erro', () {
      final client = MockClient();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchAlbum(client), throwsException);
    });
  });
}