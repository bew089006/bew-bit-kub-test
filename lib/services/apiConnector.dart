import 'package:http/http.dart' as Http;
import 'dart:convert';

class ApiConnector {
  String _url = "https://jsonplaceholder.typicode.com/users";

  Future<List> getResponse() async {
    var response = await Http.get(_url);
    List decoded = json.decode(response.body);

    return decoded;
  }
}
