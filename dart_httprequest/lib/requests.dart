import 'package:http/http.dart' as http;

Future<String> get(String url) async {
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    return "Hibás lekérdezés: ${response.statusCode}.";
  }
}

Future<String> post(String url, Map<String, String> bodyValues) async {
  var response = await http.post(Uri.parse(url), body: bodyValues);
  if (response.statusCode == 201) {
    return response.body;
  } else {
    return "Hibás lekérdezés: ${response.statusCode}.";
  }
}

Future<String> put(String url, Map<String, String> bodyValues) async {
  var response = await http.put(Uri.parse(url), body: bodyValues);
  if (response.statusCode == 200) {
    return response.body;
  } else {
    return "Hibás lekérdezés: ${response.statusCode}.";
  }
}

Future<String> patch(String url, Map<String, String> bodyValues) async {
  var response = await http.patch(Uri.parse(url), body: bodyValues);
  if (response.statusCode == 200) {
    return response.body;
  } else {
    return "Hibás lekérdezés: ${response.statusCode}.";
  }
}

Future<String> delete(String url) async {
  var response = await http.post(Uri.parse(url));
  return response.body;
}
