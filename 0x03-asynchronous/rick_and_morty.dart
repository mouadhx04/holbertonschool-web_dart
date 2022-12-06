import "package:http/http.dart" as http;
import 'dart:convert' as convert;

printBbCharacters() async {
  var url = Uri.https("breakingbadapi.com", "/api/characters/");
  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = convert.jsonDecode(response.body);
      for (int i = 0; i < jsonResponse.length; i++) {
        print(jsonResponse[i]['name']);
      }
    }
  } catch (error) {
    return "error caught: ${error}";
  }
}
