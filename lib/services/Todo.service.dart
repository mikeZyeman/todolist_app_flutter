import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/Todo.model.dart';

Future<Todo> fetchTodo() async {
  final response = await http.get('localhost:8081');

  if (response.statusCode == 200) {
    return Todo.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load todo');
  }
}