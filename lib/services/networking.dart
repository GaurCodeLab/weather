import 'dart:convert';

import 'package:http/http.dart' as Http;

class NetworkingHelper {
  NetworkingHelper(this.url);
  final String url;

  Future getData() async {
    Http.Response response = await Http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
