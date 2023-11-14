import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> login(String email, String password) async {
  final url = Uri.http('10.0.2.2:3500', '/auth');
  final response = await http.post(
    url,
    body: jsonEncode(<String, String>{'email': email, 'password': password}),
  );
  print(response.body);
  if (response.statusCode == 201) {
    return response.body;
  } else {
    throw Exception('Failed to login');
  }
}

Future<String> register(String email, String password) async {
  final url = Uri.http('localhost:3500', '/register');
  final response =
      await http.post(url, body: {'email': email, 'password': password});
  if (response.statusCode == 201) {
    return response.body;
  } else {
    throw Exception('Failed to register');
  }
}
