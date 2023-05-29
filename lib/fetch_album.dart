import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'album.dart';

Future<Album> fetchAlbum(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // Se o servidor retonar com 200 OK, o JSON será convertido para Album
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // Caso contrário, será lançado uma exceção.
    throw Exception('Failed to load album');
  }
}

class FetchAlbum extends StatefulWidget {
  const FetchAlbum({super.key});

  @override
  State<FetchAlbum> createState() => _FetchAlbumState();
}

class _FetchAlbumState extends State<FetchAlbum> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum(http.Client());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste Unitário com Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Exemplo de requisição HTTP'),
          ),
          body: Center(
            child: FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            heroTag: null,
            child: const Icon(Icons.arrow_back_sharp),
          ),
        ),
      ),
    );
  }
}