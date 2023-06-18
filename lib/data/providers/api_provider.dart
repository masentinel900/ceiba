import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiProvider {
  Future<List<dynamic>> getUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch users');
    }
  }

  Future<List<dynamic>> getPostsByUserId(int userId) async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?userId=$userId'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch posts');
    }
  }
}
