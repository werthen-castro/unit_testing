import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

class AlbumMock extends Mock implements Client {
  var jsonReturn = ' {"userId": 1, "id": 1, "title": "quidem molestiae enim"}';
}
