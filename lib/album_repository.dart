import 'dart:convert';

import 'package:http/http.dart';

import 'album.dart';

class AlbumRepository {
  final Client client;

  AlbumRepository(this.client);

  Future<Album> fetchAlbum() async {
    final response =
        await client.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
