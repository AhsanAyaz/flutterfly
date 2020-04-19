import 'dart:convert';
import 'package:http/http.dart' as http;

getUsers() async {
  try {
    var response = await http.get(
      'https://randomuser.me/api/?results=150'
    );
    var body = jsonDecode(response.body);
    return body['results'];
  } catch (err) {
    print(err.toString());
  }
}