import 'dart:convert';
import 'package:http/http.dart' as http;

Future<User> fetchLogin(String username, String password) async {
  final response = await http.post(
    Uri.parse('https://booklearing.somee.com/api/Auth/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'password': password
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print(response.body);
    return User.fromJson(jsonDecode(response.body) as Map<String,dynamic>);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    return new User(id: -1, name: "${response.statusCode} login error!");
  }
}
class User {
  final int id;
  final String name;

  const User({
    required this.id,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'id': int id,
      'name': String name,
      } =>
          User(
            id: id,
            name: name,
          ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}