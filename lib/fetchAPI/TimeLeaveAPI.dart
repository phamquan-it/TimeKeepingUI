import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Leave> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://booklearing.somee.com/api/Employee/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Leave.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Leave {
  final int userId;
  final int id;
  final String title;

  const Leave({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Leave.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'leaveBalance': int userId,
      'id': int id,
      'role': String title,
      } =>
          Leave(
            userId: userId,
            id: id,
            title: title,
          ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}