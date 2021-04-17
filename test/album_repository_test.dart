import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:unit_testing/album_repository.dart';
import 'package:unit_testing/album_repository_mock.dart';
import 'package:http/http.dart' as http;

void main() {
  final client = AlbumMock();
  final repository = AlbumRepository(client);

  test('teste request', () async {
    when(client.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1')))
        .thenAnswer((_) async => http.Response(client.jsonReturn, 200));

    var res = repository.fetchAlbum();
    expect(res, isNotNull);
  });
}
